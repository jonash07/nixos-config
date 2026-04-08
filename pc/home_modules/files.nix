{ ... }:

{
  home.file.".config/.mischypr/misc.conf" = {
    enable = true;
    text = ''
#############
### INPUT ###
#############

# https://wiki.hypr.land/Configuring/Variables/#input
input {
  touchpad {
    natural_scroll=false
  }
  follow_mouse=1
  kb_layout=pl
  kb_model=
  kb_options=
  kb_rules=
  kb_variant=
  sensitivity=-0.700000
}

# See https://wiki.hypr.land/Configuring/Gestures
# gesture = 3, horizontal, workspace

device {
  name=epic-mouse-v1
  sensitivity=-0.700000
}

################
### MONITORS ###
################

# See https://wiki.hypr.land/Configuring/Monitors/
monitor=DP-1, 2560x1440@165, 0x0, 1
monitor=DP-2, 1920x1080@144, 2560x160, 1
    '';

  };
  
}

