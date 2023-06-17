// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CreateCommentDto {
  /// The id of the post to comment on
  String postId;

  /// The comment to post
  /// It can't be null or empty. If it is empty, the comment will not post.
  String comment;

  CreateCommentDto({
    required this.postId,
    required this.comment,
  });

  CreateCommentDto copyWith({
    String? postId,
    String? comment,
  }) {
    return CreateCommentDto(
      postId: postId ?? this.postId,
      comment: comment ?? this.comment,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postId': postId,
      'comment': comment,
    };
  }

  factory CreateCommentDto.fromMap(Map<String, dynamic> map) {
    return CreateCommentDto(
      postId: map['postId'] as String,
      comment: map['comment'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateCommentDto.fromJson(String source) => CreateCommentDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CreateCommentDto(postId: $postId, comment: $comment)';

  @override
  bool operator ==(covariant CreateCommentDto other) {
    if (identical(this, other)) return true;

    return other.postId == postId && other.comment == comment;
  }

  @override
  int get hashCode => postId.hashCode ^ comment.hashCode;
}
