class TestResponse {
  final String message;
  final String status;

  TestResponse({
    required this.message,
    required this.status,
  });

  factory TestResponse.fromJson(Map<String, dynamic> json) {
    return TestResponse(
      message: json['message'],
      status: json['status'],
    );
  }
}
