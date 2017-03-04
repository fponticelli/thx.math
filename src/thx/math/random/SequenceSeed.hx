package thx.math.random;

import thx.math.Const.*;

class SequenceSeed implements Seed {
  public var seed(default, null): Int;
  public var int(get, null): Int;
  public var normalized(get, null): Float;

  public function new(seed: Int)
    this.seed = seed;

  public function next()
    return new SequenceSeed(seed + 1);

  function get_int()
    return seed;

  function get_normalized()
    return seed / INT32_MAX;
}
