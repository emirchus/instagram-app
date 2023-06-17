// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:instagram/core/enums/media_type_enum.dart';

class MediaEntity {
  final String url;
  final MediaType type;
  final String? caption;

  MediaEntity({
    required this.url,
    required this.type,
    this.caption,
  });

  MediaEntity copyWith({
    String? url,
    MediaType? type,
    String? caption,
  }) {
    return MediaEntity(
      url: url ?? this.url,
      type: type ?? this.type,
      caption: caption ?? this.caption,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'type': type.name,
      'caption': caption,
    };
  }

  factory MediaEntity.fromMap(Map<String, dynamic> map) {
    return MediaEntity(
      url: map['url'] as String,
      type: MediaType.fromMap(map['type']),
      caption: map['caption'] != null ? map['caption'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MediaEntity.fromJson(String source) => MediaEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'MediaEntity(url: $url, type: $type, caption: $caption)';

  @override
  bool operator ==(covariant MediaEntity other) {
    if (identical(this, other)) return true;

    return other.url == url && other.type == type && other.caption == caption;
  }

  @override
  int get hashCode => url.hashCode ^ type.hashCode ^ caption.hashCode;
}
