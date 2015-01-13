package thx.math.random;

using thx.core.Ints;

class BaseRandom implements IRandom {
  public function int() : Int
    return throw 'not implemented: BaseRandom.int()';

  public function float() : Float
    return throw 'not implemented: BaseRandom.float()';

  public function random(min : Int, max : Int) : Int
    return Math.round(float() * (1 + max - min)) + min;

  public function shuffle<T>(arr : Array<T>) : Array<T> {
    var t = arr.length.range(),
        array = [];
    while (t.length > 0) {
      var pos = random(0, t.length - 2),
          index = t[pos];
      t.splice(pos, 1);
      array.push(arr[index]);
    }
    return array;
  }
}