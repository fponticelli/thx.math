package thx.math.random;

import utest.Assert;
using thx.Arrays;

class TestNativeRandom {
  public function new() { }

  public function testIntBoundaries() {
    var seed = NativeSeed.create();
    var buff = [for(i in 0...1000) {
      seed = seed.next();
      seed.int;
    }];

    Assert.equals(1000, buff.distinct().length);
  }

  public function testFloatBoundaries() {
    var seed = NativeSeed.create();

    for(i in 0...1000) {
      seed = seed.next();
      var v = seed.normalized;
      Assert.isTrue(v >= 0 && v <= 1.0, 'expected value to be between 0 and 1, but is $v');
    }
  }
}
