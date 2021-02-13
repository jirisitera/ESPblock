// ESP8266 sketch sending and receiving MQTT messages
// one button (output) and four LEDs (input)

#include <ESP8266WiFi.h>
#include <PubSubClient.h>  //install library pubsubclient O'Leary 
#include "config.h"

// library for button management using callbacks 
// https://github.com/r89m/Button https://github.com/r89m/PushButton
#include <Button.h>
#include <ButtonEventCallback.h>
#include <PushButton.h>
#include <Bounce2.h> // install bounce2 https://github.com/thomasfredericks/Bounce-Arduino-Wiring

// configuration f MQTT server ==============================================
//#define mqtt_server "your mqtt server IP address"
// no MQTT security
// #define mqtt_user "your_username"
// #define mqtt_password "your_password"

// =============== configuration of MQTT topics / OpenHAB items setup =======
#define button_topic "PI1/espblock"
#define input_topic "MC1/M1/#"


const int buttonPin = D3;     // must have pull up resistor

const int ledPins[] = {D5, D6, D7, D8}; // LED pins
int ledCount = 4;


// ===================== config end ==========================================

PushButton button = PushButton(buttonPin, ENABLE_INTERNAL_PULLUP);


WiFiClient espClient;
PubSubClient client(espClient);


void setup() {
  Serial.begin(115200);
  setup_wifi();
  client.setServer(mqtt_server, 80);
  client.setCallback(messageReceived);     // call callback when a message received
  Serial.println("Minecraft MQTT actor-sensor started.");

  
  // button setup via callbacks - each callback can handle multiple buttons
  // When the button is released
  button.onRelease(onButtonReleased);

  for(int i = 0; i < ledCount; ++i) {
    pinMode(ledPins[i], OUTPUT);
    digitalWrite(ledPins[i], LOW);
  }
}

void setup_wifi() {
  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(wifi_ssid);

  WiFi.begin(wifi_ssid, wifi_password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Attempt to connect
    if (client.connect("MC-MQTT-actor-sensor")) {
      Serial.println("connected");
      client.subscribe(input_topic);
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}


void loop(){
  //auto reconnect MQTT if needed
  if (!client.connected()) {
    reconnect();
  }
  //call MQTT library internal loop
  client.loop();

  // Check the state of the button
  button.update();
}



void onButtonReleased(Button& btn, uint16_t duration){
  Serial.println("Button pressed");
  
  client.publish(button_topic, "pressed", true);
}


void messageReceived(char* topic_char, byte* payload, unsigned int length) {

  // convert parameters to String type
  String topic = String(topic_char);
  char str[length];
  memcpy(str, payload, length);
  str[length] = 0;
  String message = String(str);

  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  Serial.println(message);

  // the topic is in the form of input_topic/X where X is one of L, R, U, D 
  // the message is a decadic number 0-15 describing brightness

  //give me the part of topic after /

  String sidework = topic.substring(topic.indexOf("/")+1);
  String side = sidework.substring(sidework.indexOf("/")+1);

  Serial.print("side: ");
  Serial.println(side);

  int brightness = message.toInt();
  
  if (side == "L") {
    Serial.print("Left LED to ");
    Serial.println(brightness);
    
    analogWrite(ledPins[1], map(brightness, 0, 15, 0, 255));
  }

  if (side == "R") {
    Serial.print("Right LED to ");
    Serial.println(brightness);
    
    analogWrite(ledPins[0], map(brightness, 0, 15, 0, 255));
  }

  if (side == "U") {
    Serial.print("Up LED to ");
    Serial.println(brightness);
    
    analogWrite(ledPins[3], map(brightness, 0, 15, 0, 255));
  }

  if (side == "D") {
    Serial.print("Down LED to ");
    Serial.println(brightness);
    
    analogWrite(ledPins[2], map(brightness, 0, 15, 0, 255));
  }

  ////////////////////// message is an array LLLL where L is 0 or 1, for example 1001
  //int i, value;
  //for(i = 0; i < ledCount; ++i) {
  //  value = String(message[i]).toInt();  //give me the bit and convert it to int
  //
  //  digitalWrite(ledPins[i], value);
  //  Serial.print(value);
  //}
  //Serial.println();
 
  //variant for decadic number encoding, ie. 10 means 1010
  //int number = message.toInt();   // if not a valid number, it returns zero

  //int i, value;
  //for(i = 0; i < ledCount; ++i) {
  //  value = (number >> ledCount-i-1) & 1;  //rotate and mask last bit / value of bit's bit in number
  //  
  //  digitalWrite(ledPins[i], value);
  //  Serial.print(value);
  //}
  //Serial.println();

}
