---
## Front matter
title: "Отчёт по лабораторной работе"
subtitle: "Дисциплина: Архитектура ЭВМ"
author: "Перегудов Александр Вадимович"

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

Приобретение навыков написания программ с использованием циклов и обработкой
аргументов командной строки.

# Задание

Здесь приводится описание задания в соответствии с рекомендациями
методического пособия и выданным вариантом.

# Теоретическое введение

Здесь описываются теоретические аспекты, связанные с выполнением работы.

Например, в табл. @tbl:std-dir приведено краткое описание стандартных каталогов Unix.

: Описание некоторых каталогов файловой системы GNU Linux {#tbl:std-dir}

| Имя каталога | Описание каталога                                                                                                          |
|--------------|----------------------------------------------------------------------------------------------------------------------------|
| `/`          | Корневая директория, содержащая всю файловую                                                                               |
| `/bin `      | Основные системные утилиты, необходимые как в однопользовательском режиме, так и при обычной работе всем пользователям     |
| `/etc`       | Общесистемные конфигурационные файлы и файлы конфигурации установленных программ                                           |
| `/home`      | Содержит домашние директории пользователей, которые, в свою очередь, содержат персональные настройки и данные пользователя |
| `/media`     | Точки монтирования для сменных носителей                                                                                   |
| `/root`      | Домашняя директория пользователя  `root`                                                                                   |
| `/tmp`       | Временные файлы                                                                                                            |
| `/usr`       | Вторичная иерархия для данных пользователя                                                                                 |

Более подробно об Unix см. в [@gnu-doc:bash;@newham:2005:bash;@zarrelli:2017:bash;@robbins:2013:bash;@tannenbaum:arch-pc:ru;@tannenbaum:modern-os:ru].

# Выполнение лабораторной работы

1. Создал каталог для программам лабораторной работы № 8, перешёл в него и создал файл lab8-1.asm(рис. @fig:001).

![Создание каталога и файла](image/1.png){#fig:001 width=70%}

2. Ввёл в файл lab8-1.asm текст программы из листинга 8.1(рис. @fig:002).

![Текст программы](image/2.png){#fig:002 width=70%}

3. Создал исполняемый файл и проверил его работу(рис. @fig:003).

![Результат работы программы](image/3.png){#fig:003 width=70%}

4. Изменил текст программы добавив изменение значение регистра ecx в цикле(рис. @fig:004).

![Изменённый текст программы](image/4.png){#fig:004 width=70%}

5. Создал исполняемый файл и проверил его работу(рис. @fig:005).

![Результат работы программы](image/5.png){#fig:005 width=70%}

6. Внёс изменения в текст программы добавив команды push и pop(рис. @fig:006).

![Изменённый текст программы](image/6.png){#fig:006 width=70%}

7. Создал исполняемый файл и проверил его работу(рис. @fig:007).

![Результат работы программы](image/7.png){#fig:007 width=70%}

8. Создал файл lab8-2.asm в каталоге ~/work/arch-pc/lab08(рис. @fig:008).

![Создание файла](image/8.png){#fig:008 width=70%}

9. Ввёл в файл lab8-2.asm текст программы из листинга 8.2(рис. @fig:009).

![Текст программы](image/9.png){#fig:009 width=70%}

10. Создал исполняемый файл и проверил его работу, указав аргументы: аргумент1, аргумент, 2, 'аргумент 3'(рис. @fig:010).

![Результат работы программы](image/10.png){#fig:010 width=70%}

11. Создал файл lab8-3.asm в каталоге ~/work/arch-pc/lab08(рис. @fig:011).

![Создание файла](image/11.png){#fig:011 width=70%}

12. Ввёл в файл lab8-3.asm текст программы из листинга 8.3(рис. @fig:012).

![Текст программы](image/12.png){#fig:012 width=70%}

13. Создал исполняемый файл и проверил его работу(рис. @fig:013).

![Результат работы программы](image/13.png){#fig:013 width=70%}

14. Изменил текст программы из листинга 8.3 для вычисления произведения аргументов командной строки(рис. @fig:014).

![Изменённый текст программы](image/14.png){#fig:014 width=70%}

15. Создал исполняемый файл и проверил его работу(рис. @fig:015).

![Результат работы программы](image/15.png){#fig:015 width=70%}

16. Создал файл task.asm(рис. @fig:016).

![Создание файла](image/1-1.png){#fig:016 width=70%}

17. Ввёл в файл task.asm текст программы, которая находит сумму значений функции 𝑓(𝑥) 20 варианта(рис. @fig:017).

![Текст программы](image/1-2.png){#fig:017 width=70%}

18. Создал исполняемый файл(рис. @fig:018).

![Трансляция и компоновка](image/1-3.png){#fig:018 width=70%}

19. Проверил работу программы с разными параметрами(рис. @fig:019).

![Результат работы программы](image/1-4.png){#fig:019 width=70%}

# Выводы

В этой лабораторной работе были приобретены навыки написания программ с использованием циклов и обработкой аргументов командной строки.

# Список литературы{.unnumbered}

::: {#refs}
:::
