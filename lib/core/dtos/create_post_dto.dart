// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:instagram/core/entities/media_entity.dart';

class CreatePostDTO {
  /// The description of the post.
  /// It can be null. If it is null, the post will not have a description.
  final String? description;

  /// The media of the post.
  /// It can't be null or empty. If it is empty, the post will not post.
  final List<MediaEntity> media;

  CreatePostDTO({
    this.description,
    required this.media,
  });

  CreatePostDTO copyWith({
    String? description,
    List<MediaEntity>? media,
  }) {
    return CreatePostDTO(
      description: description ?? this.description,
      media: media ?? this.media,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'media': media.map((x) => x.toMap()).toList(),
    };
  }

  factory CreatePostDTO.fromMap(Map<String, dynamic> map) {
    return CreatePostDTO(
      description: map['description'] != null ? map['description'] as String : null,
      media: List<MediaEntity>.from(
        (map['media'] as List<int>).map<MediaEntity>(
          (x) => MediaEntity.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CreatePostDTO.fromJson(String source) => CreatePostDTO.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CreatePostDTO(description: $description, media: $media)';

  @override
  bool operator ==(covariant CreatePostDTO other) {
    if (identical(this, other)) return true;

    return other.description == description && listEquals(other.media, media);
  }

  @override
  int get hashCode => description.hashCode ^ media.hashCode;
}
