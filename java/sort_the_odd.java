// You have an array of numbers.
// Your task is to sort ascending odd numbers but even numbers must be on their places.
//
// Zero isn't an odd number and you don't need to move it. If you have an empty array, you need to return it.

import java.util.ArrayList;
import java.util.List;
import java.util.Arrays;
import java.util.Collections;

public class Kata {
  public static int[] sortArray(int[] array) {
    if (array.length == 0) return array;
    List<Integer> oddNum = new ArrayList<>();
    List<Integer> oddIndex = new ArrayList<>();
    for (int i = 0; i < array.length; i++) {
      if (array[i] % 2 != 0) {
        oddNum.add(array[i]);
        oddIndex.add(i);
      }
    }
    Collections.sort(oddNum);
     for (int i = 0; i < oddNum.size(); i++) {
       int oddNumber = (Integer) oddNum.get(i);
       int currentOddIndex = (Integer) oddIndex.get(i);
       array[currentOddIndex] = oddNumber;
     }
    return array;
  }
}

// import org.junit.Test;
// import static org.junit.Assert.assertArrayEquals;
// import org.junit.runners.JUnit4;
//
// public class SolutionTest {
//
//     @Test
//     public void exampleTest1() {
//         assertArrayEquals(new int[]{ 1, 3, 2, 8, 5, 4 }, Kata.sortArray(new int[]{ 5, 3, 2, 8, 1, 4 }));
//     }
//
//     @Test
//     public void exampleTest2() {
//         assertArrayEquals(new int[]{ 1, 3, 5, 8, 0 }, Kata.sortArray(new int[]{ 5, 3, 1, 8, 0 }));
//     }
//
//     @Test
//     public void exampleTest3() {
//         assertArrayEquals(new int[]{}, Kata.sortArray(new int[]{}));
//     }
// }
