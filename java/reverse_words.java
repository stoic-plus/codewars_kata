// Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.
//
// Examples
// "This is an example!" ==> "sihT si na !elpmaxe"
// "double  spaces"      ==> "elbuod  secaps"

import java.util.*;
import java.lang.*;

public class Kata
{
  public static String reverseWords(final String original)
  {
    if (original == "") return original;
    String[] split = original.split("");
    String returnStr = "";
    String currentWord = "";
    for (int i = 0; i < split.length; i++) {
      if (split[i].trim().isEmpty()) {
        String[] wordSplit = currentWord.split("");
        for (int j = wordSplit.length - 1; j >= 0; j--) {
          returnStr += wordSplit[j];
        }
        returnStr += " ";
        currentWord = "";
      } else {
        currentWord += split[i];
      }
    }
   String[] wordSplit = currentWord.split("");
      for (int j = wordSplit.length - 1; j >= 0; j--) {
        returnStr += wordSplit[j];
      }
    return returnStr;
  }
}

// import org.junit.Test;
// import static org.junit.Assert.assertEquals;
// import org.junit.runners.JUnit4;
//
// // TODO: Replace examples and use TDD development by writing your own tests
//
// public class SolutionTest {
//     @Test
//     public void exampleCases() {
//         assertEquals("ehT kciuq nworb xof spmuj revo eht yzal .god", Kata.reverseWords("The quick brown fox jumps over the lazy dog."));
//         assertEquals("elppa", Kata.reverseWords("apple"));
//         assertEquals("a b c d", Kata.reverseWords("a b c d"));
//         assertEquals("elbuod  decaps  sdrow", Kata.reverseWords("double  spaced  words"));
//     }
// }
