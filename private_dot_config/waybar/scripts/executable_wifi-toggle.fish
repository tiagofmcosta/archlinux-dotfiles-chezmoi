#!/usr/bin/env fish

if string match -q "enabled" (nmcli radio wifi)
  nmcli radio wifi off
else
  nmcli radio wifi on
end
