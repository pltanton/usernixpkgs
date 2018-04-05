{
  fade = true;
  fadeDelta = 3;
  shadow = true;

  shadowExclude = [
    "name = 'stalonetray'"
  ];

  extraOptions = ''
    opacity-rule = [
      "87:class_i ?= 'scratchpad'",
      "91:class_i ?= 'torrent'"
    ];

    # Blur
    blur-background = true;
    no-dock-blur = true;
  '';
}
