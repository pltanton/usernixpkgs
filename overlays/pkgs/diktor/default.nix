{ stdenv, writeTextFile }:

writeTextFile {
  name = "diktor";
  text = builtins.readFile ./diktor.xkb;
  destination = "/symbols/diktor";
}
