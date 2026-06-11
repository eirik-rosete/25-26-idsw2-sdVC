# crearEspacio > Análisis

> |[🏠️](/README.md)|[Detalle](/RUP/00-requisitos/01-casoDeUso/3-DetallarCasosDeUso/0-Administrador/crearEspacio/README.md)|**Análisis**|[Diseño](/RUP/02-diseño/01-realizacionCasoDeUso/0-Administrador/crearEspacio/README.md)|
> |-|-|-|-|

## propósito
Análisis de colaboración del caso de uso `crearEspacio()` aplicando el patrón MVC.

## diagrama de colaboración

<div align=center>

|![Análisis: crearEspacio()](colaboracion.svg)|
|-|
|Código fuente: [colaboracion.puml](colaboracion.puml)|

</div>

## clases de análisis identificadas

### clases de vista (boundary)
#### CrearEspacioView
**Estereotipo**: Vista (Boundary)  
**Responsabilidades**:
- Interacción con el administrador para la acción de crear Espacio.
- Capturar los datos necesarios y mostrar feedback.

### clases de control
#### EspaciosController
**Estereotipo**: Control  
**Responsabilidades**:
- Coordinar el flujo de crear Espacio.
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
