# crearRegion > Análisis

> |[🏠️](/README.md)|[Detalle](/RUP/00-requisitos/01-casoDeUso/3-DetallarCasosDeUso/0-Administrador/crearRegion/README.md)|**Análisis**|[Diseño](/RUP/02-diseño/01-realizacionCasoDeUso/0-Administrador/crearRegion/README.md)|
> |-|-|-|-|

## propósito
Análisis de colaboración del caso de uso `crearRegion()` aplicando el patrón MVC.

## diagrama de colaboración

<div align=center>

|![Análisis: crearRegion()](colaboracion.svg)|
|-|
|Código fuente: [colaboracion.puml](colaboracion.puml)|

</div>

## clases de análisis identificadas

### clases de vista (boundary)
#### CrearRegionView
**Estereotipo**: Vista (Boundary)  
**Responsabilidades**:
- Interacción con el administrador para la acción de crear Region.
- Capturar los datos necesarios y mostrar feedback.

### clases de control
#### RegionesController
**Estereotipo**: Control  
**Responsabilidades**:
- Coordinar el flujo de crear Region.
- Validar las reglas de negocio antes de proceder con el repositorio.

### clases de entidad (entity)
#### RegionRepository
**Estereotipo**: Entidad  
**Responsabilidades**:
- Abstraer el acceso a la base de datos para la entidad Region.
- Validar restricciones de integridad.

#### Region
**Estereotipo**: Entidad  
**Responsabilidades**:
- Representar el estado interno de Region.
- Aplicar reglas del dominio.
