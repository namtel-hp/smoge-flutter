abstract class ApiError {
  final _message;

  ApiError(this._message);

  @override
  String toString() {
    return "$_message";
  }
}

class FetchDataError extends ApiError {
  FetchDataError([message = "Communication error"]) : super(message);
}

class BadRequestError extends ApiError {
  BadRequestError([message = "Server error"]) : super(message);
}

class TimeoutError extends ApiError {
  TimeoutError([message = "Timeout error"]) : super(message);
}

class ConnectionError extends ApiError {
  ConnectionError([message = "Connection error"]) : super(message);
}

class EmptyResponseError extends ApiError {
  EmptyResponseError([message = "Empty response error"]) : super(message);
}

class UnknownError extends ApiError {
  UnknownError([message = "Unknown request"]) : super(message);
}