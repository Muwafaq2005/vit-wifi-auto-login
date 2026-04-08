# WiFi Auto Login (Captive Portal Automation)

Automates login for captive portal WiFi networks (like Pronto Networks used in many campuses).

## Features

* Auto login on WiFi connect
* Retry mechanism for reliability
* Works with simple POST-based portals

## Setup

### 1. Clone repo

```
git clone https://github.com/Muwafaq2005/wifi-auto-login.git
cd wifi-auto-login
```

### 2. Configure credentials

```
cp config.example.sh config.sh
nano config.sh
```

Fill your username and password.

### 3. Make script executable

```
chmod +x login.sh
```

### 4. Auto-run on WiFi connect (Linux)

```
sudo nano /etc/NetworkManager/dispatcher.d/wifi-login
```

Paste:

```
#!/bin/bash

if [ "$2" = "up" ]; then
    /path/to/login.sh
fi
```

```
sudo chmod +x /etc/NetworkManager/dispatcher.d/wifi-login
```

