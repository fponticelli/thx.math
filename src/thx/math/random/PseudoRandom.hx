package thx.math.random;

class PseudoRandom {
  public var seed : Int;

  public function new(seed = 1)
    this.seed = seed;

  public function int() : Int
    return (seed = Std.int((seed * 48271.0) % 2147483647.0)) & 0x3FFFFFFF;

  public function float() : Float
    return int() / 1073741823.0; // divided by 2^30-1
}