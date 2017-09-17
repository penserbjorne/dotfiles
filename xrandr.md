# xrandr

Configuraciones y tips para utilizar xrandr.

## Activando/desactivando la salida VGA

Activando -> ```$ xrandr --output VGA --mode 1280x800```

Desactivando -> ```$ xrandr --output VGA --off```

Activando dos salidas -> ```$ xrandr --output LVDS --mode 1280x800 --output VGA --mode 800x600```

## Escritorio extendido

Izquierda -> ```$ xrandr --output VGA --left-of LVDS```

Derecha -> ```$ xrandr --output VGA --right-of LVDS```

Asignando modos -> ```$ xrandr --output LVDS --mode 1280x800 --output VGA --mode 1024x768 --left-of LVDS```