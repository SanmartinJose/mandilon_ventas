import 'package:flutter/material.dart';
import '../../services/ventas_service.dart';
import '../../models/venta_model.dart';
import 'city_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final VentasService ventasService = VentasService();

  @override
  Widget build(BuildContext context) {
    final Cadena cadena = ventasService.cadena;

    return Scaffold(
      appBar: AppBar(
        title: const Text("El Mandilón - Ventas Diarias"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // Logo centrado
            Center(
              child: SizedBox(
                height: 120,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Tarjeta de total recaudado
            Card(
              color: Colors.green[50],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Total Recaudado en la Cadena: \$${cadena.totalCadena.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Ciudades",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: cadena.ciudades.length,
                itemBuilder: (context, index) {
                  final ciudad = cadena.ciudades[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(
                        ciudad.nombreCiudad,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Total vendido: \$${ciudad.totalCiudad.toStringAsFixed(2)}',
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CityScreen(ciudad: ciudad),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
