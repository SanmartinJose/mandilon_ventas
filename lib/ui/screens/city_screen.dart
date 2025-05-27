import 'package:flutter/material.dart';
import '../../models/venta_model.dart';
import 'store_screen.dart';

class CityScreen extends StatelessWidget {
  final Ciudad ciudad;
  const CityScreen({required this.ciudad, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ciudad: ${ciudad.nombreCiudad}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total vendido en la ciudad: \$${ciudad.totalCiudad.toStringAsFixed(2)}',
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: ciudad.tiendas.length,
                itemBuilder: (context, index) {
                  final tienda = ciudad.tiendas[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      title: Text(tienda.nombreTienda,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(
                          'Total tienda: \$${tienda.totalTienda.toStringAsFixed(2)}'),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StoreScreen(tienda: tienda),
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
