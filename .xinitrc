# vim: ft=sh
xrdb ~/.Xresources
xmodmap ~/.Xmodmap

#export XMODIFIERS=@im=SCIM
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export SDL_AUDIODRIVER="alsa"

# D-bus
#if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    #eval `dbus-launch --sh-syntax --exit-with-session`
#fi

#scim -d &
fcitx &
xscreensaver -no-splash&
#killall -s9 urxvtd
#urxvtd&
fetchmail &
wicd-client &
#tpb -d&
#[[ -x /usr/bin/dropboxd ]] && dropboxd &

DEFAULT_SESSION=fluxbox

case $1 in
    awesome)
    exec awesome
    ;;
    fluxbox)
    exec startfluxbox
    ;;
    i3)
    exec i3
    ;;
    wmii)
    exec wmii
    ;;
    *)
    exec $DEFAULT_SESSION
    ;;
esac

xsetroot -cursor_name left_ptr
