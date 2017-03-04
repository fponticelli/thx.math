package thx.math.random;

import utest.Assert;
import thx.math.Const.*;

class TestRandomAbstract {
  public function new() { }

  public function testBetween() {
    var min: Random = new SequenceSeed(0),
        min1: Random = new SequenceSeed(1),
        max: Random = new SequenceSeed(INT32_MAX);
    Assert.equals(5, min.between(5, 15));
    Assert.equals(5, min1.between(5, 15));
    Assert.equals(15, max.between(5, 15));
  }

  public function testShuffle() {
    var arr = [1,2,3,4,5,6,7,8,9,10];
    var rand: Random = new FastRNGSeed(1);
    var shuffled = rand.shuffle(arr);
    Assert.same([1,2,6,9,8,7,3,10,4,5], shuffled);
  }
}
