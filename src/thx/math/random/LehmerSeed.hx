package thx.math.random;

using haxe.Int64;
import thx.math.Const.*;

class LehmerSeed implements Seed {
  public static inline var MINSTD_RAND = 48271;
  public static function std(seed: Int)
    return create(seed, INT32_MAX, MINSTD_RAND);

  public static function create(seed: Int, n: Int, g: Int)
    return new LehmerSeed(seed, Int64.ofInt(n), Int64.ofInt(g));

  public var x(default, null): Int;
  public var n(default, null): Int64;
  public var g(default, null): Int64;

  public var int(get, null): Int;
  public var normalized(get, null): Float;

  function new(x: Int, n: Int64, g: Int64) {
    this.x = x;
    this.n = n;
    this.g = g;
  }

  public function next()
    return new LehmerSeed(
      Int64.ofInt(x).mul(g).mod(n).toInt(),
      n, g
    );

  function get_int()
    return x;

  function get_normalized()
    return x / n.toInt();
}
