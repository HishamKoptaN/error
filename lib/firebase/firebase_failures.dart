import 'package:freezed_annotation/freezed_annotation.dart';
part 'firebase_failures.freezed.dart';

@freezed
class FirebaseFailure with _$FirebaseFailure {
  const factory FirebaseFailure.offline() = OfflineFailure;
  const factory FirebaseFailure.server() = ServerFailure;
  const factory FirebaseFailure.weekPass() = WeekPassFailure;
  const factory FirebaseFailure.weakPassword() = WeakPasswordFailure;
  const factory FirebaseFailure.accountAlreadyExists() =
      AccountAlreadyExistsFailure;
  const factory FirebaseFailure.existedAccount() = ExistedAccountFailure;
  const factory FirebaseFailure.noUser() = NoUserFailure;
  const factory FirebaseFailure.wrongPassword() = WrongPasswordFailure;
  const factory FirebaseFailure.unmatchedPass() = UnmatchedPassFailure;
  const factory FirebaseFailure.notLoggedIn() = NotLoggedInFailure;
  const factory FirebaseFailure.emailNotVerified() = EmailVerifiedFailure;
  const factory FirebaseFailure.tooManyRequests() = TooManyRequestsFailure;
}
