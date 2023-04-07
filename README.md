# minix
nix-config

### Install Nix 
```
sh <(curl -L https://nixos.org/nix/install) --daemon --yes
```

### Enable flakes and Nix command 

```
sudo sh -c 'echo "experimental-features = nix-command flakes" >> /etc/nix/nix.conf'
```

```bash
mkdir -p ~/.config && cd ~/.config 
```
### Clone the repo
```bash
git clone https://github.com/kranurag78/minix.git home-manager && cd home-manager
``` 

```bash
nix run .#homeConfigurations.ubuntu.activationPackage
```