let
  colors = import ../modules/colors.nix;
in {
  global = {
    font = "Iosevka 10";
    markup = "yes";
    format = "%b";
    sort = "yes";
    indicate_hidden = "yes";
    alignment = "left";
    bounce_freq = 0;
    show_age_threshold = 60;
    word_wrap = "yes";
    ignore_newline = "no";
    geometry = "500x60-65+65";
    shrink = "no";
    transparency = 18;
    idle_threshold = 120;
    monitor = 0;
    follow = "mouse";
    sticky_history = "yes";
    history_length = "20";
    show_indicators = "yes";
    line_height = 0;
    separator_height = 1;
    padding = 8;
    horizontal_padding = 8;
    separator_color = "frame";
    icon_position = "left";
    frame_width = 1;
    frame_color = colors.gray;
  };
  urgency_low = {
    msg_urgency = "low";
    background = colors.base0;
    foreground = colors.base5;
  };
  urgency_normal = {
    msg_urgency = "normal";
    background = colors.base0;
    foreground = colors.base5;
  };
  urgency_critical = {
    msg_urgency = "critical";
    background = colors.red;
    foreground = "#dfe1e8";
  };
}
