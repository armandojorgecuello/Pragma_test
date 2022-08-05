class Image {
    Image({
        this.id,
        this.width,
        this.height,
        this.url,
    });

    String? id;
    int? width;
    int? height;
    String? url;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
    };
}