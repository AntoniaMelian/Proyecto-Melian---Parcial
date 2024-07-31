import 'package:flutter/material.dart';
import '../utils/api_service.dart';
import 'dart:math';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late Future<Map<String, dynamic>> futureUser;

  @override
  void initState() {
    super.initState();
    final userId = Random().nextInt(10) + 1; // Generar un número entre 1 y 10
    futureUser = fetchUser(userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: FutureBuilder<Map<String, dynamic>>(
        future: futureUser,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final user = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nombre: ${user['name']}', style: Theme.of(context).textTheme.headlineMedium),
                  Text('Usuario: ${user['username']}', style: Theme.of(context).textTheme.bodyLarge),
                  Text('Correo: ${user['email']}', style: Theme.of(context).textTheme.bodyLarge),
                  Text('Teléfono: ${user['phone']}', style: Theme.of(context).textTheme.bodyLarge),
                  Text('Website: ${user['website']}', style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 20),
                  Text('Dirección:', style: Theme.of(context).textTheme.headlineMedium),
                  Text('Calle: ${user['address']['street']}', style: Theme.of(context).textTheme.bodyLarge),
                  Text('Suite: ${user['address']['suite']}', style: Theme.of(context).textTheme.bodyLarge),
                  Text('Ciudad: ${user['address']['city']}', style: Theme.of(context).textTheme.bodyLarge),
                  Text('Código Postal: ${user['address']['zipcode']}', style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
