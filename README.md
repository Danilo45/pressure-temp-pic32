# Pressure and Temperature Measurement System

Embedded system for pressure and temperature monitoring using PIC32, PHT Click sensor, ESP8266 WiFi module, and TFT display.
This project was developed as part of the course *Microprocessor Measurement and Information Systems 2* at the Faculty of Technical Sciences, University of Novi Sad.

## Project Overview

The goal of this project was to create a system for measuring **pressure** and **temperature**, displaying values locally on a TFT screen and remotely via the **ThingSpeak** cloud platform.

## Hardware Used

- **Microcontroller:** PIC32MZ2048EFH144 (on EasyPIC Fusion v7 development board)
- **WiFi ESP Click** – based on the ESP8266 module for data transmission over WiFi
- **PHT Click** – based on the MS8607 sensor for measuring pressure, humidity, and temperature
- **EasyTFT display** – 320x240 px, used for local graphical representation

Click boards were connected to mikroBUS connectors on the development board.

## Microcontroller Configuration

The configuration was done using **MPLAB Harmony v3**, with the following modules:
- Two UART modules (one for WiFi communication, one for debugging/output)
- I2C module (100kHz) for communication with PHT Click
- STDIO and Core Timer modules

## Software Design

- Communication with the ESP8266 was implemented using AT commands in `ESP8266.c`
- Data is sent to **ThingSpeak**, with alternating temperature and pressure updates every 15 seconds
- Graphical output on TFT was implemented using `ili9341.c`:
  - Real-time plotting of pressure (blue) and temperature (red)
  - Values displayed below graphs
  - Graph resets every 10 data points

## Cloud Integration

Data is sent to [ThingSpeak](https://thingspeak.com) for remote monitoring. Each value is rounded and sent alternately due to ThingSpeak's 15-second update limitation.

## Results

- The system successfully performs real-time temperature and pressure measurements
- Data is reliably shown on the TFT screen and uploaded to the cloud
- Debugging was done using UART output in MPLAB Data Visualizer

## Known Issues

- Occasional data loss during transmission due to ThingSpeak rate limits
