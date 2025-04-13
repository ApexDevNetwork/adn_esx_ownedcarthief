# adn_esx_carthief

Este recurso para servidores ESX añade un sistema completo de robo y venta de vehículos. Los jugadores podrán utilizar herramientas ilegales para forzar cerraduras, mientras que los mecánicos podrán instalar diferentes tipos de sistemas de alarma en los vehículos para prevenir robos.

## Características principales

- Herramientas de robo con distintos niveles de eficacia y riesgo.
- Sistemas de alarma de tres niveles, con integración GPS y notificación a la policía.
- Interfaz para gestionar las alarmas desde dentro del vehículo.
- Casa de empeño para comprar herramientas y recuperar vehículos robados.
- Garaje ilegal para vender vehículos robados.
- Opciones de configuración avanzadas (tipo de pago, trabajos restringidos, NPCs, etc.).

## Requisitos

- ESX Legacy
- es_extended
- esx_vehicleshop
- ox_inventory (recomendado)

## Instalación

1. Descarga este repositorio.
2. Extrae el contenido y copia la carpeta `adn_esx_ownedcarthief` a tu carpeta `resources`.
3. Importa el archivo SQL incluido a tu base de datos.
4. Añade la línea correspondiente a tu `server.cfg`:

```cfg
ensure adn_esx_ownedcarthief
```

5. Configura `config.lua` a tu gusto.

## Configuración destacada (`config.lua`)

- `SuccesChance`: Probabilidad de éxito al forzar un vehículo.
- `PoliceNumberRequired`: Número mínimo de policías conectados para poder robar.
- `SellCarBlackMoney`: Define si se recibe dinero negro o legal.
- `PawnShopBLJob`: Trabajos que no pueden interactuar con el garaje ilegal.

## Localización

Este script usa el sistema nativo de localización de ESX (`@es_extended/locale.lua`), y viene con soporte para:

- Inglés
- Portugués (Br)
- Francés
- Español (traducción incluida en `es.lua`)

Puedes añadir más idiomas siguiendo la misma estructura.

## Créditos

- Script original: [RedAlex](https://github.com/RedAlex) y [EagleOnee](https://github.com/EagleOnee)
- Adaptación y mejoras para ApexDev Network: **Carri - ByLcarma**
- Discord: [https://discord.com/invite/HUZZDazJAm](https://discord.com/invite/HUZZDazJAm)

> Basado en un recurso con licencia GPLv3. Esta versión ha sido modificada para adaptarse a los estándares de ADN - ApexDev Network.

# 📜 Changelog VERSIÓN 1.0.6 - `adn_esx_ownedcarthief` 

### 🔄 General
- Renombrado el script de `esx_ownedcarthief` a `adn_esx_ownedcarthief`.
- Reorganización de carpetas recomendada: `client/`, `server/`, `locales/`, etc.
- Se eliminó el uso de `__resource.lua` en favor de `fxmanifest.lua`.

### 🌐 Localización
- Traducción completa al español de:
  - `locales/es.lua`
  - Mensajes del servidor y notificaciones
- Se mantuvo compatibilidad con el sistema nativo de localización de ESX.

### 🧠 Lógica del servidor (`server/main.lua`)
- Adaptación completa del sistema de base de datos de **`mysql-async`** a **`oxmysql`**:
  - `MySQL.Async.fetchAll` → `MySQL.query`
  - `MySQL.Async.execute` → `MySQL.update`
  - `MySQL.Sync.execute` → `MySQL.update.await`
  - `MySQL.Sync.fetchAll` → `MySQL.query.await`
  - `MySQL.Async.fetchScalar` → `MySQL.scalar`
- Conversión de todas las callbacks, funciones y eventos que utilizaban MySQL.
- Se actualizaron todas las funciones para usar `await` cuando era necesario.
- Limpieza general del código y variables innecesarias.
- **Adaptado el acceso a ESX usando `exports['es_extended']:getSharedObject()`**

### 💻 Lógica del cliente (`client/main.lua`)
- ✅ Se corrigió un error crítico que causaba `attempt to index a nil value (local 'vehicleData')` al intentar robar vehículos sin propiedad.
- 🔐 Ahora se valida que el vehículo exista y tenga placa antes de acceder a `vehicleData.plate`.

### ⚙️ `fxmanifest.lua`
- Se eliminó dependencia a:
  - `@mysql-async/lib/MySQL.lua`
  - `@async/async.lua`
  - `essentialmode`
- Se añadió soporte para:
  - `@oxmysql/lib/MySQL.lua`

### 🗃️ Base de datos
  - Se tradujo y adaptó al español el archivo SQL original.
  - Comentarios y nombres de objetos (ítems, descripciones) traducidos.
  - Preparado para servidores con nombres en español.

### 📁 Documentación
- Generado `fxmanifest.lua` moderno adaptado a `oxmysql`.
---

*Versión adaptada y mantenida por **Carri - ByLcarma** para ApexDev Network.*
---

**¡No olvides dejar tu estrella ⭐ si te ha sido útil!**