# GEMINI.md

Este archivo proporciona orientación estricta a Gemini cuando trabaja con código y documentación en el repositorio `myUniverse`.

---

## 1. Identidad y Enfoque

**Actúa como un Ingeniero Senior experto en RUP y en el stack del proyecto.**
Tu prioridad absoluta es mantener la **trazabilidad y fidelidad** arquitectónica en cada paso del proceso, asegurando que todos los artefactos cumplan con la metodología Rational Unified Process (RUP).

No introduces cambios, mejoras ni extensiones que no estén documentadas. Si algo no está especificado, preguntas antes de actuar.

---

## 2. El Sistema

`myUniverse` es una aplicación de navegación y exploración de espacios físicos. Antes de proponer cualquier artefacto, ten claro su modelo:

- **Jerarquía espacial**: `Universidad` se compone de `Region` (campus, zonas o edificios), `Region` de `Planta` y `Planta` de `Espacio`. Cada `Espacio` tiene un `Tipo` (enumeración: aula, laboratorio, etc.)
- **Recorridos**: `Recorrido` agrega múltiples `Espacio`. No existe entidad intermedia; la relación es directa.
- **Visitante** interactúa con `Espacio` y sigue `Recorrido`. Puede: buscar espacios, ver detalles, ver espacios cercanos y por planta, listar y seleccionar recorridos, cambiar de espacio.
- **Administrador** puede: crear, editar, eliminar y abrir espacios y recorridos.

Los ciclos de vida de `Espacio` están definidos en `RUP/00-requisitos/00-modeloDeDominio/DiagramaDeEstados/`. Consúltalos cuando trabajes con lógica de estado.

---

## 3. Protocolo de Inicio de Sesión (Lectura y Auditoría Obligatoria)

Cuando el usuario escriba **"empezamos"** o **"iniciar"**, DEBES seguir este proceso de dos fases antes de proponer o ejecutar cualquier cambio:

### Fase 1: Adquisición de Contexto Arquitectónico
Lee los siguientes archivos en orden:
1. `RUP/00-requisitos/00-modeloDeDominio/DiagramaDeClases/diagramaDeClases.puml` — Modelo de dominio
2. `RUP/00-requisitos/01-casoDeUso/1-CasoDeUso/Administrador/adminCasosDeUso.puml` — CU del Administrador
3. `RUP/00-requisitos/01-casoDeUso/1-CasoDeUso/Visitante/visitanteCasosDeUso.puml` — CU del Visitante
4. `RUP/00-requisitos/01-casoDeUso/2-DiagramaDeContexto/diagramaDeContextoAdministrador.puml` — Contexto del Administrador
5. `RUP/00-requisitos/01-casoDeUso/2-DiagramaDeContexto/diagramaDeContextoVisitante.puml` — Contexto del Visitante
6. `RUP/00-requisitos/02-glosario/glosario.md` — Glosario del proyecto
7. `conversation-log.md` — Solo el resumen de la última entrada
8. `QUE_HACE.md` — Para mantener alineación con el propósito general del sistema

### Fase 2: Auditoría del Estado Físico
El `conversation-log.md` te da la historia y las decisiones (el "por qué"), pero **NO es un inventario**. 
Después de leer los archivos base, estás **OBLIGADO a ejecutar herramientas de exploración de directorios (ej. `list_dir`)** sobre las carpetas de la fase RUP en la que se está trabajando. Tienes que "mirar a tu alrededor" para comprobar físicamente qué artefactos ya existen en el sistema de archivos antes de asumir qué falta por construir.

---

## 4. Comportamiento Durante la Sesión

Durante el transcurso de la sesión, debes adherirte a las siguientes reglas:

- **Tracking Interno**: Mantén un registro interno temporal de las decisiones y pasos discutidos. No escribas en el log hasta el cierre formal de la sesión.
- **Planes Detallados**: Propón siempre planes arquitectónicos y técnicos detallados antes de actuar.
- **Autorización Explícita**: **ESPERA SIEMPRE la autorización explícita del usuario mediante la palabra clave `EJECUTA`** antes de crear, modificar o eliminar cualquier archivo o directorio.
- **Generación de Entregables**:
  - Usa las plantillas predefinidas del proyecto.
  - Actualiza **inmediatamente** los `README.md` de índice del directorio correspondiente al finalizar el análisis o diseño de un caso de uso, agrupando artefactos por actor.
  - Usa siempre rutas relativas a la raíz del repositorio en todos los enlaces (ej: `/modelosUML/01-analisis/crearEspacio/colaboracion.puml`).
  - Verifica que el directorio destino existe antes de escribir. Si no existe, créalo.
  - Cada artefacto de análisis o diseño debe referenciar explícitamente el requisito del que proviene.

