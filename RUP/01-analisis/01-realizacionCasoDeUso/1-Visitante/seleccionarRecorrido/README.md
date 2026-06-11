# seleccionarRecorrido > Análisis

> |[🏠️](/README.md)|[Detalle](/RUP/00-requisitos/01-casoDeUso/3-DetallarCasosDeUso/1-Visitante/seleccionarRecorrido/README.md)|**Análisis**|[Diseño](/RUP/02-diseño/01-realizacionCasoDeUso/1-Visitante/seleccionarRecorrido/README.md)|
> |-|-|-|-|

## propósito
Análisis de colaboración del caso de uso `seleccionarRecorrido()` para el Visitante, centrado en visualización e interacción espacial sin modificación de estado.

## diagrama de colaboración

<div align=center>

|![Análisis: seleccionarRecorrido()](colaboracion.svg)|
|-|
|Código fuente: [colaboracion.puml](colaboracion.puml)|

</div>

## clases de análisis identificadas

### clases de vista (boundary)
#### SeleccionarRecorridoView
**Estereotipo**: Vista (Boundary)  
**Responsabilidades**: 
- Interfaz interactiva para el visitante.
- Capturar interacciones de lectura o selección espacial.

### clases de control
#### NavegacionController
**Estereotipo**: Control  
**Responsabilidades**: 
- Coordinar la visualización e interacción del visitante.
- Resolver la ubicación actual frente a la solicitada.

### clases de entidad (entity)
#### RecorridoRepository / Recorrido
**Estereotipo**: Entidad  
**Responsabilidades**: 
- Proveer datos espaciales y metadatos de Recorrido (sólo lectura).
