# bspwm-unified-workspace
Configuration files for a traditional unified workspace in bspwm. Uses polybar.

## Inspired by the tiling scripts krohnkite/bismuth in KDE
I essenially wanted most of the same functionality as krohnkite/bismuth, but in an actual standalone WM.
After trying i3-gaps, i was very disappointed. 

i3 and many other window managers do not offer the traditional Desktop Environment's way of handling workspaces/desktops.
Instead of having a unified workspace, each monitor has it's own workspaces.

bspwm-unified-workspace goal is to have configs for "one workspace across all monitors". You can have more than one, or four, workspaces that are shared on all monitors.

## Most important part

To cycle all monitors at once, you need the following bspc command,
recommended by the BSPWM dev himself.

```
cycle_dir={prev,next}; \
    bspc desktop "$\{cycle_dir\}.local" -f; \
    for mon_id in $(bspc query -M -m '.!focused'); do \
        bspc desktop "$\{mon_id\}:focused#$\{cycle_dir\}.local" -a; \
    done
```

[Issue 564](https://github.com/baskerville/bspwm/issues/564)


