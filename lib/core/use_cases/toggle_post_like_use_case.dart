import 'package:either_dart/either.dart';

abstract class TogglePostLikeUseCase {
  /// Toggle like a post with the given [postId].
  /// It returns [Right] void if the post is liked successfully.
  /// Otherwise, it returns an error message.
  Future<Either<String, void>> call(String postId);
}