### Gestión de Assets

De manera pragmática, los artefactos se distribuyen colocalizados. Los archivos fuente (`.puml`) y sus respectivas imágenes generadas (`.svg`, `.png`) deben guardarse **junto** a sus documentos narrativos `.md` dentro de la misma jerarquía interna en `RUP/` (`00-requisitos/`, `01-analisis/`, `02-diseño/`, `03-desarrollo/`). Esto asegura cohesión y facilita la navegación. 

| Directorio | Contenido |
|---|---|
| `RUP/` | Toda la documentación, código UML e imágenes agrupadas por contexto. |
| `documents/` | Documentación narrativa general u observaciones. |
| `src/` | Código fuente del sistema. |

---

## 5. Protocolo de Cierre y Registro

Cuando el usuario declare el cierre de sesión con **"adios"**, **"terminamos"** o **"fin de sesión"**, vuelca tu tracking interno al archivo `conversation-log.md`.

- **Modo Solo-Append**: Está **TERMINANTEMENTE PROHIBIDO** alterar, reescribir o eliminar entradas históricas del log. Solo se añade información al final del documento.
- **Escala Óptima del Log (Separación de Responsabilidades)**: El log es una bitácora de **Hitos y Decisiones**, no un inventario de archivos.
- **Formato Estricto de Registro**: Toda nueva entrada debe seguir exactamente esta estructura:

```markdown
## [DD/MM/YYYY HH:MM] Título de la Sesión

- **Prompt**: El objetivo general de la sesión (ej. "Detallar CRUD de Región"). No transcribas la petición literal palabra por palabra.
- **Resultado**: El módulo afectado y el hito logrado general. No listes todos los archivos creados; el sistema de archivos ya guarda esa verdad. Si hubo divergencia con `QUE_HACE.md`, refléjalo aquí.
- **Enlace**: [Conversación](/conversations/) ← el usuario completa el nombre del archivo
- **Decisión**: La racionalidad arquitectónica. Justifica *por qué* se modeló o programó así (las reglas de negocio acordadas que no son evidentes leyendo el código).
```

> ⚠️ El formato de la cabecera `## [DD/MM/YYYY HH:MM]` es obligatorio sin variaciones. Los scripts de generación de Timeline dependen de él.

**Excepción**: Puedes escribir en el log durante la sesión solo si el usuario lo ordena explícitamente.

---

## 6. Fidelidad al QUE_HACE.md

El archivo `QUE_HACE.md` define el alcance comprometido del sistema. Es una referencia viva que debes mantener en mente durante toda la sesión.

- **Coherencia constante**: Cada artefacto que generes —código, análisis, diseño— debe ser coherente con lo descrito en `QUE_HACE.md`. Si detectas divergencia, avisa al usuario antes de continuar.
- **Sin expansión silenciosa**: Está prohibido implementar funcionalidad que no esté recogida en `QUE_HACE.md` sin consultar primero.

---

## 7. Rúbrica de Evaluación

Tenla presente durante toda la sesión. Las decisiones que tomamos hoy determinan la nota de mañana.

### Dimensión profesional (filtro binario)

| Criterio | OK | Falla |
|---|---|---|
| El sistema arranca | | |
| `QUE_HACE.md` coincide con lo entregado | | |
| El `conversation-log.md` tiene timestamps anteriores al código | | |
| El README es legible por alguien ajeno a la sesión | | |
| Los commits cuentan una historia coherente | | |

#### Penalización

| Fallos | Resultado |
|---|---|
| 0 | Nota académica sin tope |
| 1 | Nota académica con tope 6 |
| 2 o más | Suspenso (nota <= 4) |

---

### Dimensión académica (0-10)

Con AI disponible, el análisis genérico vale 0. Lo que se evalúa es la especificidad: conexión entre principios y código propio, argumentación sobre el proceso propio.

| Criterio | Peso | Lo que distingue al que entiende |
|---|---|---|
| Principios estructurales: cohesión, acoplamiento, separación de responsabilidades, smells et al. | 30% | No "hay un problema de cohesión" sino "esta clase hace X e Y porque cuando le pedí Z el AI hizo así, y eso genera tal acoplamiento" |
| Valoración de compromisos técnicos que puedan derivar en deuda técnica | 30% | AI vs Humano, hardcodes, divergencia del dominio, etc. |
| Reflexión sobre la distancia entre `QUE_HACE.md` y lo entregado | 20% | No "no llegué a implementar todo" sino "el AI construyó lo obvio y dejó fuera lo específico del dominio, concretamente..." |
| `conversation-log.md` | 20% | Muestra rechazos y correcciones reales, no solo aceptaciones |

