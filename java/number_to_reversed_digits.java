// You have to return the digits of this number within an array in reverse order.
//
// Example:
// 348597 => [7,9,5,8,4,3]

public class Kata {
  public static int[] digitize(long n) {
    String[] original = Long.toString(n).split("");
    int[] reversed = new int[original.length];
    int index = 0;
    for (int i = original.length - 1; i >= 0; i--) {
      reversed[index] = Integer.parseInt(original[i]);
      index++;
    }
    return reversed;
  }

}
