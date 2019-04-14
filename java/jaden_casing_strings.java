public class JadenCase {

	public String toJadenCase(String phrase) {
    if (phrase == null || phrase == "") { return null; }
    String[] phArray = phrase.split(" ");
    String[] jArray = new String[phArray.length];

    for (int i = 0; i < phArray.length; i++) {
      char firstChar = Character.toUpperCase(phArray[i].charAt(0));
      if (phArray[i].length() > 1) {
        jArray[i] = firstChar + phArray[i].substring(1);
      } else {
        jArray[i] = firstChar + "";
      }
    }
    String finalR = String.join(" ", jArray);
		return finalR;
	}

}

// public class JadenCaseTest {
//
//
// 	JadenCase jadenCase = new JadenCase();
//
// 	@Test
// 	public void test() {
// 		assertEquals("toJadenCase doesn't return a valide JadenCase String! try again please :)", "Most Trees A Blue", jadenCase.toJadenCase("most trees a blue"));
// 	}
//
// 	@Test
// 	public void testNullArg() {
// 		assertNull("Must return null when the arg is null", jadenCase.toJadenCase(null));
// 	}
//
// 	@Test
// 	public void testEmptyArg() {
// 		assertNull("Must return null when the arg is empty string", jadenCase.toJadenCase(""));
// 	}
//
// }
