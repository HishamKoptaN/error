import 'custom_exceptions.dart';
import '../firebase/firebase_failures.dart';

FirebaseFailure mapExceptionToFailure(Exception e) {
  if (e is OfflineException) return const FirebaseFailure.offline();
  if (e is ServerException) return const FirebaseFailure.server();
  if (e is WeakPasswordException) return const FirebaseFailure.weakPassword();
  if (e is AccountAlreadyExistsException) {
    return const FirebaseFailure.accountAlreadyExists();
  }
  if (e is NoUserException) return const FirebaseFailure.noUser();
  if (e is WrongPasswordException) return const FirebaseFailure.wrongPassword();
  if (e is TooManyRequestsException) {
    return const FirebaseFailure.tooManyRequests();
  }
  return const FirebaseFailure.server();
}
