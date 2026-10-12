{ ... }: 

{
  virtualisation.docker.enable = true;
  virtualisation.docker.storageDriver = "btrfs";
  users.users.samsam.extraGroups = [ "docker" ]; 


  virtualisation.docker.daemon.settings = {
    data-root = "/home/samsam/.docker";
  };
}