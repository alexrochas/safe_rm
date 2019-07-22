# Safe RM
> minor idea to reproduce usual bin trash behavior on terminal

## How-to

From terminal:

```bash
~/$ [path_to_script]/safe_rm.sh [some_random_file]
```

The file will then be moved to a folder in `~/.bin_trash` and permanently removed (by default) 10 days after.

For the default behavior just add `-f` option like:

```bash
~/$ [path_to_script]/safe_rm.sh -f [some_random_file]
```

## Roadmap
- install script
- alias overriding `rm`

## Meta

Alex Rocha - [about.me](http://about.me/alex.rochas) -
