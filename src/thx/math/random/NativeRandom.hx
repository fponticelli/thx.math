package thx.math.random;

class NativeRandom {
  public function new() { }

  public inline function int() : Int
    return Std.random(0x7FFFFFFF);

  public inline function float() : Float
    return Math.random();
}