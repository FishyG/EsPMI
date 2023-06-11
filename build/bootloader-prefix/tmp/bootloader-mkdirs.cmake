# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/jessy/Documents/Projects/esp/esp-idf/components/bootloader/subproject"
  "/home/jessy/Documents/Projects/esp/EsPMI/blink/restful_server/build/bootloader"
  "/home/jessy/Documents/Projects/esp/EsPMI/blink/restful_server/build/bootloader-prefix"
  "/home/jessy/Documents/Projects/esp/EsPMI/blink/restful_server/build/bootloader-prefix/tmp"
  "/home/jessy/Documents/Projects/esp/EsPMI/blink/restful_server/build/bootloader-prefix/src/bootloader-stamp"
  "/home/jessy/Documents/Projects/esp/EsPMI/blink/restful_server/build/bootloader-prefix/src"
  "/home/jessy/Documents/Projects/esp/EsPMI/blink/restful_server/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/jessy/Documents/Projects/esp/EsPMI/blink/restful_server/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/jessy/Documents/Projects/esp/EsPMI/blink/restful_server/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
