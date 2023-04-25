#!/usr/bin/env bash

sudo pacman -Sy --needed --noconfirm fish git curl ksshaskpass rbw pinentry age meld

rbw config set email costa.tiago@gmail.com
rbw config set pinentry pinentry-qt
