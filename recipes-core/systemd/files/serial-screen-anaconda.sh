# Detect if it is serial tty, if yes, we need to invoke
# screen to attach anaconda
console=`/usr/bin/tty`
[ "${console##/dev/ttyS}" != "${console}" ] && echo " login:" && /usr/bin/screen -x anaconda-init

