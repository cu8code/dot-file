from libqtile.config import Key, Group, Screen
from libqtile.command import lazy
from libqtile import bar, hook, widget

from libqtile.layout.bsp import Bsp
from libqtile.layout.floating import Floating

import os
import subprocess

import nerdfonts as nf

TERMINAL="alacritty"
EDITOR="nvim"
BROWSER="firefox"
MOD="mod4"

keys = [
        #Launch Terminal
        Key(
            [MOD],"t",lazy.spawn(TERMINAL)
            ),
        #Launch brave-browser
        Key(
            [MOD],"b",lazy.spawn(BROWSER)
            ),
        #Close Window 
        Key(
            [MOD],"q",lazy.window.kill()
            ),
        #Reload Config qtile
        Key(
            [MOD,"shift"],"r",lazy.reload_config()
            ),
        #Quit
        Key(
            [MOD,"shift"],"q",lazy.shutdown()
            ),
        #SHUTDOWN
        Key(
            [MOD,"shift"],"x",lazy.spawn("shutdown 'now'")
            ),
        Key(
            [MOD],"p",lazy.spawncmd(),
            ),
        # Sound
        Key([], "XF86AudioMute", lazy.spawn("")),
        Key([], "XF86AudioLowerVolume", lazy.spawn("pactl -- set-sink-volume 0 -10%")),
        Key([], "XF86AudioRaiseVolume", lazy.spawn("pactl -- set-sink-volume 0 +10%")),

        #MOVE FOCUS
        Key([MOD], "h", lazy.layout.left(), desc="Move focus to left"),
        Key([MOD], "l", lazy.layout.right(), desc="Move focus to right"),
        Key([MOD], "j", lazy.layout.down(), desc="Move focus down"),
        Key([MOD], "k", lazy.layout.up(), desc="Move focus up"),

        #RESIZE WINDOW
        Key([MOD, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
        Key([MOD, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
        Key([MOD, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
        Key([MOD, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
        ]
print("Keys loaded")

groups = [
        Group(nf.icons['fa_thumbs_up']+" "),
        Group(nf.icons['mdi_web']+" "),
        Group(nf.icons['dev_terminal']+" "),
        Group(nf.icons['fa_automobile']+" "),
        ]
print("group loaded")

for i in range(0,len(groups)):
    keys.extend(
            [
                Key(
                    [MOD],
                    str(i+1),
                    lazy.group[groups[i].name].toscreen(),
                    ),
                ])
print("group shortcut loaded")

layouts = [ 
        Bsp(margin=5,border_focus='#F9D371'),
        Floating()
        ]
print("layout loaded")

widget_defaults = dict(
        fontsize=15,
        )
extension_defaults = widget_defaults.copy()

colorsList = [ 
        "#F9D371",
        "#EF2F88",
        "#611132"
        ]

screens = [ 
        Screen(
            top=bar.Bar(
                [
                    widget.CurrentLayout(
                        font="Fire Code Italic",
                        ),
                    widget.KeyboardLayout(),
                    widget.TextBox('['),
                    widget.GroupBox(
                        fontsize=18,
                        boderwidth=3,
                        active=colorsList[0],
                        inactive='#ffffff',
                        rounded = False,
                        highlight_color=colorsList[2],
                        highlight_method = "line",
                        underline_color = colorsList[2],
                        this_current_screen_border = colorsList[0],
                        ),
                    widget.TextBox(']'),
                    widget.WindowName(
                        padding = 0
                        ),
                    widget.TextBox('['),
                    widget.Prompt(),
                    widget.Chord(
                        chords_colors={
                            "launch": ("#ff0000", "#ffffff"),
                            },
                        name_transform=lambda name: name.upper(),
                        ),
                    widget.Systray(),
                    widget.TextBox(']'),
                    widget.TextBox('['),
                    widget.Net(),
                    widget.TextBox(']'),
                    widget.TextBox('['),
                    widget.TextBox(nf.icons['mdi_volume_low'] + '  ='),
                    widget.Volume(),
                    widget.TextBox(']'),
                    widget.TextBox('['),
                    widget.Battery(charge_char=" ⚡"),
                    widget.TextBox(']'),
                    widget.TextBox('['),
                    widget.Clock(format="%Y-%m-%d %a %I:%M %p",
                        font="Fire Code Italic",
                        ),
                    widget.TextBox(']'),
                    ],
                24,
                background=colorsList[2]
                ),
            ),
        ]
print("screen loaded")
@hook.subscribe.startup
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.run([home])
