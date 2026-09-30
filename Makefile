.PHONY: update
update:
	home-manager switch --flake .#samsam
	sudo rsync -av /etc/nixos/ /home/samsam/.config/home-manager/nixOS/
	sudo nixos-rebuild switch
	sudo nix-collect-garbage --delete-older-than 7d
	nix-collect-garbage --delete-older-than 7d

