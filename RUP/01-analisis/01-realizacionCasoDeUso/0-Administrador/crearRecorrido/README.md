# crearRecorrido > Análisis

> |[🏠️](/README.md)|[Detalle](/RUP/00-requisitos/01-casoDeUso/3-DetallarCasosDeUso/0-Administrador/crearRecorrido/README.md)|**Análisis**|[Diseño](/RUP/02-diseño/01-realizacionCasoDeUso/0-Administrador/crearRecorrido/README.md)|
> |-|-|-|-|

## propósito
Análisis de colaboración del caso de uso `crearRecorrido()` aplicando el patrón MVC.

## diagrama de colaboración

<div align=center>

|![Análisis: crearRecorrido()](colaboracion.svg)|
|-|
|Código fuente: [colaboracion.puml](colaboracion.puml)|

</div>

## clases de análisis identificadas

### clases de vista (boundary)
#### CrearRecorridoView
**Estereotipo**: Vista (Boundary)  
**Responsabilidades**:
- Interacción con el administrador para la acción de crear Recorrido.
- Capturar los datos necesarios y mostrar feedback.

### clases de control
#### RecorridosController
**Estereotipo**: Control  
**Responsabilidades**:
- Coordinar el flujo de crear Recorrido.
- Validar las reglas de negocio antes de proceder con el repositorio.

### clases de entidad (entity)
#### RecorridoRepository
**Estereotipo**: Entidad  
**Responsabilidades**:
- Abstraer el acceso a la base de datos para la entidad Recorrido.
- Validar restricciones de integridad.

#### Recorrido
**Estereotipo**: Entidad  
**Responsabilidades**:
- Representar el estado interno de Recorrido.
- Aplicar reglas del dominio.
