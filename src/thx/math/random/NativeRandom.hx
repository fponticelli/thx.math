package thx.math.random;

class NativeRandom extends BaseRandom {
  public function new() { }

  override public function int() : Int
    return Std.random(0x7FFFFFFF);

  override public function float() : Float
    return Math.random();
}