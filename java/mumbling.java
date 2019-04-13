accum("abcd") -> "A-Bb-Ccc-Dddd"
accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt") -> "C-Ww-Aaa-Tttt"

public class Accumul {

    public static String accum(String s) {
      String[] split = s.split("");
      String finalS = "";
      for (int i = 0; i < split.length; i++) {
        finalS += split[i].toUpperCase();
        if (i != 0) {
          finalS += split[i].toLowerCase().repeat(i);
        }
        if (i < split.length - 1) {
          finalS += "-";
        }
      }
      return finalS;
    }
}

// public class AccumulTest {
//
//     private static void testing(String actual, String expected) {
//         assertEquals(expected, actual);
//     }
//     @Test
//     public void test() {
//         System.out.println("Fixed Tests accum");
//         testing(Accumul.accum("ZpglnRxqenU"), "Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu");
//         testing(Accumul.accum("NyffsGeyylB"), "N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb");
//         testing(Accumul.accum("MjtkuBovqrU"), "M-Jj-Ttt-Kkkk-Uuuuu-Bbbbbb-Ooooooo-Vvvvvvvv-Qqqqqqqqq-Rrrrrrrrrr-Uuuuuuuuuuu");
//         testing(Accumul.accum("EvidjUnokmM"), "E-Vv-Iii-Dddd-Jjjjj-Uuuuuu-Nnnnnnn-Oooooooo-Kkkkkkkkk-Mmmmmmmmmm-Mmmmmmmmmmm");
//         testing(Accumul.accum("HbideVbxncC"), "H-Bb-Iii-Dddd-Eeeee-Vvvvvv-Bbbbbbb-Xxxxxxxx-Nnnnnnnnn-Cccccccccc-Ccccccccccc");
//     }
// }
