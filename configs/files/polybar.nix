colors:

{
  "bar/top" = {
    monitor = "\${env:MONITOR:DP1}";
    width = "100%:-16";
    height = 25;
    offset-x = 8;
    offset-y = 8;
    fixed-center = false;

    background = colors.base0;
    foreground = colors.base5;

    line-size = "3";
    line-color = "#f00";

    padding-left = 0;
    padding-right = 3;

    module-margin-left = 1;
    module-margin-right = 2;

    font-0 = "Iosevka:pixelsize=10;1";
    font-1 = "siji:pixelsize=10;1";

    modules-left = "workspaces-xmonad";
    modules-center = "title-xmonad";
    modules-right = "xbacklight alsa memory cpu date battery xkeyboard";

    tray-position = "right";
    tray-padding = 2;
  };

  "module/xkeyboard" = {
    type = "internal/xkeyboard";
    blacklist-0 = "num lock";

    label-layout = "%layout%";
    label-layout-underline = colors.base3;

    label-indicator-padding = 2;
    label-indicator-margin = 1;
    label-indicator-background = colors.base3;
    label-indicator-underline = colors.base3;
  };

  "module/workspaces-xmonad" = {
    type = "custom/script";
    exec = "tail -F /tmp/.xmonad-workspace-log";
    tail = true;
  };

  "module/title-xmonad" = {
    type = "custom/script";
    exec = "tail -F /tmp/.xmonad-title-log";
    tail = true;
  };

  "module/xbacklight" = {
    type = "internal/xbacklight";

    format = "<label> <bar>";
    label = "BL";

    bar-width = 10;
    bar-indicator = "|";
    bar-indicator-foreground = "#fff";
    bar-indicator-font = 2;
    bar-fill = "─";
    bar-fill-font = 2;
    bar-fill-foreground = "#9f78e1";
    bar-empty = "─";
    bar-empty-font = 2;
    bar-empty-foreground = colors.base3;
  };

  "module/cpu" = {
    type = "internal/cpu";
    interval = 2;
    format-prefix = " ";
    format-prefix-foreground = "\${self.format-underline}";
    format-underline = colors.base13;
    label = "%percentage:2%%";
  };

  "module/memory" = {
    type = "internal/memory";
    interval = 2;
    format-prefix = " ";
    format-prefix-foreground = "\${self.format-underline}";
    format-underline = colors.base14;
    label = "%percentage_used%%";
  };

  "module/date" = {
    type = "internal/date";
    interval = 5;

    date = "%Y-%m-%d";

    time = "%H:%M";

    format-prefix = "";
    format-prefix-foreground = "\${self.format-underline}";
    format-underline = colors.base12;

    label = "%date% %time%";
  };

  "module/alsa" = {
    type = "internal/alsa";

    format-volume = "<label-volume>  <bar-volume>";
    label-volume = "VOL";
    label-volume-foreground = "\${root.foreground}";

    format-muted-prefix = " ";
    format-muted-foreground = colors.base3;
    label-muted = "sound muted";

    bar-volume-width = 10;
    bar-volume-foreground-0 = "#55aa55";
    bar-volume-foreground-1 = "#55aa55";
    bar-volume-foreground-2 = "#55aa55";
    bar-volume-foreground-3 = "#55aa55";
    bar-volume-foreground-4 = "#55aa55";
    bar-volume-foreground-5 = "#f5a70a";
    bar-volume-foreground-6 = "#ff5555";
    bar-volume-gradient = false;
    bar-volume-indicator = "|";
    bar-volume-indicator-font = 2;
    bar-volume-fill = "─";
    bar-volume-fill-font = 2;
    bar-volume-empty = "─";
    bar-volume-empty-font = 2;
    bar-volume-empty-foreground = colors.base3;
  };

  "module/battery" = {
    type = "internal/battery";
    battery = "BAT1";
    adapter = "AC";
    full-at = 98;

    format-charging = "<animation-charging><label-charging>";
    format-charging-underline = colors.base10;

    format-discharging = "<animation-discharging><label-discharging>";
    format-discharging-underline = "\${self.format-charging-underline}";

    format-full-prefix = " ";
    format-full-prefix-foreground = "\${self.format-full-underline}";
    format-full-underline = "\${self.format-charging-underline}";

    ramp-capacity-0 = "";
    ramp-capacity-1 = "";
    ramp-capacity-2 = "";
    ramp-capacity-foreground = colors.base3;

    animation-charging-0 = "";
    animation-charging-1 = "";
    animation-charging-2 = "";
    animation-charging-foreground = "\${self.format-charging-underline}";
    animation-charging-framerate = 750;

    animation-discharging-0 = "";
    animation-discharging-1 = "";
    animation-discharging-2 = "";
    animation-discharging-foreground = "\${self.format-discharging-underline}";
    animation-discharging-framerate = 750;
  };

  settings = {
    screenchange-reload = true;
  };
}
