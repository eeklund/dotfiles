# Pased a lastpass login id, places the password into the clipboard
function lpp(){
  lpass show $1 --password | pbcopy
}
