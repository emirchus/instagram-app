import 'package:instagram/core/abstracts/server_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram/core/dtos/create_comment_dto.dart';
import 'package:instagram/core/dtos/create_post_dto.dart';
import 'package:instagram/core/dtos/update_post_dto.dart';

@Singleton(as: IServer)
class ServerLocal extends IServer {

  static Future<ServerLocal> asyncInit() async {
    //TODO: Init posts, comments, etc.

    return ServerLocal();
  }


  @override
  Future createComment({required CreateCommentDto dto}) {
    // TODO: implement createComment
    throw UnimplementedError();
  }

  @override
  Future createPost({required CreatePostDTO createPostDTO}) {
    // TODO: implement createPost
    throw UnimplementedError();
  }

  @override
  Future deleteComment({required String commentId}) {
    // TODO: implement deleteComment
    throw UnimplementedError();
  }

  @override
  Future deletePost({required String postId}) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future getPost({required String postId}) {
    // TODO: implement getPost
    throw UnimplementedError();
  }

  @override
  Future getPostComments({required String postId}) {
    // TODO: implement getPostComments
    throw UnimplementedError();
  }

  @override
  Future getPostLikes({required String postId}) {
    // TODO: implement getPostLikes
    throw UnimplementedError();
  }

  @override
  Future getPosts() {
    // TODO: implement getPosts
    throw UnimplementedError();
  }

  @override
  Future getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future getProfilePosts({required String userId}) {
    // TODO: implement getProfilePosts
    throw UnimplementedError();
  }

  @override
  Future toggleLikePost({required String postId}) {
    // TODO: implement toggleLikePost
    throw UnimplementedError();
  }

  @override
  Future updatePost({required String postId, required UpdatePostDTO createPostDTO}) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }
}
