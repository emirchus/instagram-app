import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram/core/abstracts/server_interface.dart';
import 'package:instagram/core/entities/media_entity.dart';
import 'package:instagram/core/entities/post_entity.dart';
import 'package:instagram/core/repositories/post_repository.dart';

@Singleton(as: PostRepository)
class PostService extends PostRepository {

  PostService(super.serverApi);

  @override
  Future<Either<String, PostEntity>> createPost(({String description, List<MediaEntity> mediaEntities}) post) {
    // TODO: implement createPost
    throw UnimplementedError();
  }

  @override
  Future<Either<String, void>> deletePost({required String id}) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future<Either<String, PostEntity>> getPost({required String id}) {
    // TODO: implement getPost
    throw UnimplementedError();
  }

  @override
  Future<Either<String, List<PostEntity>>> getPosts() {
    // TODO: implement getPosts
    throw UnimplementedError();
  }

  @override
  // TODO: implement serverApi
  IServer get serverApi => throw UnimplementedError();

  @override
  Future<Either<String, PostEntity>> updatePost(String postId, ({String? description, List<MediaEntity>? mediaEntities}) post) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }
}
