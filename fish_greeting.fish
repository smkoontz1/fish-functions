function fish_greeting
  set hour (date +%H)
  set greetTime ""
  set color magenta

  if test $hour -ge 6
    and test $hour -lt 12
    set color yellow
    set greetTime "morning"
  else if test $hour -ge 12
    and test $hour -lt 17
    set color green
    set greetTime "afternoon"
  else if test $hour -ge 17
    and test $hour -lt 20
    set color blue
    set greetTime "evening"
  else
    set greetTime "night"
  end

  cowsay Good (set_color $color)$greetTime(set_color normal), Steve.
end
