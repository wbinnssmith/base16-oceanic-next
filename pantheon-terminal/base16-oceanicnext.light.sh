#!/usr/bin/env bash
# Base16 Oceanic Next - Pantheon Terminal color scheme install script
# Dmitri Voronianski (http://pixelhunter.me)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#D8DEE9"
gsettings set "$SCHEMA" foreground "#4F5B66"
gsettings set "$SCHEMA" palette "#D8DEE9:#EC5f67:#99C794:#FAC863:#6699CC:#C594C5:#5FB3B3:#C0C5CE:#65737E:#EC5f67:#99C794:#FAC863:#6699CC:#C594C5:#5FB3B3:#1B2B34"
gsettings set "$SCHEMA" cursor-color "#1B2B34"

unset SCHEMA
