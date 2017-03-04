package thx.math.random;

interface Seed {
  public var int(get, null): Int;
  // public var int64(get, null): haxe.Int64;
  public var normalized(get, null): Float;
  public function next(): Seed;
}
