package thx.math.random;

using thx.Arrays;
using thx.Floats;

@:forward(int,normalized)
abstract Random(Seed) from Seed to Seed {
  inline public function between(min : Int, max : Int) : Int {
    this = this.next();
    return Math.round(this.normalized * (max - min)) + min;
  }

  inline public function betweenf(min : Float, max : Float) : Float {
    this = this.next();
    return this.normalized * (max - min) + min;
  }

  inline public function bool() : Bool {
    this = this.next();
    return this.int % 2 == 0;
  }

  inline public function shuffle<T>(arr : Array<T>) : Array<T> {
    var pos = [];
    for(i in 0...arr.length) {
      this = this.next();
      pos.push(this.normalized);
    }
    var ranked = pos.rank(Floats.compare);
    return arr.applyIndexes(ranked);
  }
}
