# EsPMI
<pre>
__/\\\\\\\\\\\\\\\_______________/\\\\\\\\\\\\\____/\\\\____________/\\\\__/\\\\\\\\\\\_        
 _\/\\\///////////_______________\/\\\/////////\\\_\/\\\\\\________/\\\\\\_\/////\\\///__       
  _\/\\\__________________________\/\\\_______\/\\\_\/\\\//\\\____/\\\//\\\_____\/\\\_____      
   _\/\\\\\\\\\\\______/\\\\\\\\\\_\/\\\\\\\\\\\\\/__\/\\\\///\\\/\\\/_\/\\\_____\/\\\_____     
    _\/\\\///////______\/\\\//////__\/\\\/////////____\/\\\__\///\\\/___\/\\\_____\/\\\_____    
     _\/\\\_____________\/\\\\\\\\\\_\/\\\_____________\/\\\____\///_____\/\\\_____\/\\\_____   
      _\/\\\_____________\////////\\\_\/\\\_____________\/\\\_____________\/\\\_____\/\\\_____  
       _\/\\\\\\\\\\\\\\\__/\\\\\\\\\\_\/\\\_____________\/\\\_____________\/\\\__/\\\\\\\\\\\_ 
        _\///////////////__\//////////__\///______________\///______________\///__\///////////__
 
Intelligent Platform Management Interface using the ESP32, built with Vue.js and esp-idf.
</pre>


## Installation

### Web interface

To compile the web interface you can either update the app to use newer packages or use an older version of Node.js (v12 works well with the current version)

> **Warning**
> The web interface shall NEVER be more than 2mb, unless you are using an SD card, in this case that's cool.

1. Move to EsPMI/front/web-demo

   ```bash
   cd front/web-demo
   ```

2. Install the packages

   ```bash
   npm install
   ```

3. Build the web interface

   ```
   npm run build
   ```

4. (Optional) If you are going to do some development, you can use the development server (works really well)

   ```bash
   npm run serve
   ```

### ESP32

To compile the app for the ESP32 you can either use Espressif's idf extension for Visual Studio Code or install esp-idf standalone. This app was built using IDF version: v5.2-dev-703-gefe919275e.

1. Make sure you already built the web interface (check for the *dist* folder)
2. Build and flash the app using vsCode (I added the .bin file for an esp32 so you don't need to rebuild the app if you just want to test it)

