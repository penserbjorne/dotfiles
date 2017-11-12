# my_utils

Archivos, scripts o configuraciones útiles para este Penserbjorne ;@

## Utilidades ;@

- [https://github.com/aksakalli/gtop](https://github.com/aksakalli/gtop)
- [https://github.com/robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), aun no me decido por un tema, así que hay que asignarlo random ;@
- [https://github.com/p-e-w/ternimal](https://github.com/p-e-w/ternimal)
    - ```pacaur -S ternimal-git```
- Neofetch ```pacaur -S neofetch```

## gnome-terminal

Para reiniciar el perfil de la terminal:

```dconf reset -f /org/gnome/terminal/legacy/profiles:/```

Para reiniciar el perfil que viene por default, el que tiene UUID b1dcc9dd-5262-4d8d-a863-c897e6d979b9 by default

```dconf reset -f /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/```

Sacado de [https://askubuntu.com/a/823564](https://askubuntu.com/a/823564)

## grub-playtune

Script para probar tonos que puede usar grub cuando arranca el equipo.

## Ternimal

[https://github.com/p-e-w/ternimal/blob/master/ternimal.rs#L88-L173](Parámetros) que se pueden utilizar para configurar las animaciones.

- Anaconda => ```ternimal length=100 segments=50 thickness=1,4,1,0 radius=6,12 gradient=0:#666600,0.5:#00ff00,1:#003300```
- Swarm => ```ternimal length=200 segments=50 thickness=0,4,19,0```
- Rainbow => ```ternimal length=20 thickness=70,15,0,5 padding=10 radius=5 gradient=0.03:#ffff00,0.15:#0000ff,0.3:#ff0000,0.5:#00ff00```
- BlackHole => ```ternimal speed=10 length=100 segments=5 thickness=13 gradient=0.5:#000000,0.8:#ffffff,1:#000000```


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