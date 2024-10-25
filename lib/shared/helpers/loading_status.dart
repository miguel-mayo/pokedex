enum LoadingStatus {
  initial,
  stop,
  loading,
  success,
  error,
  notPermissions,
  tracking
}

extension LoadingStatusHelper on LoadingStatus {
  bool get isInitial => this == LoadingStatus.initial;
  bool get isStop => this == LoadingStatus.stop;
  bool get isLoading => this == LoadingStatus.loading;
  bool get isSuccess => this == LoadingStatus.success;
  bool get isError => this == LoadingStatus.error;
  bool get isNotPermissions => this == LoadingStatus.notPermissions;
  bool get isTracking => this == LoadingStatus.tracking;
}
