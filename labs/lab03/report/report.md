---
## Front matter
title: "Отчёта по лабораторной работе"
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

Целью работы является освоение оформления отчётов с помощью легковесного языка разметки Markdown.

# Задание

Здесь приводится описание задания в соответствии с рекомендациями
методического пособия и выданным вариантом.

# Теоретическое введение

# Выполнение лабораторной работы

1. Открыл терминал и перешёл в каталог курса сформированный при выполнении
лабораторной работы номер №2. (рис. @fig:001)

![Каталог курса](image/image_001.png){#fig:001 width=70%}

2. Обновил локальный репозиторий и перешёл в каталог с шаблоном отчёта по
лабораторной работе №3. (рис. @fig:002)

![Каталог шаблоном отчёта](image/image_002.png){#fig:002 width=70%}

3. Провёл компиляцию шаблона с использованием Makefile и проверил
скомпилированные файлы (рис. @fig:003, @fig:004, @fig:005)

![Скомпилированный шаблон.](image/image_003.png){#fig:003 width=70%}

![Скомпилированный шаблон docx.](image/image_004.png){#fig:004 width=70%}

![Файлы в графическом файловом менеджере.](image/image_005.png){#fig:005 width=70%}

4. Удалил файлы полученные с помощью Makefile. (рис. @fig:006)

![Созданные файлы удалены.](image/image_006.png){#fig:006 width=70%}

5. Открыл файл report.md с помощью gedit и изучил его. (рис. @fig:007, @fig:008)

![Команда на открытие файла с помощью gedit.](image/image_007.png){#fig:007 width=70%}

![Файл report.md](image/image_008.png){#fig:008 width=70%}

# Выводы

В данной лабораторной работе были усвоена процедура оформления отчётов с помощью легковесного языка разметки Markdown.

# Список литературы{.unnumbered}

::: {#refs}
:::
