# wallpaper-dmenu

Hello everyone! On my way to build a minimalist and flyweight distro based on [void-linux](https://voidlinux.org/) I have working on
a minimalist wallpaper menu using [dmenu](https://wiki.archlinux.org/title/Dmenu) if you are not used to custom your linux or you
are just too lazy to do it yourself, well here you have a dmenu script to select and save your wallpaper desktop

## Requirements 

- dmenu : fast and lightweight dynamic menu for X
- feh : flyweight image visor

## Installation - Manually 
- Install and verify the requires packages
- Download `wallpaper-dmenu.sh` script and change the follows line with you favorite editor as vim, vi, nano:

```
image=$(find <images address> -type f | dmenu -p <specific folder> -l 10)
file=<config file>
```
`<images address>`: here you put the folder where you storage images, tipically `~/Pictures/` or `~/Images/`
`<specific folder>`: here you put the folder where you storage your wallpapers
`<config file>`: here you put the address of your config file, do not confuse with the shell config file as `.bashrc`.
Example of a correct file: `~/.config/i3/config` or  `~/.config/hypr/hyperland.conf`

## Recommendation

I highly recommend to configure keybinds in the next way:

```
bindsym $mod+w exec --no-startup-id <script address>
```
You can change the w for whatever letter you want but I like that keybind 

