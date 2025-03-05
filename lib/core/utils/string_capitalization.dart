extension StringCapitalization on String {
  String capitalize({
    bool capitalizeEachWord = false,
    bool preserveCase = false,
  }) {
    if (isEmpty) return this;

    String processWord(String word) {
      if (word.isEmpty) return word;
      return preserveCase 
          ? '${word[0].toUpperCase()}${word.substring(1)}'
          : '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
    }

    if (capitalizeEachWord) {
      return split(' ')
          .map((word) => processWord(word))
          .join(' ');
    }
    
    return processWord(this);
  }
}