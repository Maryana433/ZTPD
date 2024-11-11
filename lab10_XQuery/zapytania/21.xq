for $play in collection("db/shakespeare")//PLAY
  let $lines := $play//LINE
  where some $line in $lines satisfies contains($line, "or not to be")
  return
    $play/TITLE






