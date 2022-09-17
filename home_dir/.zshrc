PROMPT='%B%F{red}[%F{green}renee%F{red}@%F{green}%M%F{red}] %F{blue}%4~%b%F{black} '

eval "$(dircolors ~/.dir_colors)"

alias discord='flatpak run com.discordapp.Discord & disown; exit'
alias teams='flatpak run com.github.IsmaelMartinez.teams_for_linux & disown; exit'
alias up='sudo xbps-install -Su'
alias b='btop'
alias t='cd /home/renee/ebooks; z tokiPona.epub'
alias intu='sudo sv up NetworkManager'
alias intd='sudo sv down NetworkManager'
alias xq='sudo xbps-query -Rs'
alias py='python'
alias v='vim'
alias ls='ls --color'
alias rbn='sudo reboot'
alias sdn='sudo shutdown -f -P now'
alias q='exit'
alias asdf="setxkbmap -layout 'dvorak, ru' -option 'grp:win_space_toggle'"
alias u='clear; source /home/renee/.zshrc'
alias sta='startx; xmodmap ~/.Xmodmap'
alias bat='cat /sys/class/power_supply/BAT0/capacity'
alias sys="echo 'Time';date '+%R';echo 'Volume'; pamixer --get-volume; echo 'Battery'; bat"
alias s='sys'

alias p='ping gnu.org'
alias x='cd;u'
alias cdn='cd /home/renee/data/notes'
alias cdp='cd /home/renee/data/code/python'
alias cdr='cd /home/renee/data/code/rust'
alias cdc='cd /home/renee/data/code/c'
alias cdw='cd /home/renee/data/code/webdev/'
alias cds='cd /home/renee/data/shows/spongebob'
alias cde='cd /home/renee/data/ebooks'
alias cal='cal -m'
function cdd() {
    cd "$1";
    cd src;
    vim main.rs;
}

function usb() {
    if [ "$#" -eq 0 ]; then
        lsblk
    fi
    if [ "$#" -eq 1 ]; then
        if [ "$1" = "x" ]; then
            sudo umount /usb;
            echo "USB drive unmounted";
        else
            sudo mount /dev/"$1" /usb;
            cd /usb;
        fi
    fi
}
function usbdd() {
    sudo dd if="$1" of=/dev/"$2" status=progress;
}
function m() {
    mpv "$1" & disown;
    exit;
}
function f() {
    feh "$1" & disown;
    exit;
}
function z() {
    zathura "$1" & disown;
    exit;
}
function zz() {
    zathura "$1" & disown;
}
function entry() {
    DATE=$(date '+%d.%m.%y')
    YEAR=$(date '+%Y')
    MONTH=$(date '+%B')
    FILE="$DATE.txt"
    # Create the year dir if not exist, else cd
    if [ -d /home/renee/.dnevnik/$YEAR ]; then
        cd /home/renee/.dnevnik/$YEAR
    else
        mkdir /home/renee/.dnevnik/$YEAR
    fi
    # Create the month dir if not exist, else cd
    if [ -d /home/renee/.dnevnik/$YEAR/$MONTH ]; then
        cd $MONTH
    else
        mkdir /home/renee/.dnevnik/$YEAR/$MONTH
    fi

    if [ -f "$FILE" ]; then
        vim $FILE;
        echo "Сохранил энтри в дневнике, Ренее."
    else
        cp /home/renee/.dnevnik/.template.txt "$FILE";
        vim $FILE;
        echo "Сохранил энтри в дневнике, Ренее."
    fi
}

function entryy() {
    DATE=$(date --date='yesterday' '+%d.%m.%y')
    YEAR=$(date --date='yesterday' '+%Y')
    MONTH=$(date --date='yesterday' '+%B')
    FILE="$DATE.txt"
    # Create the year dir if not exist, else cd
    if [ -d /home/renee/.dnevnik/$YEAR ]; then
        cd /home/renee/.dnevnik/$YEAR
    else
        mkdir /home/renee/.dnevnik/$YEAR
    fi
    # Create the month dir if not exist, else cd
    if [ -d /home/renee/.dnevnik/$YEAR/$MONTH ]; then
        cd $MONTH
    else
        mkdir /home/renee/.dnevnik/$YEAR/$MONTH
    fi

    if [ -f "$FILE" ]; then
        vim $FILE;
        echo "Mi awen e lipu pilin sina"
    else
        cp /home/renee/.dnevnik/.template.txt "$FILE";
        vim $FILE;
        cd /home/renee/.dnevnik;
        echo "Mi awen e lipu pilin sina";
    fi
}
function cddi() {
    YEAR=$(date '+%Y')
    MONTH=$(date '+%B')
    # Create the year dir if not exist, else cd
    if [ -d /home/renee/.dnevnik/$YEAR ]; then
        cd /home/renee/.dnevnik/$YEAR
    else
        mkdir /home/renee/.dnevnik/$YEAR
    fi
    # Create the month dir if not exist, else cd
    if [ -d /home/renee/.dnevnik/$YEAR/$MONTH ]; then
        cd $MONTH
    else
        mkdir /home/renee/.dnevnik/$YEAR/$MONTH
    fi
    echo "Mi tawa sina e lipu pilin sina"
}

/home/renee/data/config/gruvbox_256palette.sh
neofetch
