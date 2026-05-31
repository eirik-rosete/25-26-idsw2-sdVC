# Observación: Ausencia de CRUD Jerárquico (Región y Planta)

![Badge RUP](https://img.shields.io/badge/Metodolog%C3%ADa-RUP-blue)
![Badge Trazabilidad](https://img.shields.io/badge/Trazabilidad-Requisitos-success)

## Contexto de la Observación

Durante la revisión y auditoría del modelo de dominio y casos de uso iniciales, el docente responsable hizo una observación crítica respecto a la **gestión de la jerarquía espacial** del proyecto "myUniverse".

En el modelo de dominio original (`diagramaDeClases.puml`), existe una clara estructura compositiva:
`Universidad *-- Region *-- Planta *-- Espacio`

Sin embargo, en el documento de requerimientos (`adminCasosDeUso.puml`), el actor **Administrador** solo poseía casos de uso de gestión (CRUD) para la entidad más atómica (`Espacio`) y para `Recorrido`, careciendo de los mecanismos necesarios para registrar y administrar nuevos edificios/zonas (`Region`) o nuevos pisos/niveles (`Planta`).

## Justificación Arquitectónica

Para que el sistema permita escalar y ser administrado dinámicamente en el tiempo sin depender de intervenciones directas en la base de datos, es un requisito funcional obligatorio proveer de interfaces y casos de uso de gestión para toda la cadena compositiva del dominio espacial.

## Resolución Aplicada

Se ha decidido actualizar la matriz de casos de uso del Administrador. Los cambios aplicados garantizan la trazabilidad con el modelo de dominio:

1. Se añadió el paquete **"Gestión de Regiones"** (crear, ver, editar, eliminar).
2. Se añadió el paquete **"Gestión de Plantas"** (crear, ver, editar, eliminar).
3. Se actualizó el artefacto principal en [adminCasosDeUso.puml](../../RUP/00-requisitos/01-casoDeUso/1-CasoDeUso/Administrador/adminCasosDeUso.puml).

---
*Documento generado en base al tracking interno de sesiones para garantizar fidelidad al marco de trabajo RUP.*
