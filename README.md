# my_utils

Archivos, scripts o configuraciones útiles para este Penserbjorne ;@

## Utilidades ;@

- [https://github.com/aksakalli/gtop](https://github.com/aksakalli/gtop) ```npm install gtop -g```
- [https://github.com/robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), aun no me decido por un tema, así que hay que asignarlo random ;@
- [https://github.com/dylanaraps/neofetch](https://github.com/dylanaraps/neofetch) ```yaourt -S neofetch```

## gnome-terminal

Para reiniciar el perfil de la terminal:

```dconf reset -f /org/gnome/terminal/legacy/profiles:/```

Para reiniciar el perfil que viene por default, el que tiene UUID b1dcc9dd-5262-4d8d-a863-c897e6d979b9 by default

```dconf reset -f /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/```

Sacado de [https://askubuntu.com/a/823564](https://askubuntu.com/a/823564)

## grub-playtune

Script para probar tonos que puede usar grub cuando arranca el equipo.

## i3

### i3_config

Archivo de configuración para wmi3, es necesario cambiar el nombre de ```i3_config``` a ```config```.

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

## nmcli (revisar)

```
nmcli radio
nmcli device
nmcli device wifi rescan
nmcli device wifi list
nmcli device wifi connect SSID-Name -ask
```

## Montar disco compartido con Windows

### En Windows

Herramienta de Discos -> Seleccionar el disco deseado -> Boton Derecho -> Propiedades -> Seguridad -> Deshabilitar la opción de cache y compresión.

En la barra de tareas -> Opciones de energia -> Acciones del boton de encendido -> Desactivar la Hibernación y Suspension.

### En linux

```
lsblk
mkdir -p ~/secondary-hard-drive
sudo -s
echo "# Secondary Hard Drive" >> /etc/fstab
echo "/dev/sdaX /home/username/secondary-hard-drive ntfs-3g auto,rw,noatime 0 2" >> /etc/fstab
```
