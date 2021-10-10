# Print things with nice colors
nd::print_in_color() { printf "%b$(tput setaf $2 2> /dev/null)$1$(tupt sgr0 2> /dev/null)"; }

nd::print_black() { nd::print_in_color "$1" 0; }
nd::print_red() { nd::print_in_color "$1" 1; }
nd::print_green() { nd::print_in_color "$1" 2; }
nd::print_yellow() { nd::print_in_color "$1" 3; }
nd::print_blue() { nd::print_in_color "$1" 4; }
nd::print_purple() { nd::print_in_color "$1" 5; }
nd::print_cyan() { nd::print_in_color "$1" 6; }
nd::print_white() { nd::print_in_color "$1" 7; }

nd::print_error() { nd::print_red "[!!] $1" >&2; }
nd::print_warning() { nd::print_yellow "[!!] $1"; }
nd::print_success() { nd::print_green "[√√] $1"; }
nd::print_question() { nd::print_yellow "[??] $1" && read answer && echo "${answer}"; }

nd::echo_black() { nd::print_in_color "$1\n" 0; }
nd::echo_red() { nd::print_in_color "$1\n" 1; }
nd::echo_green() { nd::print_in_color "$1\n" 2; }
nd::echo_yellow() { nd::print_in_color "$1\n" 3; }
nd::echo_blue() { nd::print_in_color "$1\n" 4; }
nd::echo_purple() { nd::print_in_color "$1\n" 5; }
nd::echo_cyan() { nd::print_in_color "$1\n" 6; }
nd::echo_white() { nd::print_in_color "$1\n" 7; }

nd::echo_error() { nd::print_red "[!!] $1\n" >&2; }
nd::echo_warning() { nd::print_yellow "[!!] $1\n"; }
nd::echo_success() { nd::print_green "[√√] $1\n"; }
nd::echo_question() { nd::print_yellow "[??] $1\n" && read answer && echo "${answer}"; }

