# abrirRecorridos > Análisis

> |[🏠️](/README.md)|[Detalle](/RUP/00-requisitos/01-casoDeUso/3-DetallarCasosDeUso/0-Administrador/abrirRecorridos/README.md)|**Análisis**|[Diseño](/RUP/02-diseño/01-realizacionCasoDeUso/0-Administrador/abrirRecorridos/README.md)|
> |-|-|-|-|

## propósito
Análisis de colaboración del caso de uso `abrirRecorridos()` aplicando el patrón MVC.

## diagrama de colaboración

<div align=center>

|![Análisis: abrirRecorridos()](colaboracion.svg)|
|-|
|Código fuente: [colaboracion.puml](colaboracion.puml)|

</div>

## clases de análisis identificadas

### clases de vista (boundary)
#### AbrirRecorridosView
**Estereotipo**: Vista (Boundary)  
**Responsabilidades**:
- Interacción con el administrador para la acción de abrir Recorridos.
- Capturar los datos necesarios y mostrar feedback.

### clases de control
#### RecorridosController
**Estereotipo**: Control  
**Responsabilidades**:
- Coordinar el flujo de abrir Recorridos.
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
