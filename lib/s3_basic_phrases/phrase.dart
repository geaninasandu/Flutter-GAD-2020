class Phrase {
  Phrase({this.englishPhrase, this.frenchPhrase}) {
    englishSound = getAudioFileName(englishPhrase);
    frenchSound = getAudioFileName(frenchPhrase);
  }

  String englishPhrase, frenchPhrase, englishSound, frenchSound;

  String getAudioFileName(String phrase) {
    return phrase.toLowerCase().replaceAll(' ', '-').replaceAll('?', '').replaceAll('é', 'e').replaceAll('ç', 'c') +
        '.mp3';
  }
}
