function isPalindrome(input) {
  if (typeof input !== "string") {
    return false;
  }

  const lowercase = input.toLowerCase();
  const cleaned = lowercase.replace(/[^a-z0-9]/g, "");
  const reversed = cleaned.split("").reverse().join("");
  return cleaned === reversed;
}

module.exports = isPalindrome;