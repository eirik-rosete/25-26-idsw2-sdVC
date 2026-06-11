# eliminarEspacio > Análisis

> |[🏠️](/README.md)|[Detalle](/RUP/00-requisitos/01-casoDeUso/3-DetallarCasosDeUso/0-Administrador/eliminarEspacio/README.md)|**Análisis**|[Diseño](/RUP/02-diseño/01-realizacionCasoDeUso/0-Administrador/eliminarEspacio/README.md)|
> |-|-|-|-|

## propósito
Análisis de colaboración del caso de uso `eliminarEspacio()` aplicando el patrón MVC.

## diagrama de colaboración

<div align=center>

|![Análisis: eliminarEspacio()](colaboracion.svg)|
|-|
|Código fuente: [colaboracion.puml](colaboracion.puml)|

</div>

## clases de análisis identificadas

### clases de vista (boundary)
#### EliminarEspacioView
**Estereotipo**: Vista (Boundary)  
**Responsabilidades**:
- Interacción con el administrador para la acción de eliminar Espacio.
- Capturar los datos necesarios y mostrar feedback.

### clases de control
#### EspaciosController
**Estereotipo**: Control  
**Responsabilidades**:
- Coordinar el flujo de eliminar Espacio.
- Validar las reglas de negocio antes de proceder con el repositorio.

### clases de entidad (entity)
#### EspacioRepository
**Estereotipo**: Entidad  
**Responsabilidades**:
- Abstraer el acceso a la base de datos para la entidad Espacio.
- Validar restricciones de integridad.

#### Espacio
**Estereotipo**: Entidad  
**Responsabilidades**:
- Representar el estado interno de Espacio.
- Aplicar reglas del dominio.
