<wynik>
{
  for $play in collection("db/shakespeare")//PLAY
  let $characters := count($play//PERSONA)
  let $acts := count($play//ACT)
  let $scenes := count($play//SCENE)
  return
    <sztuka tytul="{ $play/TITLE }">
      <postaci>{ $characters }</postaci>
      <aktow>{ $acts }</aktow>
      <scen>{ $scenes }</scen>
    </sztuka>
}
</wynik>
