# 📦 Nix Darwin Setup Guide

Effortlessly manage your macOS configuration with Nix Darwin.
Follow the commands below to set up, update, or clean up your system.

---
## Install nix and nix-darwin



```shell
# install nix from determinate systems
https://docs.determinate.systems/

# install nix darwin
sudo mkdir -p /etc/nix-darwin
sudo chown $(id -nu):$(id -ng) /etc/nix-darwin
cd /etc/nix-darwin

nix flake init -t nix-darwin/nix-darwin-25.05

sed -i '' "s/simple/$(scutil --get LocalHostName)/" flake.nix
```

---

## 🚀 Setup and Rebuild

Use the following command to initiate your macOS configuration with the specified flake:

```bash
sudo nix run nix-darwin/nix-darwin-25.05#darwin-rebuild -- switch --flake ~/code/repos/drackthor/nix-darwin
# nix run nix-darwin -- switch
```

Afterwards, you can use this command for the same purpose:

```bash
sudo darwin-rebuild switch --flake ~/code/repos/drackthor/nix-darwin
```

---

## 🧹 Garbage Collection

To free up space by removing unused Nix store files, run:

```bash
nix-store --gc
```

---

## ⬆️ Update

To update the packages in your current flake, run:

```bash
nix flake update
```

---

## ℹ️ format nix code

```shell
# nixfmt will be installed with this config
find . -type f -name "*.nix" | xargs nixfmt
```

### 🛠 Additional Notes

- Make sure your flake repository is up-to-date before running these commands.
- Always back up your configuration if you're making significant changes.
