# EsPMI
Intelligent Platform Management Interface using the ESP32, built with Vue.js and esp-idf.

## Installation

### Web interface

To compile the web interface you can either update the app to use newer packages or use an older version of Node.js (v12 works well with the current version)

> **Warning**
> The web interface shall NEVER be more than 2mb, unless you are using an SD card, in this case that's cool.

1. Move to EsPMI/front/web-demo

   ```bash
   cd front/web-demo
   ```

2. Install the package

   ```bash
   npm install
   ```

3. Build the web interface

   ```
   npm run build
   ```

4. (Optionnal) If you want to make developpement, you can use the developpement server

   ```bash
   npm run serve
   ```

### ESP32

To compile the app for the ESP32 you can either use Espressif's idf extension for Visual Studio Code or install esp-idf standalone. This app was built using IDF version: v5.2-dev-703-gefe919275e.

1. Make sure you already built the web interface (check for the *dist* folder)
2. Build and flash the app using vsCode 

