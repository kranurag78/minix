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

### Clone the repo

```bash
git clone https://github.com/kranurag78/minix.git ~/.config/home-manager
``` 

### home-manager 

```bash
nix run home-manager/master --switch --flake ~/.config/home-manager
```

Thanks & Credits
- NobbZ