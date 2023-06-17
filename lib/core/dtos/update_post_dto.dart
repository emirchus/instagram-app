// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:instagram/core/entities/media_entity.dart';

class UpdatePostDTO {
  /// The description of the post.
  /// It can be null. If it is null, the property will not be updated.
  /// If it is an empty string, the description will be removed.
  final String? description;

  /// The media of the post.
  /// It can be null or empty. If it is null, the property will not be updated.
  /// If it is empty, the media will not be updated.
  final List<MediaEntity>? media;

  UpdatePostDTO({
    this.description,
    this.media,
  });

  UpdatePostDTO copyWith({
    String? description,
    List<MediaEntity>? media,
  }) {
    return UpdatePostDTO(
      description: description ?? this.description,
      media: media ?? this.media,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'media': media?.map((x) => x.toMap()).toList(),
    };
  }

  factory UpdatePostDTO.fromMap(Map<String, dynamic> map) {
    return UpdatePostDTO(
      description: map['description'] != null ? map['description'] as String : null,
      media: List<MediaEntity>.from(
        (map['media'] as List<int>).map<MediaEntity>(
          (x) => MediaEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory UpdatePostDTO.fromJson(String source) => UpdatePostDTO.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CreatePostDTO(description: $description, media: $media)';

  @override
  bool operator ==(covariant UpdatePostDTO other) {
    if (identical(this, other)) return true;

    return other.description == description && listEquals(other.media, media);
  }

  @override
  int get hashCode => description.hashCode ^ media.hashCode;
}
