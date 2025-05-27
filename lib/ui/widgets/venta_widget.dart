import 'package:flutter/material.dart';
import '../../models/venta_model.dart';

class VentaWidget extends StatelessWidget {
  final Cadena cadena;

  const VentaWidget({required this.cadena, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        Text(
          "Ventas Totales Cadena: \$${cadena.totalCadena.toStringAsFixed(2)}",
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        ...cadena.ciudades.map((ciudad) => ExpansionTile(
          title: Text(
            "${ciudad.nombreCiudad} - Total: \$${ciudad.totalCiudad.toStringAsFixed(2)}",
            style:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          children: ciudad.tiendas.map((tienda) => ExpansionTile(
            title: Text(
                "${tienda.nombreTienda} - Total: \$${tienda.totalTienda.toStringAsFixed(2)}"),
            children: tienda.empleados
                .map((emp) => ListTile(
              title: Text(emp.nombreEmpleado),
              trailing: Text(
                  "\$${emp.montoVenta.toStringAsFixed(2)}"),
            ))
                .toList(),
          )).toList(),
        )),
      ],
    );
  }
}
