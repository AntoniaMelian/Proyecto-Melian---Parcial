import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post.dart';
import '../models/todo.dart';

Future<List<Post>> fetchPosts() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Post.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load posts');
  }
}

Future<List<Todo>> fetchTodos() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Todo.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load todos');
  }
}

Future<Map<String, dynamic>> fetchUser(int userId) async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/$userId'));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load user');
  }
}
