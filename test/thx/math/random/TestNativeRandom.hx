package thx.math.random;

import utest.Assert;

class TestNativeRandom {
  public function new() { }

  public function testIntBoundaries() {
    var random = new NativeRandom();

    for(i in 0...1000) {
      var v = random.int();
      Assert.isTrue(v >= 0 && v <= 0x7FFFFFFF, 'expected value to be between 0 and 0x7FFFFFFF, but is $i');
    }
  }

  public function testFloatBoundaries() {
    var random = new NativeRandom();

    for(i in 0...1000) {
      var v = random.float();
      Assert.isTrue(v >= 0 && v <= 1.0, 'expected value to be between 0 and 1, but is $i');
    }
  }
}