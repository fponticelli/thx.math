package thx.math.random;

/**
 *  An implementation of Seed that uses the native Math.random feature that
 *  comes with each target. `next()` generates a new value that has no
 *  relationship with the previous one so the sequence generated are not
 *  predictably repeateable.
 */

class NativeSeed extends NormalizedSeed {
  public static function create()
    return new NativeSeed(Math.random());

  override public function next()
    return new NativeSeed(Math.random());
}
