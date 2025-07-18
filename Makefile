PKG = hello

build:
	nix --extra-experimental-features "nix-command flakes" build

run:
	$(PKG)

clean:
	rm -fv result flake.lock

install: build
	nix --extra-experimental-features "nix-command flakes" profile add .

uninstall:
	nix --extra-experimental-features "nix-command flakes" profile remove $(PKG)
