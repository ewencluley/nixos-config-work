{ inputs, lib, config, pkgs, ... }: {
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.excludePackages = [ pkgs.xterm ];

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "gb";
    xkbVariant = "";
  };
  
  # Remove defaul gnome apps
  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
  ]) ++ (with pkgs.gnome; [
    cheese            # webcam tool
    gedit             # text editor
    epiphany          # web browser
    geary             # email reader
    evince            # document viewer
    totem             # video player
    tali              # poker game
    iagno             # go game
    hitori            # sudoku game
    atomix            # puzzle game
    yelp              # help viewer
    simple-scan       # document scanner
    seahorse          # password manager
    gnome-characters  
    gnome-music
    gnome-terminal
    gnome-contacts
    gnome-maps
  ]);
}
