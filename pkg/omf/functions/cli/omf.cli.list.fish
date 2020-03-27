function omf.cli.list
  switch (count $argv)
  case 0
    echo (set_color -u)Plugins(set_color normal)
    omf.packages.list --plugin
    echo
    echo (set_color -u)Themes(set_color normal)
    omf.packages.list --theme
  case '*'
    omf.packages.list $argv
  end
end
