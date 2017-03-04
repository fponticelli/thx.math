package thx.math.random;

import utest.Assert;

class TestPseudoRandom {
  public function new() { }

  public function testSequence1() {
    var expected = [48271,182605794,217653062,840978813,1004927217,407355683,32160337,854716505,564586691,522939007,192302371,129686383,176586923,664789325,197394089,25152515,808815145,1063185970,485785999,1002040271,638022372,914937185,857914756,328562263,862288313,991134804,353718330,768771956,873692051,631416347,936825989,890442452,662405787,31982270,849178936,622307543,406178052,95075117,198443203,201068705,235116438,928270262,213780523,740726033,1057382352,585933319,153892771,412013968,480194461,602083036,180318217,389431516,250604821,169955075,513917920,674592135,942409124,884730203,878082947,1057217933,165480670,352020689,426321831,719080959,978785428,163677341,276590098,374787159,948709761,80100956,8940652,1003765604,169685246,373904143,200599677,143244144,714473507,837051536,409875951,355190910,984720785,1053994172,243877847,795941506,262531784,370768652,244910729,188346959,324062450,547639202,641966995,199813570,851802928,583514338,425095546,580853881,851194519,206008598,318006624,284662483,268625699,324855843,190807059,963924829,87265245,91491940,107315684,504849935,1040552188,999647265,15580725,477900025,442770701,153511203,246980175,224561104,365367087,425205589,524054552,353659755,88805914,372915282,785648268,540080431,844776180,697753720,136322707,543519324,413597540,685153140,705315316,69903233,602174841,316870078,183259380,628414122,971593322,885903564,609099268,632178686,154752171,20204387,328389139,21588338,561118938,634782546,217860746,128674942,745442293,8960406,883569114,665754786,630239474,1036330187,136665771,997410180,477198999,963283007,244364229,651791047,896459363,120706635,506843774,648366306,937051507,1038979459,244397486,109656047,733596705,514973984,112225815,224840443,964413938,74725667,383910756,45971089,719853903,708625565,945118699,682122561,445124403,1026193113,436238233,504844484,777426967,974134555,73452005,106232158,815291605,155774168,1034639516,130664516,147380597,669217099,255849967,1029044983,659901595,484956294,679773550,872671849];

    var random = new FastRNGSeed(1);

    for(e in expected) {
      random = random.next();
      Assert.equals(e, random.int);
    }
  }

  public function testSequence2() {
    var expected = [37506567,150781236,538963273,605509401,218142313,835269582,292520297,542277462,597194919,449199544,168828800,908330394,842827975,71488810,903868604,216151720,310401306,388036807,572341563,122468918,748402410,89105588,879835230,816066570,1056863549,238855647,1034977417,335356334,253891563,984230103,990579332,384050870,366963042,154162238,534553643,349140724,993992507,858922299,645288359,537819377,149362719,785230005,751225940,18510633,173592526,3656087,389340658,159789733,522683442,740826138,520817554,866835528,372676252,1058591196,956007710,172079027,1033707544,240600691,444392285,45839352,803203982,789652184,539581437,380156923,307066518,475758784,162141446,225588374,560593376,1035158872,504436051,389310447,848934063,613227154,173384621,705292067,21392578,775240254,646034171,31688430,623872001,762202525,514526183,1045002038,1049991915,324434294,243334062,316699535,540936951,313897848,592149399,636321694,425912168,271591109,660499427,351899667,1026919810,81148944,130527831,1065675862,416254364,83661488,80713200,571541542,159360873,222277029,706166447,352634306,1055198804,410586514,295063266,887390317,435451157,92862711,777551392,537802789,422385195,746003227,242235797,989465031,282718474,918623592,563348488,883184110,334837701,988761784,696045024,333978501,316483742,861787147,421670935,627721254,812158623,321173024,658617946,798985313,87509662,78560753,823729284,502826071,1057094847,666423170,681548833,668011662,50234873,378541255,700333741,122440737,461819183,519784909,412176750,821651618,69800170,995929886,962605364,819855505,342693115,72845459,892445385,709244650,764223811,373516750,828104997,195704929,92064606,906930583,918286074,377144462,921473718,702827226,226370940,754848804,951579235,79785178,872172302,286056366,980734799,846250373,991563672,654510911,116794352,635616152,728432638,348398879,617848552,988305879,163891239,938008180,1047643432,777444692,756020342,594597523,698090578,290643737,153187011,704035495,568689505,1001402213,976813400,534936044];
    var random = new FastRNGSeed(777);

    for(e in expected) {
      random = random.next();
      Assert.equals(e, random.int);
    }
  }
}
