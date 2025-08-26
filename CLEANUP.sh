#!/bin/bash

yt="/MEDIA/YOUTUBE" # Where the YouTube main directory is.
cleanup='rm -rf $yt/*/{*.temp.*,*.json,*.meta,*.webp,*.webm,*.part}' # Delete some junk files that we no longer need.
