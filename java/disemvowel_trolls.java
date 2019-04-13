// Trolls are attacking your comment section!
//
// A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.
//
// Your task is to write a function that takes a string and return a new string with all vowels removed.
//
// For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
//
// Note: for this kata y isn't considered a vowel


import java.util.ArrayList;

public class Troll {
    public static boolean checkIsVowel(String str) {
      String[] vowels = new String[]{"a", "e", "i", "o", "u"};
      for (String x:vowels)
        {
            if (x.equals(str)) {
              return true;
            }
        }
      return false;
    }

    public static String disemvowel(String str) {
        ArrayList<String> nonV = new ArrayList<String>();
        String[] current = str.split("");
        for (String x:current) {
          if (!checkIsVowel(x.toLowerCase())) {
            nonV.add(x);
          }
        }
        String finalStr = "";
        for (String x:nonV) {
          finalStr += x;
        }
        return finalStr;
    }
}
