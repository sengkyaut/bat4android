@echo off
set PATH=%CD%;%PATH%;
echo Coder~SengKyaut~
echo This app is suitable for Android Phone that is
echo ================
for /F "tokens=2 delims='" %%A in ('aapt dump badging "%~f1" ^| find "sdk"') do @(
if %%A EQU 3 echo	Cupcake 1.5+
if %%A EQU 4 echo	Donut 2.6+
if %%A GEQ 5 if %%A LEQ 7 echo	Eclair 2.0+
if %%A EQU 8 echo	Froyo 2.2+
if %%A GEQ 9 if %%A LEQ 10 echo	GingerBread 2.3+
if %%A GEQ 11 if %%A LEQ 13 echo	Honeycomb 3.0+
if %%A GEQ 14 if %%A LEQ 15 echo	IceCream 4.0+
if %%A GEQ 16 if %%A LEQ 18 echo	JellyBean 4.1+
if %%A GEQ 19 if %%A LEQ 20 echo	KitKat 4.4+
if %%A GEQ 21 if %%A LEQ 22 echo	Lollipop 5.0+
if %%A EQU 23 echo	Marshmallow 6.0+
if %%A EQU 24 echo	Nougat 7.0+
if %%A EQU 25 echo	Nougat 7.1+
)
echo ================
