enum MediaType {
  image,
  video;

  static MediaType fromMap(String value) {
    return MediaType.values.firstWhere((element) => element.toString() == value);
  }
}
