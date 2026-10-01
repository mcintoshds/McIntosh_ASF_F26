const isPalindrome = require("./isPalindrome");

describe("isPalindrome", () => {
  describe("function requirements", () => {
    test("exists as a function", () => {
      expect(typeof isPalindrome).toBe("function");
    });

    test("declares exactly one parameter", () => {
      expect(isPalindrome.length).toBe(1);
    });
  });

  describe("invalid input types", () => {
    test.each([
      ["number", 121],
      ["empty array", []],
      ["array of letters", ["b", "o", "b"]],
      ["true", true],
      ["false", false],
      ["object", {}],
      ["null", null],
      ["undefined", undefined],
      ["boxed string object", new String("bob")],
      ["function", () => "bob"],
      ["symbol", Symbol("bob")],
      ["bigint", 121n],
    ])("returns false for %s", (label, input) => {
      expect(isPalindrome(input)).toBe(false);
    });

    test("returns false when no argument is provided", () => {
      expect(isPalindrome()).toBe(false);
    });
  });

  describe("basic words", () => {
    test.each(["bob", "racecar", "abba"])(
      "returns true for %s",
      (input) => {
        expect(isPalindrome(input)).toBe(true);
      }
    );

    test.each(["apple", "hello", "ab"])(
      "returns false for %s",
      (input) => {
        expect(isPalindrome(input)).toBe(false);
      }
    );
  });

  describe("capitalization, spaces, and punctuation", () => {
    test.each([
      "Racecar",
      "BOB",
      "race car",
      "Madam I'm Adam.",
      "Red rum, sir, is murder.",
      "A man, a plan, a canal - Panama!",
      "Never odd or even",
      "b_o_b",
      " r\ta\nc e c a r ",
    ])("returns true for %s", (input) => {
      expect(isPalindrome(input)).toBe(true);
    });

    test("still rejects a non-palindrome after cleaning", () => {
      expect(isPalindrome("Hello, world!")).toBe(false);
    });
  });

  describe("edge cases", () => {
    test("accepts a single character", () => {
      expect(isPalindrome("a")).toBe(true);
    });

    test.each(["", "   ", "!?.,"])(
      "treats an empty cleaned string as a palindrome: %p",
      (input) => {
        expect(isPalindrome(input)).toBe(true);
      }
    );

    test("accepts a palindrome made of digits in a string", () => {
      expect(isPalindrome("12321")).toBe(true);
    });

    test("rejects a non-palindrome made of digits in a string", () => {
      expect(isPalindrome("123")).toBe(false);
    });

    test("keeps digits when comparing letters and numbers", () => {
      expect(isPalindrome("a1")).toBe(false);
    });
  });
});
