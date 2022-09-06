class Neenga {
  //properties
  String message;
  String tag;
  String imageUrl;

  Neenga({
    this.message = "",
    this.tag = "",
    this.imageUrl = "",
  });

  factory Neenga.fromJson(Map<String, dynamic> data) {
    return Neenga(
      imageUrl: data['imageUrl'],
      tag: data['tag'],
      message: data['message'],
    );
  }
}
