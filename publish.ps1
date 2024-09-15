function quiet_remove($item)
{
  if (Test-Path $item) {
    Remove-Item $item  -r -force
  }
}
quiet_remove ( "$env:localappdata\sins2\mods\interdiction" )
$mod_folder = [System.IO.Path]::GetFullPath(".\mods\interdiction")
py tools/run-peon.py --src_folder=$mod_folder --dst_folder="$env:localappdata\sins2\mods\interdiction" --package_mod
Copy-Item -Path "$mod_folder\.mod_meta_data" -Destination "$env:localappdata\sins2\mods\interdiction\.mod_meta_data"
Copy-Item -Path "$mod_folder\interdiction.png" -Destination "$env:localappdata\sins2\mods\interdiction\interdiction.png"