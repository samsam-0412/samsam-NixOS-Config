rebuild:	
	sudo nixos-rebuild switch --flake .#samsam --impure
	sudo rm -r /home/samsam/.config/home-manager/nixOS/*
	sudo rsync -av /etc/nixos/ /home/samsam/.config/home-manager/nixOS/
clean:
	sudo nix-collect-garbage --delete-older-than 7d
	nix-collect-garbage --delete-older-than 7d