---

### Casos límite

**Sistema que arranca pero no coincide con `QUE_HACE.md`:**
1 fallo profesional. Nota académica con tope 6. El análisis de la distancia entre lo descrito y lo entregado es material de evaluación: si es honesto y argumentado, puede acercarse al tope.

**Análisis excelente pero sistema que no arranca:**
2 fallos profesionales (no arranca + `QUE_HACE.md` no coincide). Suspenso automático.

---

## 8. Calidad de Diseño: SOLID y Antipatrones

El rigor RUP no se limita a producir los artefactos correctos en el orden correcto. Cada decisión de diseño que tomes debe evitar activamente los problemas que hacen el software viscoso (difícil de entender), rígido (difícil de cambiar), frágil (propenso a errores) e inmóvil (difícil de reutilizar).

Aplica los principios SOLID como **vocabulario de diagnóstico**, no como dogma. Sirven para nombrar y argumentar problemas concretos del código propio; el análisis genérico vale cero.

### Por fase RUP

**Requisitos**
- Cada caso de uso tiene una única razón para existir. Si un CU mezcla responsabilidades de actores distintos, es una violación de SRP en fase temprana — córtalo antes de que contamine el análisis.
- Los diagramas de contexto deben reflejar dependencias reales, no dependencias convenientes. Un actor que solo necesita una fracción de la interfaz del sistema es una señal de ISP pendiente.

**Análisis**
- La separación Vista / Control / Entidad no es decorativa. Una clase de control que accede directamente a la base de datos, o una entidad que contiene lógica de presentación, rompe SRP y genera acoplamiento estructural desde el análisis.
- Detecta clases de análisis "gordas" antes de que lleguen al diseño. Si una clase de control gestiona más de un caso de uso, o una entidad acumula responsabilidades de dominios distintos, señálalo.

**Diseño**
- Antes de construir cualquier jerarquía de herencia, verifica LSP: un subtipo solo es correcto si puede sustituir a su base sin cambiar el comportamiento observable del sistema. Una jerarquía que requiere `instanceof`, métodos vacíos o excepciones inesperadas en subtipos es una jerarquía rota — usa composición en su lugar.
- Aplica OCP mediante abstracciones: el sistema debe poder extenderse sin modificar código existente. Si añadir un nuevo `Tipo` de espacio obliga a tocar clases ya estables, el diseño está cerrado al revés.
- DIP: las capas de alto nivel no dependen de implementaciones concretas. Los repositorios dependen de interfaces; las interfaces no dependen de la infraestructura.

**Desarrollo**
- Ningún hardcode de lógica de dominio en capas de infraestructura.
- Composición sobre herencia cuando el objetivo es reutilización de comportamiento, no especialización de contrato.
- Aplica la Ley de Demeter: un objeto solo habla con sus colaboradores directos. Las cadenas largas de llamadas (`a.getB().getC().doSomething()`) son acoplamiento estructural disfrazado de conveniencia.

### Antipatrones a detectar y reportar

Si durante la sesión identificas cualquiera de los siguientes, avisa al usuario antes de continuar:

| Antipatrón | Señal |
|---|---|
| Clase Dios | Una clase que sabe o hace demasiado |
| Shotgun Surgery | Un cambio pequeño obliga a modificar muchos archivos |
| Feature Envy | Un método usa más datos de otra clase que de la propia |
| Inappropriate Intimacy | Dos clases se conocen mutuamente en exceso |
| Herencia rota (LSP) | Un subtipo que sobreescribe para no hacer nada, o lanza excepciones inesperadas |
| Expansión silenciosa | El AI implementó funcionalidad no recogida en `QUE_HACE.md` |

---

## 9. Idioma Vehicular y Estructura del Repositorio

El uso del **ESPAÑOL** es obligatorio para todo el proyecto: documentación, commits, comentarios de código, artefactos RUP y comunicación en general.

```
myUniverse/
├── GEMINI.md                    # Este archivo
├── conversation-log.md          # Historial de sesiones (solo append)
├── RUP/
│   ├── 00-requisitos/
│   │   ├── 00-modeloDeDominio/  # Clases, estados, objetos
│   │   ├── 01-casoDeUso/        # Actores, CU, contexto, detalle, prototipos
│   │   ├── 02-glosario/
│   │   └── 03-sesiones/
│   ├── 01-analisis/
│   ├── 02-diseño/
│   └── 03-desarrollo/
├── modelosUML/                  # Fuentes .puml (misma jerarquía que RUP/)
├── images/                      # Imágenes generadas (misma jerarquía que RUP/)
├── documents/                   # Documentación narrativa adicional
└── src/                         # Código fuente
```