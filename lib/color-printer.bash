# Print things with nice colors
nd::print_in_color() { printf "%b$(tput setaf $2 2> /dev/null)$1$(tupt sgr0 2> /dev/null)"; }
nd::print_green() { nd::print_in_color "$1" 2; }
nd::print_purple() { nd::print_in_color "$1" 5; }
nd::print_red() { nd::print_in_color "$1" 1; }
nd::print_yellow() { nd::print_in_color "$1" 3; }
nd::print_error() { nd::print_red "[!!] $1" >&2; }
nd::print_warning() { nd::print_yellow "[!!] $1"; }
nd::print_success() { nd::print_green "[√√] $1"; }
nd::print_question() { nd::print_yellow "[??] $1" && read answer && echo "${answer}"; }

