import java.util.*;

class Producto {
    private String codigo;
    private String nombre;
    private int cantidad;
    private int umbralStock;

    public Producto(String codigo, String nombre, int cantidad) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.cantidad = cantidad;
        this.umbralStock = 0; // Umbral por defecto
    }

    public String getCodigo() {
        return codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public int getCantidad() {
        return cantidad;
    }

    public int getUmbralStock() {
        return umbralStock;
    }

    public void actualizarCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public void configurarUmbral(int umbral) {
        this.umbralStock = umbral;
    }

    public boolean verificarAlertaStock() {
        return cantidad <= umbralStock;
    }

    @Override
    public String toString() {
        return "Producto [Código: " + codigo + ", Nombre: " + nombre + ", Cantidad: " + cantidad + "]";
    }
}

class Inventario {
    private Map<String, Producto> productos = new HashMap<>();

    public void agregarProducto(Producto producto) {
        productos.put(producto.getCodigo(), producto);
    }

    public Producto buscarProducto(String codigo) {
        return productos.get(codigo);
    }

    public void mostrarInventario() {
        if (productos.isEmpty()) {
            System.out.println("El inventario está vacío.");
        } else {
            for (Producto producto : productos.values()) {
                System.out.println(producto);
            }
        }
    }

    public void generarReporte() {
        System.out.println("\n--- Reporte de Inventario ---");
        for (Producto producto : productos.values()) {
            System.out.println(producto);
            if (producto.verificarAlertaStock()) {
                System.out.println("Alerta: El producto " + producto.getNombre() + " está bajo el umbral de stock.");
            }
        }
    }
}

public class SistemaInventario {

    static Scanner scanner = new Scanner(System.in);
    static Inventario inventario = new Inventario();

    public static void main(String[] args) {
        int opcion;
        do {
            mostrarMenu();
            opcion = scanner.nextInt();
            scanner.nextLine(); // Limpiar buffer
            switch (opcion) {
                case 1:
                    registrarEntradaProducto();
                    break;
                case 2:
                    configurarAlertaStock();
                    break;
                case 3:
                    generarReporteInventario();
                    break;
                case 4:
                    inventario.mostrarInventario();
                    break;
                case 0:
                    System.out.println("Saliendo del sistema...");
                    break;
                default:
                    System.out.println("Opción no válida.");
            }
        } while (opcion != 0);
    }

    public static void mostrarMenu() {
        System.out.println("\n--- Sistema de Inventario ---");
        System.out.println("1. Registrar Entrada de Producto");
        System.out.println("2. Configurar Alerta de Stock");
        System.out.println("3. Generar Reporte de Inventario");
        System.out.println("4. Mostrar Inventario");
        System.out.println("0. Salir");
        System.out.print("Seleccione una opción: ");
    }

    public static void registrarEntradaProducto() {
        System.out.print("Ingrese el código del producto: ");
        String codigo = scanner.nextLine();
        Producto producto = inventario.buscarProducto(codigo);

        if (producto == null) {
            System.out.print("Producto nuevo. Ingrese el nombre: ");
            String nombre = scanner.nextLine();
            System.out.print("Ingrese la cantidad inicial: ");
            int cantidad = scanner.nextInt();
            scanner.nextLine(); // Limpiar buffer
            producto = new Producto(codigo, nombre, cantidad);
            inventario.agregarProducto(producto);
            System.out.println("Producto registrado exitosamente.");
        } else {
            System.out.print("Producto existente. Ingrese la nueva cantidad: ");
            int nuevaCantidad = scanner.nextInt();
            scanner.nextLine(); // Limpiar buffer
            producto.actualizarCantidad(nuevaCantidad);
            System.out.println("Cantidad actualizada exitosamente.");
        }
    }

    public static void configurarAlertaStock() {
        System.out.print("Ingrese el código del producto: ");
        String codigo = scanner.nextLine();
        Producto producto = inventario.buscarProducto(codigo);

        if (producto != null) {
            System.out.print("Ingrese el umbral de stock: ");
            int umbral = scanner.nextInt();
            scanner.nextLine(); // Limpiar buffer
            producto.configurarUmbral(umbral);
            System.out.println("Alerta de stock configurada exitosamente.");
        } else {
            System.out.println("El producto no existe en el inventario.");
        }
    }

    public static void generarReporteInventario() {
        inventario.generarReporte();
    }
}