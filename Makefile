.PHONY: update
update:
	home-manager switch --flake .#samsam
	sudo rsync -av /etc/nixos/ /home/samsam/.config/home-manager/nixOS/
	sudo nixos-rebuild switch

