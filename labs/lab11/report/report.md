---
## Front matter
title: "Отчёт по лабораторной работе №11"
author: "Тарутина Кристина Олеговна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение навыков написания программ для работы с файлами.
# Выполнение лабораторной работы
Создаю каталог для программам лабораторной работы № 11, перейожу в
него и создаю файл lab11-1.asm(рис. [-@fig:001])

![Создание файла](image/image1.jpg){ #fig:001 width=70% }

Ввожу в файл lab11-1.asm текст программы из листинга 11.1(рис. [-@fig:002])

![Текст программы](image/image2.jpg){ #fig:002 width=70% }

Создаю исполняемый файл и запускаю его.(рис. [-@fig:003])

![Проверка работы файла](image/image3.jpg){ #fig:003 width=70% }

С помощью команды chmod изменяю права доступа к исполняемому файлу
lab11-1, запретив его выполнение. Пытаюсь выполнить файл.(рис. [-@fig:004])
При попытки выполнить программу на экран выводится сообщение, что нам отказано в доступе. так получается, потому что с помощью сочетания a-x мы отказали в праве на исполнение файла всем пользователям

![Запрет на выполнение](image/image4.jpg){ #fig:004 width=70% }

С помощью команды chmod изменяю права доступа к файлу lab11-1.asm с
исходным текстом программы,добавив права на исполнение. Пытаюсь
выполнить его(рис. [-@fig:005])
Файл прекрасно исполняется. Так происходит, потому что, в отличии от прошлой команды мы используем  сочетание a+x, где "+" добавляет набор необходимых прав, в нашем случае, это как раньше права на исполнения, а также для всех пользователей

![Разрешение на выполнение](image/image5.jpg){ #fig:005 width=70% }

Предоставляю права доступа к файлу readme.txt в соответствии с вариантом в таблице 11.4(у меня это девятый вариант). Проверяю правильность выполнения с помощью
команды ls -l(рис. [-@fig:006])  

![Доступ согласно девятому варианту](image/image6.jpg){ #fig:006 width=70% }

# Выполнение самостоятельной работы

Пишу программу по следующему алгоритму:
• Вывод приглашения “Как Вас зовут?”
• ввести с клавиатуры свои фамилию и имя
• создать файл с именем name.txt
• записать в файл сообщение “Меня зовут”
• дописать в файл строку введенную с клавиатуры
• закрыть файл
(рис. [-@fig:007])

![Текст программы](image/image7.jpg){ #fig:007 width=70% }

Создаю исполняемый файл и проверяю его работу. Проверяю наличие файла
и его содержимое с помощью команд ls и cat.(рис. [-@fig:008])

![Работа программы](image/image8.jpg){ #fig:008 width=70% }






# Выводы

Приобретение навыков написания программ для работы с файлами прошло успешно




