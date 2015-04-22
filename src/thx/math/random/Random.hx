package thx.math.random;

using thx.Ints;

@:forward(int,float)
abstract Random(TRandom) from TRandom to TRandom {
  public function lessThan(max : Int) {
    return Std.int(max * this.float());
  }

  public function between(min : Int, max : Int) : Int
    return Math.floor(this.float() * (1 + max - min)) + min;

  public function shuffle<T>(arr : Array<T>) : Array<T> {
    var t = arr.length.range(),
        array = [];
    while (t.length > 0) {
      var pos = lessThan(t.length),
          index = t[pos];
      t.splice(pos, 1);
      array.push(arr[index]);
    }
    return array;
  }
}

typedef TRandom = {
  public function int() : Int;
  public function float() : Float;
}