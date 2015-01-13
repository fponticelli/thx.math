package thx.math.random;

interface IRandom {
  public function int() : Int;
  public function float() : Float;
  public function random(min : Int, max : Int) : Int;
  public function shuffle<T>(arr : Array<T>) : Array<T>;
}