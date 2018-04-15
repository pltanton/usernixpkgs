{
  fade = true;
  fadeDelta = 3;
  shadow = true;

  shadowExclude = [
    "name = 'stalonetray'"
    "name = 'Screenshot'"
    "class_g = 'slop'"
  ];

  extraOptions = ''
    xinerama-shadow-crop = true;
    unredir-if-possible = true;
    sw-opti = true;
    paint-on-overlay = true;

    opacity-rule = [
      "87:class_i ?= 'scratchpad'",
      "91:class_i ?= 'torrent'"
    ];

    # Blur
    blur-background = true;
    no-dock-blur = true;

    blur-background-exclude = [
      "class_g = 'slop'",
      "class_i = 'polybar'"
    ];
  '';
}
