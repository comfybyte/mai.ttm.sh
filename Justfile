_default:
  just --list
watch:
  live-server ./src
install:
  cp -r ./src/* ~/public_html
  echo "installed files to ~/public_html."
