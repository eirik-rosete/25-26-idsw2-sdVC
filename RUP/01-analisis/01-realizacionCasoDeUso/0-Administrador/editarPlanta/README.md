# editarPlanta > Análisis

> |[🏠️](/README.md)|[Detalle](/RUP/00-requisitos/01-casoDeUso/3-DetallarCasosDeUso/0-Administrador/editarPlanta/README.md)|**Análisis**|[Diseño](/RUP/02-diseño/01-realizacionCasoDeUso/0-Administrador/editarPlanta/README.md)|
> |-|-|-|-|

## propósito
Análisis de colaboración del caso de uso `editarPlanta()` aplicando el patrón MVC.

## diagrama de colaboración

<div align=center>

|![Análisis: editarPlanta()](colaboracion.svg)|
|-|
|Código fuente: [colaboracion.puml](colaboracion.puml)|

</div>

## clases de análisis identificadas

### clases de vista (boundary)
#### EditarPlantaView
**Estereotipo**: Vista (Boundary)  
**Responsabilidades**:
- Interacción con el administrador para la acción de editar Planta.
- Capturar los datos necesarios y mostrar feedback.

### clases de control
#### PlantasController
**Estereotipo**: Control  
**Responsabilidades**:
- Coordinar el flujo de editar Planta.
- Validar las reglas de negocio antes de proceder con el repositorio.

### clases de entidad (entity)
#### PlantaRepository
**Estereotipo**: Entidad  
**Responsabilidades**:
- Abstraer el acceso a la base de datos para la entidad Planta.
- Validar restricciones de integridad.

#### Planta
**Estereotipo**: Entidad  
**Responsabilidades**:
- Representar el estado interno de Planta.
- Aplicar reglas del dominio.
