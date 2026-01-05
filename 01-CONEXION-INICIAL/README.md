# Terraform – Ejemplo básico: configuración del provider AWS

## Descripción del proyecto

Este proyecto es un ejemplo **muy básico de Terraform** cuyo objetivo es aprender
cómo se configura Terraform para trabajar con **AWS como proveedor**.

El proyecto utiliza un único archivo `main.tf` y **no crea ningún recurso en AWS**.
Sirve únicamente para entender:

- La estructura mínima de un proyecto Terraform
- El bloque `terraform` y `required_providers`
- El bloque `provider` para AWS
- El uso de perfiles de AWS CLI (AWS Academy)

Este ejemplo es ideal como **primer contacto con Terraform**.

----
## Requisitos previos

Antes de ejecutar este proyecto, es necesario tener:

- Cuenta de **AWS Academy**
- AWS CLI instalada y configurada
- Un perfil de AWS CLI válido
- Terraform instalado (versión recomendada ≥ 1.5)
- Conocimientos básicos de:
  - Infraestructura como código (IaC)
  - Servicios básicos de AWS

----
## Estructura del proyecto

```text
.
├── main.tf
└── README.md
```

- `main.tf`: contiene la configuración principal de Terraform, incluyendo
  el provider y los recursos a desplegar.

- `README.md`: es este archivo que estás leyendo. 

---- 
## Explicación del archivo `main.tf`

El archivo `main.tf` está dividido en **dos bloques principales**.


#### 1. Bloque `terraform`

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
```
Este bloque se utiliza para **configurar Terraform a nivel general**.

En este caso:

- Se indica que el proyecto utiliza el proveedor **AWS**.

- Se especifica que el proveedor se obtiene desde: hashicorp/aws

- Se limita la versión del proveedor a la rama 5.x

#### 📌 ¿Para qué sirve este bloque?

- Terraform sabe qué proveedor usar.

- Descarga automáticamente los plugins necesarios cuando se ejecuta: 
```bash 
terraform init
```
#### 2. Bloque `provider "aws"`
````hcl
provider "aws" {
  profile = "awsacademy-terraform"
  region  = "us-east-1"
}
````


Este bloque configura cómo Terraform se conecta a AWS. Aquí se define:

- El perfil de AWS CLI que se va a utilizar

- La región de AWS donde se trabajará

#### 📌 Aspectos importantes:

1. El perfil debe existir previamente en el equipo:

Archivo: `~/.aws/credentials`

2. Se recomienda crear **un perfil distinto por cada laboratorio**
de AWS Academy para evitar conflictos entre proyectos.

3. La región utilizada en este ejemplo es: `us-east-1`.

---
### Ejecución del proyecto


Aunque este proyecto **no crea recursos**, es útil para comprobar
que Terraform está correctamente configurado.

1. Inicializar el proyecto:
````bash
terraform init
````

2. Verificar la configuración:
````bash
terraform plan
````

⚠️ No aparecerá ningún plan de creación de recursos, ya que el proyecto
solo define el provider.

----
### Resultado esperado


Tras ejecutar `terraform init`:

- Terraform descargará el proveedor AWS

- Se creará el directorio `.terraform`.
- No se crearán recursos en AWS.

- No se consumirán créditos de AWS Academy.

