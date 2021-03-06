swappy(1)

# NAME

swappy - grab and edit on the fly snapshots of a Wayland compositor

# DESCRIPTION

*swappy* [options...]

# SYNOPSIS

swappy is a command-line utility to take and edit screenshots of Wayland
desktops. It can also work on regular X11 desktops if using the *-f* option.

Can be used in two ways, either as the output of grim (recommended) or by
grabbing the geometry (if the compositor supports the screencopy protocol).

swappy will save the swappshot images to the config *save_dir*, see below.

If absent, then if it will try to default to a *Desktop* folder following this
pattern: *$XDG\_DESKTOP\_DIR*. If this variable is not set, it will revert to:
*$XDG\_CONFIG\_HOME/Desktop*. If *$XDG\_CONFIG\_HOME* is not set, it will revert
to: *$HOME/Desktop*.

# OPTIONS

*-h*
	Show help message and quit.

*-g* "<x>,<y> <width>x<height>"
	Set the region to capture, in layout coordinates. This is slurp friendly.

	Requires a Wayland compositor that supports screencopy protocol.

*-f* <file>
	A PNG file to load for editing.

	If set to *-*, read the file from standard input instead. This is grim
	friendly.

*-o, --output-file <file>*
	Print the final surface to *<file>* when exiting the application.
	
	If set to *-*, prints the final surface to *stdout*.

	Note that the *Save* button will save the image to the config *save_dir*
	parameter, as described in the SYNOPSIS section.

# CONFIG FILE

The config file is located at *$XDG\_CONFIG\_HOME/swappy/config* or at
*$HOME/.config/swappy/config*. The file follows the GLib *conf* format.

```
	[Section]
	key=value
```

The following lines can be used as swappy's default:

```
	[Default]
	save_dir=$HOME/Desktop
	line_size=5
	text_size=20
	text_font=sans-serif
```

- *save_dir* is where swappshots will be saved, can contain env variables and must exist in your filesystem
- *line_size* is the default line size (must be between 1 and 50)
- *text_size* is the default text size (must be between 10 and 50)
- *text_font* is the font used to render text, its format is pango friendly

# KEY BINDINGS

## LAYOUT

- *Ctrl+b*: Toggle Paint Panel

## PAINT MODE

- *b*: Switch to Brush
- *t*: Switch to Text
- *r*: Switch to Rectangle
- *o*: Switch to Ellipse
- *a*: Switch to Arrow

- *R*: Use Red Color
- *G*: Use Green Color
- *B*: Use Blue Color
- *C*: Use Custom Color
- *Minus*: Reduce Stroke Size
- *Plus*: Increase Stroke Size
- *Equal*: Reset Stroke Size
- *k*: Clear Paints (cannot be undone)

## HEADER BAR

- *Ctrl+z*: Undo
- *Ctrl+Shift+z* or *Ctrl+y*: Redo
- *Ctrl+s*: Save to file (see man page)
- *Ctrl+c*: Copy to clipboard
- *Escape* or *q* or *Ctrl+w*: Quit swappy

# AUTHORS

Written and maintained by jtheoof <contact@jtheoof.me>. See
https://github.com/jtheoof/swappy.
