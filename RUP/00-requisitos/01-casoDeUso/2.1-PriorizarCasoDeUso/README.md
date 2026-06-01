# Priorización de casos de uso

Tabla de prioridad según la dificultad de cada caso (Alta / Media / Baja).

## Primera iteración - Casos planteados en la sesión de requisitado

### Administrador

| ID | Caso de uso | Prioridad |
| - | - | - |
| A1 | abrirEspacios() | Alta |
| A2 | abrirRecorridos() | Alta |
| A3 | crearEspacio() | Alta |
| A4 | crearRecorrido() | Alta |
| A5 | actualizarEspacio() | Media |
| A6 | actualizarRecorrido() | Media |
| A7 | eliminarEspacio() | Baja |
| A8 | eliminarRecorrido() | Baja |

### Visitante

| ID | Caso de uso | Prioridad |
| - | - | - |
| V1 | buscarUbicacion() | Alta |
| V2 | verUbicacionActual() | Alta |
| V3 | verRecorridosDisponibles() | Alta |
| V4 | seleccionarRecorrido() | Alta |
| V5 | verDetalles() | Media |
| V6 | verEspaciosCercanos() | Media |
| V8 | cambiarUbicacion() | Media |
| V7 | verEspaciosPlanta() | Baja |
| V9 | salirRecorrido() | Baja |

## Segunda iteración - Casos de uso restantes

# Priorización de casos de uso

Tabla de prioridad según la dificultad de cada caso (Alta / Media / Baja).

### Administrador

| ID | Caso de uso | Prioridad |
| - | - | - |
| A1 | abrirEspacios() | Alta |
| A2 | abrirRecorridos() | Alta |
| A3 | crearEspacio() | Alta |
| A4 | crearRecorrido() | Alta |
| A5 | actualizarEspacio() | Media |
| A6 | actualizarRecorrido() | Media |
| A7 | eliminarEspacio() | Baja |
| A8 | eliminarRecorrido() | Baja |
| A9 | verRegiones() | Alta |
| A10 | verPlantas() | Alta |
| A11 | editarRegion() | Alta |
| A12 | editarPlanta() | Alta |
| A13 | crearRegion() | Media |
| A14 | crearPlanta() | Media |
| A15 | eliminarRegion() | Media |
| A16 | eliminarPlanta() | Media |

> **Nota sobre la priorización:** Se ha establecido una estrategia de desarrollo basada en implementar los casos de uso por **entidades antes que por función**. Esto permite visualizar similitudes estructurales que facilitan la construcción del detallado. La prioridad asignada responde a: **[R] Alta**, pues es necesario saber qué hay disponible; **[U] Alta**, porque modificar y relacionar los objetos una vez creados es vital; **[C] Media**, permitiendo crear objetos con el requerimiento mínimo viable (ej. solo el nombre) para su posterior actualización; y **[D] Media**, ya que la eliminación (y su posible efecto en cascada) ocurre en una etapa tardía de gestión.

### Visitante

| ID | Caso de uso | Prioridad |
| - | - | - |
| V1 | buscarUbicacion() | Alta |
| V2 | verUbicacionActual() | Alta |
| V3 | verRecorridosDisponibles() | Alta |
| V4 | seleccionarRecorrido() | Alta |
| V5 | verDetalles() | Media |
| V6 | verEspaciosCercanos() | Media |
| V8 | cambiarUbicacion() | Media |
| V7 | verEspaciosPlanta() | Baja |
| V9 | salirRecorrido() | Baja |
