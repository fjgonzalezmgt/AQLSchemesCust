# AQLSchemesCust

<!-- Technology Badges -->
![R](https://img.shields.io/badge/R-%23276DC3.svg?style=flat&logo=r&logoColor=white)
![License: GPL-2](https://img.shields.io/badge/License-GPL--2-blue.svg)
![Package](https://img.shields.io/badge/Type-R%20Package-orange.svg)
![Version](https://img.shields.io/badge/Version-1.7--2-green.svg)

## ⚠️ Versión Modificada

**AQLSchemesCust** es una versión editada de la librería original [**AQLSchemes**](https://CRAN.R-project.org/package=AQLSchemes) desarrollada por **John Lawson**.

### Modificación Principal

Esta versión **elimina el ingreso forzoso de parámetros mediante la terminal** (menu interactivo) que tenía la librería original. En su lugar, **permite el ingreso de parámetros directamente en las funciones**, lo que facilita significativamente su **implementación programática** y automatización en scripts de R.

**Ventajas de esta versión modificada:**
- ✅ **Programación sin interrupciones**: No requiere intervención manual del usuario
- ✅ **Automatización**: Ideal para procesos batch y pipelines de calidad
- ✅ **Integración**: Fácil de integrar en sistemas de análisis automatizado
- ✅ **Reproducibilidad**: Permite scripts completamente reproducibles

## Descripción

**AQLSchemesCust** es un paquete de R para recuperar esquemas de muestreo de aceptación basados en AQL (Nivel de Calidad Aceptable o Acceptable Quality Level).

Este paquete incluye funciones para:

- Recuperar planes de muestreo de atributos **simples, dobles y múltiples** de las tablas del Estándar Militar (MIL-STD-105E) - American National Standards Institute/American Society for Quality (ANSI/ASQ Z1.4)
- Recuperar planes de muestreo de variables de las tablas del Estándar Militar (MIL-STD-414) - American National Standards Institute/American Society for Quality (ANSI/ASQ Z1.9)
- Calcular las coordenadas de la Curva Característica de Operación (OC) y el Número Promedio de Muestra (ASN) para los planes de atributos
- Calcular la proporción estimada de no conformidad y la proporción máxima permitida de no conformidad para planes de muestreo de variables

## Contexto

Los esquemas de muestreo AQL del MIL-STD fueron los estándares más utilizados y copiados en el mundo. Fueron diseñados para ser utilizados en el muestreo de un flujo de lotes y se empleaban en acuerdos contractuales entre proveedores y empresas clientes. 

Cuando el ejército de los Estados Unidos dejó de dar soporte al MIL-STD 105E y 414, el American National Standards Institute (ANSI) y la International Standards Organization (ISO) adoptaron el estándar con pocos cambios o sin cambios en las tablas centrales.

Este paquete es útil porque su implementación computacional de estas tablas replica la disponible en otro software comercial y calculadoras en línea por suscripción.

## Instalación

Puede instalar el paquete desde CRAN con:

```r
install.packages("AQLSchemesCust")
```

O instalar la versión de desarrollo desde GitHub:

```r
# Si no tiene instalado devtools:
# install.packages("devtools")
devtools::install_github("fjgonzalezmgt/AQLSchemesCust")
```

## Uso

### Cargar el paquete

```r
library(AQLSchemesCust)
```

### Planes de Muestreo de Atributos Simples

```r
# Obtener un plan de muestreo simple de tipo Normal
plan_simple <- AASingle(type = "Normal")

# Tipos disponibles: "Normal", "Tightened", "Reduced"
plan_riguroso <- AASingle(type = "Tightened")
plan_reducido <- AASingle(type = "Reduced")
```

### Planes de Muestreo de Atributos Dobles

```r
# Obtener un plan de muestreo doble
plan_doble <- AADouble(type = "Normal")
```

### Planes de Muestreo de Atributos Múltiples

```r
# Obtener un plan de muestreo múltiple
plan_multiple <- AAMultiple(type = "Normal")
```

### Planes de Muestreo de Variables

```r
# Obtener planes de muestreo de variables según ANSI/ASQ Z1.9
# Las funciones están disponibles para diferentes tipos de planes
```

## Funciones Principales

- `AASingle()`: Plan de muestreo de atributos simple
- `AADouble()`: Plan de muestreo de atributos doble
- `AAMultiple()`: Plan de muestreo de atributos múltiple
- `AAZ14Single()`: Plan de muestreo de atributos simple detallado (Z1.4)
- `AAZ14Double()`: Plan de muestreo de atributos doble detallado (Z1.4)
- `AAZ14Multiple()`: Plan de muestreo de atributos múltiple detallado (Z1.4)
- `AAZ19()`: Planes de muestreo de variables (Z1.9)
- `OCASNZ4S()`: Curva OC y ASN para planes simples
- `OCASNZ4D()`: Curva OC y ASN para planes dobles
- `OCASNZ4M()`: Curva OC y ASN para planes múltiples
- `EPn()`: Proporción estimada de no conformidad
- `MPn()`: Proporción máxima permitida de no conformidad

## Referencias

Los estándares y tablas implementados en este paquete provienen de:

- **MIL-STD-105E**: [https://archive.org/details/MIL-STD-105E_1](https://archive.org/details/MIL-STD-105E_1)
- **MIL-STD-414**: [https://archive.org/details/MIL-STD-414](https://archive.org/details/MIL-STD-414)

## Licencia

Este paquete está distribuido bajo la licencia GPL-2.

## Autor y Mantenedor

- **Autor Original**: John Lawson <lawsonjsl7net@gmail.com> - [AQLSchemes](https://CRAN.R-project.org/package=AQLSchemes)
- **Modificación y Adaptación**: Francisco J. González M.
- **Repositorio Original**: [CRAN - AQLSchemes](https://CRAN.R-project.org/package=AQLSchemes)

## Información del Paquete

- **Versión**: 1.7-2
- **Fecha**: 2022-02-23
- **Repositorio**: CRAN
- **Tipo**: Package de R

## Soporte y Contribuciones

Para reportar problemas o contribuir al desarrollo del paquete, por favor visite el repositorio en GitHub.

---

*Esta es una versión modificada del paquete original **AQLSchemes** de John Lawson. La modificación principal consiste en eliminar el ingreso interactivo por terminal (funciones `menu()`) y permitir el paso de parámetros directamente a las funciones, facilitando su uso programático y automatización en scripts de R para control de calidad.*
