// Count the number of Duplicates
// Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
//
// Example
// "abcde" -> 0 # no characters repeats more than once
// "aabbcde" -> 2 # 'a' and 'b'
// "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
// "indivisibility" -> 1 # 'i' occurs six times
// "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
// "aA11" -> 2 # 'a' and '1'
// "ABBA" -> 2 # 'A' and 'B' each occur twice

function duplicateCount(text){
  seen = {};
  counter = 0;
  text.split("").forEach((char) => {
    char = char.toLowerCase();
    if (seen[char]) {
      if (seen[char] == 1) {
        counter += 1;
      }
      seen[char] += 1;
    } else {
      seen[char] = 1;
    }
  });
  return counter;
}


function duplicateCount(text){
  seen = [];
  count = 0;
  console.log(text);
  text.split("").forEach((char) => {
    char = char.toLowerCase();
    if (seen.indexOf(char) !== -1) {
      if ((seen.filter(seen_char => seen_char === char)).length === 1) {
        count += 1
      }
    }
    seen.push(char);
  });
  return count;
}

// Test.assertEquals(duplicateCount(""), 0);
// Test.assertEquals(duplicateCount("abcde"), 0);
// Test.assertEquals(duplicateCount("aabbcde"), 2);
// Test.assertEquals(duplicateCount("aabBcde"), 2,"should ignore case");
// Test.assertEquals(duplicateCount("Indivisibility"), 1)
// Test.assertEquals(duplicateCount("Indivisibilities"), 2, "characters may not be adjacent")
