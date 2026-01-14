#!/bin/bash

sudo chown -R jellyfin:jellyfin /YOUTUBE
find /YOUTUBE -type d -exec sudo chmod 755 {} +
find /YOUTUBE -type f -exec sudo chmod 644 {} +
