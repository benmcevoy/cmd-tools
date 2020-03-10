cmd-tools
============================================

handy aliases for IIS and windows dev

add to your path and run in administrator command window, or powershell

- kill # reset iis immediately /timeout:0
- hosts # open hosts file in notepad
- head # do a HEAD for the url
- get # do GET for the Url
- wp # list the worker processes and pids
- touch # update last modified date on a file
- lpath # like PATH but a list
- clean # aggresively clean a c# project by deleting the bin and obj folders
- markjump  # https://github.com/secretGeek/markjump


# example figlet
`figlet "oh hi" .\fonts\larry3d.flf`
```
         __                     __
        /\ \                   /\ \         __
  ___   \ \ \___               \ \ \___    /\_\
 / __`\  \ \  _ `\              \ \  _ `\  \/\ \
/\ \L\ \  \ \ \ \ \              \ \ \ \ \  \ \ \
\ \____/   \ \_\ \_\              \ \_\ \_\  \ \_\
 \/___/     \/_/\/_/               \/_/\/_/   \/_/

```

# customize your PS profile to inlcude common scripts
## do you have a profile?
`Test-Path $profile`

## make a profile
`New-Item -path $profile -type file –force`

## edit the profile, add this
".\markjump.ps1"

