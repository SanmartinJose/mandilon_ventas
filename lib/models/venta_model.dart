class VentaEmpleado {
  final String nombreEmpleado;
  final double montoVenta;

  VentaEmpleado(this.nombreEmpleado, this.montoVenta);
}

class Tienda {
  final String nombreTienda;
  final List<VentaEmpleado> empleados;

  Tienda(this.nombreTienda, this.empleados);

  double get totalTienda =>
      empleados.fold(0, (sum, emp) => sum + emp.montoVenta);
}

class Ciudad {
  final String nombreCiudad;
  final List<Tienda> tiendas;

  Ciudad(this.nombreCiudad, this.tiendas);

  double get totalCiudad =>
      tiendas.fold(0, (sum, tienda) => sum + tienda.totalTienda);
}

class Cadena {
  final List<Ciudad> ciudades;

  Cadena(this.ciudades);

  double get totalCadena =>
      ciudades.fold(0, (sum, ciudad) => sum + ciudad.totalCiudad);
}
