class ApiUrls {
  final String baseUrl;

  ApiUrls(this.baseUrl);

  factory ApiUrls.prod() => ApiUrls("https://randomuser.me");

  /// Current User info
  Uri get currentUser => Uri.parse('$baseUrl/api');
}
