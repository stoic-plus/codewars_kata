// Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.
//
// Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).
//
// If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.
//
// Examples
// "is2 Thi1s T4est 3a"  -->  "Thi1s is2 3a T4est"
// "4of Fo1r pe6ople g3ood th5e the2"  -->  "Fo1r the2 g3ood 4of th5e pe6ople"
// ""  -->  ""

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Order {
  public static String order(String words) {
    if (words == "") return words;

    String[] split = words.split(" ");
    String[] sorted = new String[split.length];
    String pattern = "\\d";
    Pattern r = Pattern.compile(pattern);
    for (String x:split) {
      Matcher m = r.matcher(x);
      if (m.find()) {
        int indexofNum = m.start();
        int indexNum = Character.getNumericValue(x.charAt(indexofNum)) - 1;
        sorted[indexNum] = x;
      }
    }
    return String.join(" ", sorted);
  }
}

// import static org.junit.Assert.*;
// import org.junit.Test;
// import static org.hamcrest.CoreMatchers.*;
//
// public class OrderTest {
//   @Test
//   public void test1() {
//     assertThat(Order.order("is2 Thi1s T4est 3a"), equalTo("Thi1s is2 3a T4est"));
//   }
//
//   @Test
//   public void test2() {
//     assertThat(Order.order("4of Fo1r pe6ople g3ood th5e the2"), equalTo("Fo1r the2 g3ood 4of th5e pe6ople"));
//   }
//
//   @Test
//   public void test3() {
//     assertThat("Empty input should return empty string", Order.order(""), equalTo(""));
// 	}
// }
