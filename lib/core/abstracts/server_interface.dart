import 'package:instagram/core/dtos/create_comment_dto.dart';
import 'package:instagram/core/dtos/create_post_dto.dart';
import 'package:instagram/core/dtos/update_post_dto.dart';

abstract class IServer {
  /// Post Methods
  Future<dynamic> getPosts();
  Future<dynamic> createPost({required CreatePostDTO createPostDTO});
  Future<dynamic> updatePost({required String postId, required UpdatePostDTO createPostDTO});
  Future<dynamic> getPost({required String postId});
  Future<dynamic> deletePost({required String postId});

  /// Like methods
  Future<dynamic> toggleLikePost({required String postId});
  Future<dynamic> getPostLikes({required String postId});

  /// Comment methods
  Future<dynamic> createComment({required CreateCommentDto dto});
  Future<dynamic> deleteComment({required String commentId});
  Future<dynamic> getPostComments({required String postId});

  /// Profile methods
  Future<dynamic> getProfile();
  Future<dynamic> getProfilePosts({required String userId});
}
