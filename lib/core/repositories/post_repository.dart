import 'package:either_dart/either.dart';
import 'package:instagram/core/abstracts/server_interface.dart';
import 'package:instagram/core/entities/media_entity.dart';
import 'package:instagram/core/entities/post_entity.dart';

abstract class PostRepository {
  /// [IServer] is an abstract class that contains all the methods that are used to communicate with the server.
  final IServer serverApi;

  PostRepository(this.serverApi);

  /// Create a post with the given [description] and [mediaEntities].
  /// It returns a [PostEntity] if the post is created successfully.
  /// Otherwise, it returns an error message.
  Future<Either<String, PostEntity>> createPost(({String description, List<MediaEntity> mediaEntities}) post);

  /// Get a post with the given [id].
  /// It returns a [PostEntity] if the post is found.
  /// Otherwise, it returns an error message.
  Future<Either<String, PostEntity>> getPost({required String id});

  /// Get all posts.
  /// It returns a list of [PostEntity] if the posts are found.
  /// Otherwise, it returns an error message.
  Future<Either<String, List<PostEntity>>> getPosts();

  /// Update a post with the given [postId], [description] and [mediaEntities].
  /// It returns a [PostEntity] if the post is updated successfully.
  /// Otherwise, it returns an error message.
  Future<Either<String, PostEntity>> updatePost(String postId, ({String? description, List<MediaEntity>? mediaEntities}) post);

  /// Delete a post with the given [id].
  /// IT returns [Right] void if the post is deleted successfully.
  /// Otherwise, it returns an error message.
  Future<Either<String, void>> deletePost({required String id});
}
