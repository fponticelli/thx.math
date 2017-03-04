package thx.math.random;

import thx.math.Const.*;

/**
 *  Base class for Seed implementations that use a `Float` as the seed seed.
 */
class NormalizedSeed implements Seed {
  public var int(get, null): Int;
  public var normalized(get, null): Float;

  var seed: Float;
  function new(seed: Float)
    this.seed = seed;

  public function next()
    return throw new thx.error.AbstractMethod();

  function get_int()
    return Math.round((2 * seed - 1) * INT32_MAX);

  function get_normalized(): Float
    return seed;
}
