sealed class Result<T> {}

class ResultSuccess<T> extends Result<T> {
  final T data;

  ResultSuccess(this.data);
}

class ResultError<T> extends Result<T> {}
