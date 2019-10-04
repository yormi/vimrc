let g:ale_cpp_gcc_executable='/home/guillaume/.arduino15/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++'
let g:ale_cpp_gcc_options='-c -std=gnu++11 -06
  \ -I/home/guillaume/Arduino/libraries/Low-Power-master
  \ -I/home/guillaume/Arduino/libraries/RadioHead
  \ -I/home/guillaume/.arduino15/packages/arduino/hardware/avr/1.6.20/cores/arduino
  \ -I/home/guillaume/.arduino15/packages/arduino/hardware/avr/1.6.20/variants/standard
  \ -I/home/guillaume/.arduino15/packages/arduino/hardware/avr/1.6.20/libraries/SPI/src
  \ -I/home/guillaume/.arduino15/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/avr/include
  \ -I/home/guillaume/Documents/Random_Projects/goose-control/Arduino/Relay_box/tests/googletest/include
  \ '


" oufff...... some help here.....https://github.com/w0rp/ale/issues/1091
let g:ale_cpp_clang_options='
  \ -mmcu=atmega328p
  \ -DF_CPU=8000000L
  \ -DARDUINO=10809
  \ -DARDUINO_AVR_ATMEGA328BB
  \ -DARDUINO_ARCH_AVR
  \ -I/home/guillaume/Arduino/libraries/Low-Power-master
  \ -I/home/guillaume/Arduino/libraries/RadioHead
  \ -I/home/guillaume/.arduino15/packages/arduino/hardware/avr/1.6.20/libraries/SPI/src
  \ -I/home/guillaume/.arduino15/packages/arduino/hardware/avr/1.6.20/cores/arduino
  \ -I/home/guillaume/.arduino15/packages/arduino/hardware/avr/1.6.20/variants/standard
  \ -I/home/guillaume/.arduino15/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/avr/include'
  "\ -c -g -Os -w -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -w -x c++ -E -CC

nmap ,h :source ~/.vim/ftplugin/cpp.vim<CR>

"rpath=/home/guillaume/Arduino/libraries
