# my_utils

Archivos, scripts o configuraciones utiles para este Penserbjorne ;@

## Utilidades ;@

- [https://github.com/aksakalli/gtop](https://github.com/aksakalli/gtop)
- [https://github.com/robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), aun no me decido por un tema, asi que hay que asignarlo random ;@

## gnome-terminal

Para reiniciar el perfil de la terminal:

```dconf reset -f /org/gnome/terminal/legacy/profiles:/```

Para reiniciar el perfil que viene por default, el que tiene UUID b1dcc9dd-5262-4d8d-a863-c897e6d979b9 by default

```dconf reset -f /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/```

Sacado de [https://askubuntu.com/a/823564](https://askubuntu.com/a/823564)

## grub-playtune

Script para probar tonos que puede usar grub cuando arranca el equipo.

## xrandr

Configuraciones y tips para utilizar xrandr.

### Activando/desactivando la salida VGA

Activando -> ```$ xrandr --output VGA --mode 1280x800```

Desactivando -> ```$ xrandr --output VGA --off```

Activando dos salidas -> ```$ xrandr --output LVDS --mode 1280x800 --output VGA --mode 800x600```

### Escritorio extendido

Izquierda -> ```$ xrandr --output VGA --left-of LVDS```

Derecha -> ```$ xrandr --output VGA --right-of LVDS```

Asignando modos -> ```$ xrandr --output LVDS --mode 1280x800 --output VGA --mode 1024x768 --left-of LVDS```