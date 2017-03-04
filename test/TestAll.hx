import utest.Runner;
import utest.ui.Report;

class TestAll {
  public static function addTests(runner : Runner) {
    runner.addCase(new thx.math.random.TestNativeRandom());
    runner.addCase(new thx.math.random.TestPseudoRandom());
    runner.addCase(new thx.math.random.TestRandomAbstract());
  }

  public static function main() {
    var runner = new Runner();
    addTests(runner);
    Report.create(runner);
    runner.run();

    trace(thx.math.Interval.dyadic(10, 2).toString());
  }
}
