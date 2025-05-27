import '../models/venta_model.dart';

class VentasService {
  final Cadena cadena;

  VentasService() : cadena = _generarDatos();

  static Cadena _generarDatos() {
    return Cadena([
      Ciudad("Quito", [
        Tienda("Tienda Valle de los Chillos", [
          VentaEmpleado("Empleado Jose Sanmartin", 1500),
          VentaEmpleado("Empleado Yeshua Chilliquinga", 1200),
          VentaEmpleado("Empleado Camilo Orrico", 1000),
          VentaEmpleado("Empleado Cesar Loor", 800),
        ]),
        Tienda("Tienda La Ecuatoriana", [
          VentaEmpleado("Empleado Pamela Chipe", 1100),
          VentaEmpleado("Empleado Andres Espin", 900),
          VentaEmpleado("Empleado Carlos Jaya", 950),
          VentaEmpleado("Empleado Josue Ferrin", 700),
        ]),
        Tienda("Tienda Cotocollao", [
          VentaEmpleado("Empleado Mayeli Ortiz", 1300),
          VentaEmpleado("Empleado Josue Marin", 1400),
          VentaEmpleado("Empleado Elkin Pabon", 1100),
          VentaEmpleado("Empleado Micaela Salcedo", 1000),
        ]),
      ]),
      Ciudad("Guayaquil", [
        Tienda("Los Ceibos", [
          VentaEmpleado("Empleado Enrique Chavez", 1700),
          VentaEmpleado("Empleado Maria Jose Orellana", 1600),
          VentaEmpleado("Empleado Emily Peña", 1400),
          VentaEmpleado("Empleado Reishel Tipan", 1300),
        ]),
        Tienda("Malecon 2000", [
          VentaEmpleado("Empleado Violeta Menendez", 900),
          VentaEmpleado("Empleado Jaiber Albuja", 800),
          VentaEmpleado("Empleado Nahomi Cedeño", 700),
          VentaEmpleado("Empleado Erick Cacuango", 600),
        ]),
        Tienda("Parque de las Iguanas", [
          VentaEmpleado("Empelado Micaela Segovia", 1200),
          VentaEmpleado("Empleado Arianna Gonzales", 1100),
          VentaEmpleado("Empleado Hellen Martinez", 1150),
          VentaEmpleado("Empleado Joel Vera", 900),
        ]),
      ]),
      Ciudad("Cuenca", [
        Tienda("Calle Larga", [
          VentaEmpleado("Empleado Josseline Lopez", 1500),
          VentaEmpleado("Empleado Abigail Vasquez", 1500),
          VentaEmpleado("Empleado Damian Verdesoto", 1300),
          VentaEmpleado("Empleado Joan Cobeña", 1400),
        ]),
        Tienda("Tienda C2", [
          VentaEmpleado("Empleado C2-1", 1100),
          VentaEmpleado("Empleado C2-2", 1000),
          VentaEmpleado("Empleado C2-3", 900),
          VentaEmpleado("Empleado C2-4", 950),
        ]),
        Tienda("Tienda C3", [
          VentaEmpleado("Empleado C3-1", 1200),
          VentaEmpleado("Empleado C3-2", 1250),
          VentaEmpleado("Empleado C3-3", 1150),
          VentaEmpleado("Empleado C3-4", 1100),
        ]),
      ]),
      Ciudad("Loja", [
        Tienda("Tienda D1", [
          VentaEmpleado("Empleado D1-1", 900),
          VentaEmpleado("Empleado D1-2", 850),
          VentaEmpleado("Empleado D1-3", 800),
          VentaEmpleado("Empleado D1-4", 750),
        ]),
        Tienda("Tienda D2", [
          VentaEmpleado("Empleado D2-1", 1300),
          VentaEmpleado("Empleado D2-2", 1200),
          VentaEmpleado("Empleado D2-3", 1250),
          VentaEmpleado("Empleado D2-4", 1100),
        ]),
        Tienda("Tienda D3", [
          VentaEmpleado("Empleado D3-1", 1000),
          VentaEmpleado("Empleado D3-2", 950),
          VentaEmpleado("Empleado D3-3", 900),
          VentaEmpleado("Empleado D3-4", 850),
        ]),
      ]),
    ]);
  }
}
