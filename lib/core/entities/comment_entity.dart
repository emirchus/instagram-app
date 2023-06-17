// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:instagram/core/entities/user_entity.dart';

class CommentEntity {
  final String id;
  final UserEntity author;
  final String text;
  final DateTime createdAt;
  final int likes;
  final int replies;

  CommentEntity({
    required this.id,
    required this.author,
    required this.text,
    required this.createdAt,
    required this.likes,
    required this.replies,
  });

  CommentEntity copyWith({
    String? id,
    UserEntity? author,
    String? text,
    DateTime? createdAt,
    int? likes,
    int? replies,
  }) {
    return CommentEntity(
      id: id ?? this.id,
      author: author ?? this.author,
      text: text ?? this.text,
      createdAt: createdAt ?? this.createdAt,
      likes: likes ?? this.likes,
      replies: replies ?? this.replies,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'author': author.toMap(),
      'text': text,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'likes': likes,
      'replies': replies,
    };
  }

  factory CommentEntity.fromMap(Map<String, dynamic> map) {
    return CommentEntity(
      id: map['id'] as String,
      author: UserEntity.fromMap(map['author'] as Map<String, dynamic>),
      text: map['text'] as String,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      likes: map['likes'] as int,
      replies: map['replies'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CommentEntity.fromJson(String source) => CommentEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CommentEntity(id: $id, author: $author, text: $text, createdAt: $createdAt, likes: $likes, replies: $replies)';
  }

  @override
  bool operator ==(covariant CommentEntity other) {
    if (identical(this, other)) return true;

    return other.id == id && other.author == author && other.text == text && other.createdAt == createdAt && other.likes == likes && other.replies == replies;
  }

  @override
  int get hashCode {
    return id.hashCode ^ author.hashCode ^ text.hashCode ^ createdAt.hashCode ^ likes.hashCode ^ replies.hashCode;
  }
}
