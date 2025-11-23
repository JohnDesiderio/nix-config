{ username, ... }:
{
  services = {
    xserver = {
      enable = true;

      xkb = {
        layout = "us";
        variant = "";
      };

      displayManager.autoLogin = {
        enable = true;
        user = "${johnd}"
      };
    # Enable touchpad support, prolly won't need this for a while  
    #   libinput = {
    #     enable = true; 
    #   };
    };
  };
}