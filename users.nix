{ inputs, lib, config, pkgs, ... }: {
  users.users.ewen = {
    isNormalUser = true;
    description = "Ewen Cluley";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
      firefox
      slack
      zoom-us
      whatsapp-for-linux
      jetbrains.idea-ultimate
      discord
      sublime4
      gnomeExtensions.extension-list
      git
      jq
      gh
      usbutils
      pciutils
      kubectl
      kubectx
      awscli2
      google-cloud-sdk
    ];
  };
}
