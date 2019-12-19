# FpgaCourse
Учебные материалы по разработке цифровых схем с использованием FPGA (Verilog, VHDL, SystemVerilog)

# Структура курса

Структурно материал разбит по уровням:

Basics - основы
    verilog - примеры проектирования с использованием Verilog
    tools - мануалы по использованию инструментов (сейчас есть мануал в виде док файла по использованию ModelSim в Quartus)
    VHDL - примеры проектирования с использованием VHDL


1. Проектирование счетчика с произвольной сменой состояний и преобразователем кода на выходе:
   Проект располагается в директории Basics\verilog\Counter, детальную инофрмацию смотреть в docs в этиой директории:
   
   Результат работы счетчика для кодовой последовательности смены состояния счетчика в коде Грэя - и преобразователя кодов ДДК (bcd) или 8421:
   
   ![Counter work result](https://github.com/ExperimentalPhysics/FpgaCourse/blob/master/Basics/verilog/Counter/docs/result1.png?raw=true)
   
    ![Counter work result2](https://github.com/ExperimentalPhysics/FpgaCourse/blob/master/Basics/verilog/Counter/docs/result2.png?raw=true)
    
# Лабораторные работы 
# Лабораторная номер 1: Проектирование синхронных цифровых автоматов
1. Примеры проектирования произвольных автоматов Милли и Мура
https://github.com/ExperimentalPhysics/FpgaCourse/tree/master/Basics/verilog/Labs/SyncAutomates
- в папке docs расположены изображения и doc-файл с описанием
- в example-automates автоматы реализующие следующие Графы

Граф произвольного автомата Милли

![Milley example automate graph](https://github.com/ExperimentalPhysics/FpgaCourse/blob/master/Basics/verilog/Labs/SyncAutomates/docs/milley_automate_example.png?raw=true)
   
Тестирование его работы:   

![Milley example automate graph](https://github.com/ExperimentalPhysics/FpgaCourse/blob/master/Basics/verilog/Labs/SyncAutomates/docs/milley_automate_analysis.png?raw=true)

Граф произвольного автомата Мура

![Milley example automate graph](https://github.com/ExperimentalPhysics/FpgaCourse/blob/master/Basics/verilog/Labs/SyncAutomates/docs/moore_automate_example.png?raw=true)
   
Тестирование его работы:   

![Milley example automate graph](https://github.com/ExperimentalPhysics/FpgaCourse/blob/master/Basics/verilog/Labs/SyncAutomates/docs/moore_automate_analysis.png?raw=true)
