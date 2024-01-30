class CustomError extends Error {
  CustomError({this.code, this.message});
  final String? code;
  final String? message;

  @override
  String toString() => 'HtpCustomError(message: $message)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CustomError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
