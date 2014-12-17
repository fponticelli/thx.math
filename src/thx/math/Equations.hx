package thx.math;

class Equations {
  public static function back(t : Float, ?s : Float) : Float {
    if (null == s) s = 1.70158;
    return t * t * ((s + 1) * t - s);
  }

  public static function bounce(t : Float) : Float {
    return t < 1 / 2.75 ? 7.5625 * t * t
        : t < 2 / 2.75 ? 7.5625 * (t -= 1.5 / 2.75) * t + .75
        : t < 2.5 / 2.75 ? 7.5625 * (t -= 2.25 / 2.75) * t + .9375
        : 7.5625 * (t -= 2.625 / 2.75) * t + .984375;
  }

  public static function circle(t : Float) : Float
    return 1 - Math.sqrt(1 - t * t);

  public static function cos(t : Float) : Float
    return Math.cos(t * Const.HALF_PI);

  public static function cos2PI(t : Float) : Float
    return Math.cos(t * Const.TWO_PI);

  public static function cosPI(t : Float) : Float
    return Math.cos(t * Const.PI);

  inline public static function cubic(t : Float) : Float
    return polynomial(t, 3);

  inline public static function easeIn(t : Float, f : Float -> Float) : Float
    return f(t);

  inline public static function easeOut(t : Float, f : Float -> Float) : Float
    return 1 - f(1 - t);

  inline public static function easeInOut(t : Float, f : Float -> Float) : Float
    return 0.5 * (t < 0.5 ? f(2 * t) : (2 - f(2 - 2 * t)));

  inline public static function easeOutIn(t : Float, f : Float -> Float) : Float
    return 1 - easeInOut(1 - t, f);

  public static function elastic(t : Float, ?a : Float, ?p : Float) : Float {
    var s;
    if (null == p)
      p = 0.45;
    if (null == a) {
      a = 1;
      s = p / 4;
    } else {
      s = p / (2 * Math.PI) / Math.asin(1 / a);
    }
    return 1 + a * Math.pow(2, 10 * -t) * Math.sin((t - s) * 2 * Math.PI / p);
  }

  public static function exponential(t : Float) : Float
    return t != 0 ? Math.pow(2, 10 * (t - 1)) - 1e-3 : 0;

  public static function linear(t : Float) : Float
    return t;

  inline public static function polynomial(t : Float, e : Float) : Float
    return Math.pow(t, e);

  inline public static function quadratic(t : Float) : Float
    return polynomial(t, 2);

  inline public static function quart(t : Float) : Float
    return polynomial(t, 4);

  inline public static function quint(t : Float) : Float
    return polynomial(t, 5);

  public static function sin(t : Float) : Float
    return Math.sin(t * Const.HALF_PI);

  public static function sin2PI(t : Float) : Float
    return Math.sin(t * Const.TWO_PI);

  public static function sinPI(t : Float) : Float
    return Math.sin(t * Const.PI);
}