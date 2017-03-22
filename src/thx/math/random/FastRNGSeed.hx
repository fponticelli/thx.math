package thx.math.random;

class FastRNGSeed implements Seed {
  public var seed(default, null): Int;
  public var int(get, null): Int;
  public var normalized(get, null): Float;

  public function new(seed: Int = 1)
    this.seed = seed;

  public function next()
    return new FastRNGSeed(Std.int((seed * 48271.0) % 2147483647.0));

  function get_int()
    return seed & 0x3FFFFFFF;

  function get_normalized()
    return seed / 2147483647.0;
}
