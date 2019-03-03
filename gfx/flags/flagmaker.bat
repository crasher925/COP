@echo off
set /p tag="Enter tag:"

if not exist flags mkdir flags
magick convert -verbose flag.tga -resize 82x52! flag1.tga
copy flag1.tga flags\%tag%_fascism.tga
copy flag1.tga flags\%tag%_neutrality.tga
copy flag1.tga flags\%tag%_communism.tga
copy flag1.tga flags\%tag%_democratic.tga
del flag1.tga

if not exist flags\medium mkdir flags\medium
magick convert flag.tga -resize 41x26! flag1.tga
copy flag1.tga flags\medium\%tag%_fascism.tga
copy flag1.tga flags\medium\%tag%_neutrality.tga
copy flag1.tga flags\medium\%tag%_communism.tga
copy flag1.tga flags\medium\%tag%_democratic.tga
del flag1.tga

if not exist flags\small mkdir flags\small
magick convert flag.tga -resize 10x7! flag1.tga
copy flag1.tga flags\small\%tag%_fascism.tga
copy flag1.tga flags\small\%tag%_neutrality.tga
copy flag1.tga flags\small\%tag%_communism.tga
copy flag1.tga flags\small\%tag%_democratic.tga
del flag1.tga