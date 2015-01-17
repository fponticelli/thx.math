package thx.math.random;

class NativeRandom {
  public function new() { }

  public function int() : Int
    return Std.random(0x7FFFFFFF);

  public function float() : Float
    return Math.random();
}