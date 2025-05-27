import 'package:flutter/material.dart';
import '../../models/venta_model.dart';

class StoreScreen extends StatelessWidget {
  final Tienda tienda;
  const StoreScreen({required this.tienda, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda: ${tienda.nombreTienda}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total vendido en tienda: \$${tienda.totalTienda.toStringAsFixed(2)}',
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: tienda.empleados.length,
                itemBuilder: (context, index) {
                  final empleado = tienda.empleados[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      title: Text(empleado.nombreEmpleado),
                      trailing: Text(
                        '\$${empleado.montoVenta.toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
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
