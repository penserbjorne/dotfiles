#grub-playtune

Script for play some tones based on a frequency and duration, util to test tones for GRUB_INIT_TUNE .

This script need to have installed ''sox'' on your system.

Usage: $0 tempo freq dur [freq dur freq dur...]" >&2

Based on this thread: [https://askubuntu.com/questions/76309/play-a-sound-before-or-after-grub-loads](https://askubuntu.com/questions/76309/play-a-sound-before-or-after-grub-loads)

Frequency Table for Notes: [http://pages.mtu.edu/~suits/notefreq446.html](http://pages.mtu.edu/~suits/notefreq446.html)

## Use the tone

To use a tone on grub, you need to modify ```/etc/default/grub``` and update grub, usually with ```grub-mkconfig -o /boot/grub/grub.cfg```.

## Tones

- **Adams tune:** 480 220 1 277 1 330 1 440 1 185 1 220 1 277 1 370 1 294 1 370 1 440 1 587 1 330 1 415 1 494 1 659 1
- **Arpeggio - Major:** 2000 400 4 0 1 500 4 0 1 600 4 0 1 800 6"
- **Close Encounters:** 480 900 2 1000 2 800 2 400 2 600 3
- **Feel Good Inc (Gorillaz):** 300 369 2 329 2 82 1 0 2 82 1 92 1 98 1 0 1 130 1 0 1 123 7
- **Fuer Elise (Ludwig van Beethoven):** 480 420 1 400 1 420 1 400 1 420 1 315 1 370 1 335 1 282 3 180 1 215 1 282 1 315 3 213 1 262 1 315 1 335 3 213 1 420 1 400 1 420 1 400 1 420 1 315 1 370 1 335 1 282 3 180 1 215 1 282 1 315 3 213 1 330 1 315 1 282 3
- **Mario Bros. Mushroom Powerup:** 1750 523 1 392 1 523 1 659 1 784 1 1047 1 784 1 415 1 523 1 622 1 831 1 622 1 831 1 1046 1 1244 1 1661 1 1244 1 466 1 587 1 698 1 932 1 1195 1 1397 1 1865 1 1397 1
- **My Little Pony:** 2400 587 18 554 4 587 8 659 12 587 16 0 10 587 4 659 4 740 8 587 4 784 12 740 8 659 8 587 4 740 20 587 40
- **Pokemon Center:** 288 880 1 0 1 880 1 0 1 880 1 698 1 1046 1
- **Rick and Morty - Intro 1:** 300 466 3 554 1 523 1 622 1 415 1 369 1 349 4
- **Rick and Morty - Intro 2:** 300 466 3 554 1 523 1 622 1 830 1 739 1 698 4
- **Rick and Morty - Complete (1+2) :** 300 466 3 554 1 523 1 622 1 415 1 369 1 349 4 466 3 554 1 523 1 622 1 830 1 739 1 698 4 
- **Star Wars - Imperial March:** 480 440 4 440 4 440 4 349 3 523 1 440 4 349 3 523 1 440 8 659 4 659 4 659 4 698 3 523 1 415 4 349 3 523 1 440 8
- **Super Mario:** 600 334 1 334 1 0 1 334 1 0 1 261 1 334 1 0 1 392 2 0 2 196 2
- **Super Mario 2:** 480 165 2 165 2 165 3 554 1 587 1 554 2 370 1 554 1 523 2 349 1 523 1 494 3 165 2 165 2 165 2
- **U Can't Touch This:** 300 147 2 130 1 123 1 110 1 440 1 440 1 82 1 98 1 392 1 392 1 123 1 110 1 440 1
- **Wolfstein 3D:** 300 131 1 196 1 196 1 196 1 294 1 196 1 294 1 196 1 131 1
- **xiè-jìléi's tune (ascending):** 2000 400 4 0 1 500 4 0 1 600 4 0 1 800 6
