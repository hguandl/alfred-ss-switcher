# alfred-ss-switcher
An Alfred workflow to switch the server quickly.
![alfred.png](https://i.loli.net/2017/08/20/5999838625fde.png)

# Requirement
* [Alfred](https://www.alfredapp.com) with [Powerpack](https://www.alfredapp.com/powerpack/).
* [Shadowsocks-libev](https://github.com/shadowsocks/shadowsocks-libev)

# Usage

1. Install Shadowsocks-libev with [Homebrew](https://brew.sh).
```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew install shadowsocks-libev
```

2. Create the folder to place resources.
```bash
mkdir -p /usr/local/etc/shadowsocks.d
mkdir -p /usr/local/etc/ss-icons.d
```

3. Name the json configs after the IP or domain name of your server. Put the server configs in `shadowsocks.d`. Put the icons in `ss-icons.d`.
![config.png](https://i.loli.net/2017/08/20/599983867f867.png)
![icon.png](https://i.loli.net/2017/08/20/599983871082e.png)

4. Call `ss-local` in Alfred.