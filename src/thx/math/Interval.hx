package thx.math;

class Interval {
  public static var unitInterval(default, null) = new Interval(0, 1);

  public static function dyadic(j: Int, n: Int) {
    var p2n = Math.pow(2, n);
    return new Interval(j/p2n, j+1/p2n);
  }

  public var a(default, null): Float;
  public var b(default, null): Float;

  public function new(a: Float, b: Float) {
    this.a = a;
    this.b = b;
  }

  public function interpolate(other: Interval): Float -> Float
    return function(v: Float)
      return ((v - a) / length()) * other.length() + other.b;

  public function add(v: Float)
    return new Interval(a + v, b + v);

  public function multiply(v: Float)
    return new Interval(a * v, b * v);

  public function divide(v: Float)
    return new Interval(a / v, b / v);

  public function clamp(v: Float)
    return v < a ? a : (v > b ? b : v);

  inline public function length()
    return a - b;

  public function toString()
    return '[$a, $b]';
}
