# if autocomplete didn't work, try 'irb -r irb/completion' and see the error message
# if complains about libreadline.6.dynlib not found, symlink the existing one to it
require 'bond'
require 'irb/completion'
https://github.com/jimmypresto/vimrc
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:SAVE_HISTORY] = 1000

IRB.conf[:PROMPT_MODE][:DEFAULT] = {
  :AUTO_INDENT => true,
  :PROMPT_I => "%N(%m):%03n:%i> ",  # simple prompt
  :PROMPT_S => "%N(%m):%03n:%i%l ", # prompt for continuated strings
  :PROMPT_C => "%N(%m):%03n:%i* ",  # prompt for continuated statement
  :RETURN => "%s\n"                 # used to printf
}
