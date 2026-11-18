# ARTIBIRD-HUB-COM-001

# Artibird Hub Series

# Commercial Specification v2.3

# Artibird Hub 系列商業規格書 v2.3

**Company｜公司：** OceanAI LLC  
**Product Family｜產品系列：** Artibird Hub Series  
**Version｜版本：** v2.3 — Consolidated Revision  
**Date｜日期：** 2026-11-17  
**Status｜狀態：** Author Review Required｜待作者審閱  
**Architecture｜技術架構：** OceanAI / ORT / ART / Artibird  
**Original Commercial Baseline｜原始商業基準：** Artibird Hub Commercial Specification v1.0-Final（2026-05-08）  
**Related Engineering Specification｜對應工程規格：** ARTIBIRD-HUB-ENG-001

## 1. Executive Summary｜執行摘要

### 1.1 Product Family Overview｜產品系列概述

**English**

The Artibird Hub Series provides the local runtime infrastructure for intelligent spaces, bringing together continuous operation, distributed coordination, and spatial orchestration.

Built within OceanAI's Intelligent Space Systems Architecture and powered by ArtiOS Runtime (ART), the series establishes a unified operational foundation for homes, professional environments, and buildings.

Through OceanAI Runtime (ORT), individual runtime environments participate in a broader architecture for cross-space and multi-site coordination.

The series comprises three controller platforms:

- **Artibird Hub — Intelligent Space Hub**
- **Artibird Hub Pro — Intelligent Space Workstation**
- **Artibird Building Controller — Building Runtime Controller**

Together, they bring the principle of **Act as One** into the operation of intelligent spaces.

**繁體中文**

Artibird Hub 系列為智能空間提供本地 Runtime 運行基礎設施，整合持續運行、分散式協同與空間編排能力。

系列產品建立於 OceanAI 智能空間系統架構之中，由 ArtiOS Runtime（ART）驅動，為住宅、專業空間及建築建立統一的運行基礎。

透過 OceanAI Runtime（ORT），各個 Runtime 環境參與更廣泛的跨空間與多場域運行協調。

系列包含三級控制器：

- **Artibird Hub｜智能空間中樞**
- **Artibird Hub Pro｜智能空間工作站**
- **Artibird Building Controller｜建築運行控制器**

三款產品共同將 **Act as One｜協同如一** 的原則帶入智能空間的實際運行。

### 1.2 Core Value Proposition｜核心價值主張

**English**

A unified runtime foundation that brings intelligence into physical spaces, sustains local operation, and coordinates systems across rooms, buildings, and multiple sites.

**繁體中文**

以統一的 Runtime 運行基礎，讓智能進入實體空間，維持本地運行，並協調跨房間、建築與多場域的系統運作。

### 1.3 Product Family Statement｜產品系列主張

**Local Runtime Infrastructure for Intelligent Spaces.**

**智能空間的本地 Runtime 運行基礎設施。**

## 2. OceanAI Systems Architecture｜OceanAI 系統架構

## Continuous Operation. Act as One.

## 持續運行，協同如一。

### 2.1 OceanAI — Intelligent Space Systems Architecture｜智能空間系統架構

**English**

OceanAI develops the systems architecture for intelligent spaces, enabling distributed intelligence, physical devices, and runtime services to operate as a coordinated whole.

Across rooms, buildings, and multiple sites, OceanAI establishes the structural and operational foundations through which different systems maintain their independence while acting together.

At the heart of this architecture is a guiding principle:

**Act as One.**

Intelligence becomes meaningful in physical spaces when sensing, understanding, coordination, and action participate in a coherent system.

**繁體中文**

OceanAI 建構智能空間系統架構，使分散式智能、實體設備與 Runtime 服務形成協同運行的整體。

從房間、建築到多個場域，OceanAI 建立系統的結構與運行基礎，使不同系統在保持各自獨立性的同時，實現整體協同。

這套架構的核心原則是：

**Act as One｜協同如一。**

當感測、理解、協調與行動共同參與一致的系統運行時，智能便能在實體空間中發揮作用。

### 2.2 ORT — OceanAI Runtime｜OceanAI 全局運行層

**Core Role｜核心角色**

Cross-Space & Multi-Site Runtime Coordination  
跨空間與多場域 Runtime 運行協調

**English**

OceanAI Runtime (ORT) establishes the system-wide operating model through which intelligent spaces coordinate across physical locations, runtime environments, and technical layers.

ORT organizes relationships among distributed runtime systems, enabling spaces and sites to participate in coordinated operations while maintaining their respective operational boundaries.

Through ORT, multiple intelligent spaces can operate within a shared system architecture and **act as one** when coordination is required.

**繁體中文**

OceanAI Runtime（ORT）建立系統全局運行模型，使智能空間能夠跨越物理位置、Runtime 環境與技術層級進行協同。

ORT 組織分散式 Runtime 系統之間的運行關係，使不同空間與場域在維持各自運行邊界的同時，參與整體協同。

透過 ORT，多個智能空間得以在共用系統架構中運行，並在需要協同時實現 **Act as One｜協同如一**。

### 2.3 ART — ArtiOS Runtime｜ArtiOS 本地運行層

**Core Role｜核心角色**

Local Runtime Execution & Spatial Coordination  
本地 Runtime 執行與空間協同

**English**

ArtiOS Runtime (ART) realizes OceanAI's runtime architecture locally through Artibird controllers.

ART coordinates device states, capabilities, events, commands, scenes, and automation within physical spaces.

It maintains the operational relationships that allow distributed devices and services to respond coherently to spatial conditions and human actions.

Through ART, the principle of **Act as One** becomes part of everyday local operation.

**繁體中文**

ArtiOS Runtime（ART）透過 Artibird 控制器，在本地實現 OceanAI 的 Runtime 架構。

ART 協調實體空間中的設備狀態、設備能力、事件、命令、場景與自動化。

它維持分散式設備與服務之間的運行關係，使系統能夠對空間條件及人的行動作出一致回應。

透過 ART，**Act as One｜協同如一** 成為日常本地運行的一部分。

### 2.4 Artibird — Distributed Physical Device System｜分散式實體設備系統

**Core Role｜核心角色**

Sensing · Networking · Synchronization · Control · Physical Action  
感測 · 網路 · 同步 · 控制 · 物理行動

**English**

Artibird provides the distributed physical device system through which OceanAI's architecture participates in the physical world.

Its core product family delivers networking, synchronization, sensing, interaction, control, and physical execution through specialized devices, including Gate, Sync, Switch, Panel, Sense, Plug, and Vision, alongside the Hub controller family.

Additional product lines, including Flow, extend these capabilities into specialized physical domains such as water management and irrigation.

Each device contributes its capabilities through the shared runtime architecture, enabling coordinated physical operation across intelligent spaces.

**Act as One** is realized through the coordinated participation of these capabilities.

**繁體中文**

Artibird 提供分散式實體設備系統，使 OceanAI 架構能夠參與物理世界的運行。

其核心產品體系透過 Gate、Sync、Switch、Panel、Sense、Plug 與 Vision 等專業設備，以及 Hub 控制器系列，提供網路通訊、同步、感測、互動、控制與物理執行能力。

Flow 等擴展產品線，則將這些能力延伸至水資源管理、灌溉等專業物理領域。

各設備透過共用 Runtime 架構發揮其專業能力，使智能空間中的實體運行形成整體協同。

**Act as One｜協同如一** 透過這些能力的共同參與而實現。

**Product Family Boundary｜產品體系邊界**

Core Product Lines｜核心產品線：維持 Artibird 原有九大產品線規劃；完整九項名單須以正式產品目錄核對。

Extended Product Lines｜擴展產品線：Flow-I、Flow-V、Flow-M、Flow-P 等。

本章不將 Flow 計入原有九大核心產品線。

### 2.5 Architectural Unity｜架構整體性

**English**

OceanAI's architecture is organized around three complementary responsibilities:

**Architecture establishes the whole.**

OceanAI provides the structural principles and relationships through which intelligent spaces form a coherent system.

**Runtime coordinates the whole in action.**

ORT and ART maintain the operational relationships through which distributed systems and devices act together.

**Physical devices realize action.**

Artibird enables sensing, communication, interaction, and physical execution within real environments.

Together, these responsibilities establish a system in which distributed components retain their respective roles while contributing to coordinated operation.

**Continuous Operation. Act as One.**

**繁體中文**

OceanAI 的架構由三項相互配合的責任構成：

**架構建立整體。**

OceanAI 提供智能空間形成一致系統所需的結構原則與關係。

**Runtime 協調整體行動。**

ORT 與 ART 維持分散式系統及設備之間的運行關係，使其共同參與行動。

**實體設備實現行動。**

Artibird 在真實環境中實現感測、通訊、互動與物理執行。

三者共同建立一套運行體系，使分散式組件在保有各自職責的同時，形成整體協同。

**Continuous Operation. Act as One.｜持續運行，協同如一。**

### 2.6 Architectural Principles｜架構原則

| Principle｜原則 | Architectural Role｜架構作用 |
| --- | --- |
| Archipelago Architecture｜群島架構 | Structure｜結構：組織分散式空間、系統與運行關係 |
| Liquid Runtime｜流動運行 | Operation｜運行：支援不同條件下的適應性與連續性 |
| Spatial Orchestration｜空間編排 | Coordination｜協調：使空間、設備、服務與行動形成協同 |

**English**

These three principles establish the conditions for Continuous Runtime, while **Act as One** expresses the unity of coordinated operation across the system.

**繁體中文**

三項原則共同建立 Continuous Runtime｜持續運行的條件，而 **Act as One｜協同如一** 則表達整體系統在協同行動中形成的一致性。

## 3. Cross-Space & Multi-Site Architecture｜跨空間與多場域架構

### 3.1 Cross-Space Coordination｜跨空間協同

**English**

Cross-Space Coordination enables intelligent operation across connected physical spaces, including rooms, classrooms, offices, floors, and building zones.

Spatial states, device capabilities, events, and coordinated actions are organized within a shared runtime model.

**繁體中文**

跨空間協同使相互關聯的房間、教室、辦公室、樓層及建築區域能夠共同參與智能運行。

空間狀態、設備能力、系統事件與協同行動透過共用 Runtime 模型組織。

**Operational Scope｜運行範圍**

Room → Zone → Floor → Building  
房間 → 區域 → 樓層 → 建築

### 3.2 Multi-Site Coordination｜多場域協同

**English**

Multi-Site Coordination extends runtime relationships across distinct deployment sites, including residential properties, school campuses, offices, and commercial facilities.

Through ORT and supported platform services, organizations can establish coordinated site management, operational visibility, analytics, and reporting.

**繁體中文**

多場域協同將 Runtime 運行關係延伸至不同部署場域，包括住宅物業、學校校園、辦公室及商業設施。

透過 ORT 與受支援的平台服務，組織可建立協同場域管理、運行可視化、分析與報告能力。

**Operational Scope｜運行範圍**

Site → Multiple Sites → Organization  
場域 → 多場域 → 組織

### 3.3 Cross-Layer Coordination｜跨層協同

**English**

Cross-Layer Coordination connects cloud services, edge intelligence, ART controllers, gateways, and physical devices through standardized operational relationships and interfaces.

**繁體中文**

跨層協同透過標準化運行關係與接口，連接雲端服務、邊緣智能、ART 控制器、網關及實體設備。

**Technical Scope｜技術範圍**

Cloud / Edge / ART / Gate / Devices  
雲端／邊緣／ART／網關／設備

### 3.4 Local Independence & System Unity｜本地獨立與整體協同

**English**

Local runtime environments retain responsibility for essential operations within their supported boundaries.

ORT enables these environments to participate in broader coordination when the required services and communication paths are available.

**繁體中文**

本地 Runtime 環境在受支援的運行邊界內，保有必要運行能力與責任。

當所需服務及通訊鏈路可用時，ORT 使各本地 Runtime 環境參與更廣泛的整體協同。

## 4. Product Portfolio｜產品系列

### 4.1 Artibird Hub

#### Intelligent Space Hub｜智能空間中樞

**English**

Artibird Hub establishes the local runtime foundation for intelligent homes and independent spaces.

Powered by ART, it coordinates supported device states, scenes, automation, and system events through a unified local environment.

Within the broader ORT architecture, Hub can participate in cross-space and multi-site services when the required connections and platform capabilities are available.

**繁體中文**

Artibird Hub 為智能住宅與獨立空間建立本地 Runtime 運行基礎。

透過 ART，Hub 在統一的本地環境中協調受支援的設備狀態、場景、自動化及系統事件。

在 ORT 整體架構中，Hub 可於具備所需連線與平台能力時，參與跨空間及多場域服務。

**Product Statement｜產品主張**

Local Intelligence. Continuous Living.  
本地智能，生活持續運行。

**Primary Markets｜主要市場**

- Intelligent Homes｜智能住宅
- Independent Spaces｜獨立空間
- Private Offices｜獨立辦公室

### 4.2 Artibird Hub Pro

#### Intelligent Space Workstation｜智能空間工作站

**English**

Artibird Hub Pro is a professional runtime workstation for intelligent environments requiring greater operational capacity, advanced spatial coordination, and comprehensive system visibility.

It hosts ART within a professional computing environment, extending local runtime management with advanced monitoring, diagnostics, and multi-zone coordination.

Through ORT, Hub Pro can participate in multi-site operational services and broader organizational management.

**繁體中文**

Artibird Hub Pro 是面向專業智能環境的 Runtime 工作站，滿足更高運行容量、進階空間協同及完整系統可視化需求。

它在專業運算環境中承載 ART，將本地 Runtime 管理延伸至進階監測、診斷及多區域協同。

透過 ORT，Hub Pro 可參與多場域運維服務及更廣泛的組織管理。

**Product Statement｜產品主張**

Intelligence in Operation.  
智能，在運行之中。

**Primary Markets｜主要市場**

- Premium Residences｜高階住宅
- Professional Offices｜專業辦公空間
- Commercial Spaces｜商業空間
- Small Institutional Sites｜小型機構場域

### 4.3 Artibird Building Controller

#### Building Runtime Controller｜建築運行控制器

**English**

Artibird Building Controller establishes the local runtime infrastructure for intelligent buildings.

It coordinates ART services across building spaces, floors, and distributed device networks, supporting building-scale spatial orchestration and operational management.

Within ORT, Building Controller participates in cross-space and multi-site coordination, connecting building operations with the broader OceanAI systems architecture.

**繁體中文**

Artibird Building Controller 為智能建築建立本地 Runtime 運行基礎設施。

它協調建築空間、樓層與分散式設備網路中的 ART 服務，支援建築級空間編排及運行管理。

在 ORT 架構中，Building Controller 參與跨空間與多場域協同，將建築運行納入 OceanAI 整體系統架構。

**Product Statement｜產品主張**

Keep Buildings Running as One.  
讓建築持續運行，協同如一。

**Primary Markets｜主要市場**

- Educational Buildings｜教育建築
- Office Buildings｜辦公建築
- Commercial Buildings｜商業建築
- Institutional Facilities｜機構設施

## 5. Core Technology Values｜核心技術價值

### 5.1 Continuous Runtime｜持續運行

**English**

Intelligent spaces require operational continuity across changing network conditions, service availability, and local environments.

ART sustains supported essential local functions, while ORT provides the broader model for coordinated runtime relationships.

**繁體中文**

智能空間需要在網路條件、服務可用性與本地環境變化時維持運行連續性。

ART 維持受支援的必要本地功能，ORT 則提供更廣泛的 Runtime 協同關係模型。

### 5.2 Distributed Coordination｜分散式協同

**English**

Distributed devices and runtime environments contribute distinct capabilities through shared operational relationships.

The system coordinates their participation while preserving appropriate local responsibility and fault boundaries.

**繁體中文**

分散式設備與 Runtime 環境透過共用運行關係發揮各自能力。

系統協調各組件的共同參與，同時維持適當的本地責任及故障邊界。

### 5.3 Spatial Orchestration｜空間編排

**English**

Spatial Orchestration coordinates device capabilities, environmental states, events, and physical actions around the spaces in which they operate.

**繁體中文**

Spatial Orchestration 以實體空間為中心，協調設備能力、環境狀態、系統事件及物理行動。

### 5.4 Runtime Observability｜運行可觀測性

**English**

Runtime Observability makes system behavior measurable and traceable through device states, service health, event records, and execution evidence.

**繁體中文**

Runtime Observability 透過設備狀態、服務健康、事件紀錄及執行證據，使系統運行可衡量、可觀測且可追溯。

### 5.5 Act as One｜協同如一

**English**

Act as One expresses the coordinated operation of distributed intelligence, runtime services, and physical devices.

It is reflected in consistent system state, coordinated responses, and shared participation in spatial operation.

**繁體中文**

Act as One 表達分散式智能、Runtime 服務及實體設備的協同運行。

它體現在一致的系統狀態、協調回應，以及對空間運行的共同參與之中。

## 6. Product Capability Architecture｜產品能力架構

The following capabilities represent the intended commercial architecture and require engineering validation before release.

以下能力屬於目標商業架構，正式發布前須通過工程驗證。

| Runtime Capability｜運行能力 | Hub | Hub Pro | Building Controller |
| --- | --- | --- | --- |
| ART Local Runtime｜ART 本地運行 | Standard｜標準 | Advanced｜進階 | Building Scale｜建築級 |
| Device Registry｜設備註冊 | Supported | Supported | Supported |
| Device State｜設備狀態 | Supported | Supported | Supported |
| Scene Engine｜場景引擎 | Supported | Supported | Supported |
| Automation Engine｜自動化引擎 | Supported | Supported | Supported |
| Event Bus｜事件匯流排 | Supported | Supported | Supported |
| Command Routing｜命令路由 | Supported | Supported | Supported |
| Gate / Sync Integration｜Gate／Sync 整合 | Supported | Supported | Supported |
| Spatial Management｜空間管理 | Rooms｜房間 | Multi-Zone｜多區域 | Building / Floor / Space｜建築／樓層／空間 |
| Runtime Console｜運行控制台 | Essential｜基本 | Professional｜專業 | Building Operations｜建築運維 |
| Runtime Diagnostics｜運行診斷 | Basic｜基礎 | Advanced｜進階 | Centralized｜集中 |
| Cross-Space Coordination｜跨空間協同 | Local｜本地 | Multi-Zone｜多區域 | Building-Wide｜建築級 |
| Multi-Site Coordination｜多場域協同 | ORT Service | ORT Service | ORT Service |
| Operations Agent｜運維代理 | Eligible Service | Eligible Service | Eligible Service |
| Local AI Processing｜本地 AI 處理 | Optional | Optional | Optional |

**Commercial Boundary｜商業邊界**

Product tiers are distinguished by verified processing capacity, operational scope, deployment requirements, reliability, management capabilities, and service entitlements.

三級產品依據已驗證的運算容量、運行範圍、部署要求、可靠性、管理能力及服務權益形成區分。

## 7. Customer Value｜客戶價值

### 7.1 Operational Continuity｜運行連續性

**English**

Maintain supported essential local functions through ART, reducing dependency on external cloud connectivity under validated operating conditions.

**繁體中文**

透過 ART 維持受支援的必要本地功能，在已驗證的運行條件下減少對外部雲端連線的依賴。

### 7.2 Coordinated Spaces｜空間協同

**English**

Coordinate supported devices, services, and actions across rooms, zones, floors, and buildings through a consistent runtime model.

**繁體中文**

透過一致的 Runtime 模型，協調房間、區域、樓層與建築中的受支援設備、服務及行動。

### 7.3 Unified Operations｜統一運行管理

**English**

ART provides consistent local runtime management, while ORT extends operational coordination and visibility across sites.

**繁體中文**

ART 提供一致的本地 Runtime 管理，ORT 則將運行協同與可視化延伸至不同場域。

### 7.4 Operational Intelligence｜運行智能

**English**

OceanAI Operations Agent extends runtime visibility through structured analysis, diagnostic evidence, and operational reporting.

**繁體中文**

OceanAI Operations Agent 透過結構化分析、診斷證據與運行報告，擴展 Runtime 可視化及運行智能能力。

### 7.5 System Unity｜系統整體性

**English**

Act as One enables spaces, services, and physical devices to participate in coordinated operation while retaining their respective responsibilities.

**繁體中文**

Act as One 使空間、服務及實體設備在維持各自責任的同時，共同參與整體協同運行。

## 8. Runtime Console & Operations Agent｜運行控制台與運維代理

### 8.1 ART Runtime Console｜本地運行控制台

**English**

The ART Runtime Console provides an operational view of local services, device networks, spatial states, system events, commands, and runtime health.

**繁體中文**

ART Runtime Console 提供本地服務、設備網路、空間狀態、系統事件、控制命令及 Runtime 健康的運行視圖。

### 8.2 ORT Operations Console｜全局運維控制台

**English**

The ORT Operations Console extends operational visibility across connected sites and organizations through authorized cloud and platform services.

**繁體中文**

ORT Operations Console 透過授權的雲端及平台服務，將運行可視化延伸至不同場域與組織。

### 8.3 OceanAI Operations Agent｜AI 運維代理

**English**

OceanAI Operations Agent supports runtime intelligence through structured log analysis, fault diagnosis, evidence-based reporting, and subsequent controlled recovery capabilities.

**繁體中文**

OceanAI Operations Agent 透過結構化日誌分析、故障診斷、證據化報告及後續受控恢復能力，支援 Runtime 運行智能。

**Phase 1｜第一階段**

Log Ingestion → Visualization → Diagnosis → Reporting  
日誌接入 → 可視化 → 診斷 → 報告

**Phase 2｜第二階段**

Recovery Planning → Human Approval → Controlled Execution → Verification  
恢復規劃 → 人工審批 → 受控執行 → 結果驗證

Each phase requires separate engineering acceptance before commercial release.

各階段須通過獨立工程驗收後，才能正式商業發布。

## 9. Application Markets｜應用市場

### 9.1 Intelligent Home｜智能住宅

**Recommended Product｜建議產品：Artibird Hub**

**English**

A coordinated local runtime environment for residential lighting, climate, curtains, sensing, and automation.

**繁體中文**

透過協同本地 Runtime 整合住宅照明、空調、窗簾、感測及自動化。

### 9.2 Professional Spaces｜專業空間

**Recommended Product｜建議產品：Artibird Hub Pro**

**English**

A professional runtime environment coordinating meeting rooms, workspaces, environmental systems, device networks, and operational monitoring.

**繁體中文**

透過專業 Runtime 協調會議室、工作區、環境系統、設備網路及運行監測。

### 9.3 Intelligent Schools｜智能學校

**Recommended Product｜建議產品：Hub Pro / Building Controller**

**English**

A spatial runtime environment for classrooms and school buildings, combining local classroom control with cross-space coordination and centralized operational visibility.

**繁體中文**

為教室與校舍建立 Spatial Runtime，整合本地教室控制、跨空間協同及集中運行可視化。

### 9.4 Intelligent Buildings｜智能建築

**Recommended Product｜建議產品：Building Controller**

**English**

Building-scale runtime infrastructure for spatial orchestration, distributed device coordination, and centralized operational management.

**繁體中文**

提供建築級 Runtime 基礎設施，支援空間編排、分散式設備協同及集中運行管理。

### 9.5 Multi-Site Organizations｜多場域組織

**Recommended Architecture｜建議架構：ORT + ART Controllers**

**English**

Multi-site organizations can coordinate supported local runtime deployments through ORT, establishing organization-level visibility, site management, and operational reporting.

**繁體中文**

多場域組織可透過 ORT 協調受支援的本地 Runtime 部署，建立組織級可視化、場域管理及運行報告。

## 10. Artibird Product Ecosystem｜Artibird 產品生態

### 10.1 Runtime Controllers｜運行控制器

| Product｜產品 | Product Category｜產品類別 | Runtime Role｜運行角色 |
| --- | --- | --- |
| Artibird Hub | Intelligent Space Hub｜智能空間中樞 | Local ART Runtime｜本地 ART 運行 |
| Artibird Hub Pro | Intelligent Space Workstation｜智能空間工作站 | Professional ART Runtime｜專業 ART 運行 |
| Artibird Building Controller | Building Runtime Controller｜建築運行控制器 | Building ART Runtime｜建築級 ART 運行 |

### 10.2 Core Device Products｜核心設備產品

| Product｜產品 | Product Role｜產品角色 |
| --- | --- |
| Artibird Gate | Intelligent Space Gateway｜智能空間網關 |
| Artibird Sync | Intelligent Space Synchronizer｜智能空間同步器 |
| Artibird Switch | Switching & Control｜開關與控制 |
| Artibird Panel | Spatial Interaction｜空間互動 |
| Artibird Sense | Environmental Sensing｜環境感測 |
| Artibird Plug | Power Control & Monitoring｜電力控制與監測 |
| Artibird Vision | Visual Sensing｜視覺感測 |

This table presents the core device categories relevant to the Hub Series. The complete original nine-line product catalog remains governed by its approved product baseline.

本表列出與 Hub 系列相關的核心設備類別。原有九大產品線的完整名錄仍以正式核准的產品基準為準。

### 10.3 Extended Product Lines｜擴展產品線

**Artibird Flow**

Flow-I / Flow-V / Flow-M / Flow-P

**English**

Flow extends Artibird's physical runtime capabilities into water management, irrigation, valve control, and other fluid-related applications.

**繁體中文**

Flow 將 Artibird 的實體 Runtime 能力延伸至水資源管理、灌溉、閥門控制及其他流體相關應用。

**Product Classification｜產品分類**

Flow belongs to the Extended Product Lines and is not counted among the original nine core product lines.

Flow 歸屬擴展產品線，不計入原有九大核心產品線。

## 11. Commercial Configuration｜商業配置

### 11.1 Controller Pricing｜控制器價格

| Product｜產品 | Planning Price｜規劃價格 | Market Position｜市場定位 |
| --- | --- | --- |
| Artibird Hub | US$299 | Intelligent Home & Independent Spaces｜智能住宅與獨立空間 |
| Artibird Hub Pro | US$799 | Professional Intelligent Spaces｜專業智能空間 |
| Artibird Building Controller | US$1,499 | Intelligent Buildings｜智能建築 |

**Pricing Status｜價格狀態：Planning Reference｜規劃參考**

**English**

Final commercial pricing requires manufacturing cost validation, certification review, channel margin assessment, support cost planning, and regional market approval.

**繁體中文**

正式商業定價須完成製造成本驗證、認證審查、渠道利潤評估、支援成本規劃及區域市場核准。

### 11.2 Hardware Foundation｜硬體基礎

**Artibird Hub**

Raspberry Pi 5-based local runtime platform.  
基於 Raspberry Pi 5 的本地 Runtime 平台。

**Artibird Hub Pro**

Professional computing platform, pending final engineering selection.  
專業運算平台，待最終工程選型。

**Artibird Building Controller**

Building-oriented computing platform, pending capacity and reliability validation.  
面向建築部署的運算平台，容量及可靠性待驗證。

Processor, memory, storage, network capacity, and supported device counts must follow approved engineering specifications.

處理器、記憶體、儲存、網路容量及受支援設備數量，均以經核准的工程規格為準。

## 12. Commercial Solution Portfolio｜商業解決方案

### 12.1 Home Runtime Solution｜住宅運行方案

**English**

A coordinated local runtime solution integrating supported residential lighting, climate, curtains, sensing, and automation.

**繁體中文**

整合受支援住宅照明、空調、窗簾、感測及自動化的協同本地 Runtime 方案。

**Typical Configuration｜典型配置**

Hub + Gate + Switch + Sense + Optional Sync / Plug

### 12.2 Professional Space Runtime Solution｜專業空間運行方案

**English**

A professional runtime environment combining spatial control, distributed device coordination, monitoring, and diagnostics.

**繁體中文**

整合空間控制、分散式設備協同、運行監測及診斷的專業 Runtime 環境。

**Typical Configuration｜典型配置**

Hub Pro + Gate + Panel + Sense + Sync

### 12.3 School Runtime Solution｜校園運行方案

**English**

A structured spatial runtime solution for classrooms, school buildings, and educational operations.

**繁體中文**

面向教室、校舍及教育營運的結構化 Spatial Runtime 方案。

**Typical Configuration｜典型配置**

Hub Pro / Building Controller + Gate + Panel + Sense + Supported Execution Devices

### 12.4 Building Runtime Solution｜建築運行方案

**English**

A building-scale runtime solution integrating distributed device networks, spatial orchestration, and operational management.

**繁體中文**

整合分散式設備網路、空間編排及運行管理的建築級 Runtime 方案。

**Typical Configuration｜典型配置**

Building Controller + Gate Networks + Supported Devices + Operations Console

### 12.5 Multi-Site Runtime Solution｜多場域運行方案

**English**

A coordinated runtime architecture connecting multiple ART environments through ORT services for organizational visibility, site management, and operational reporting.

**繁體中文**

透過 ORT 服務連接多個 ART 環境，建立支援組織可視化、場域管理及運行報告的協同 Runtime 架構。

**Typical Architecture｜典型架構**

ORT + OceanAI Cloud + Multiple ART Controllers

ORT、OceanAI Cloud 與多個 ART 控制器。

## 13. Commercial Model｜商業模式

### 13.1 Hardware Systems｜硬體系統

**English**

Revenue from runtime controllers, distributed physical devices, and approved system configurations.

**繁體中文**

透過 Runtime 控制器、分散式實體設備及經核准的系統配置形成收入。

### 13.2 Professional Deployment｜專業部署

**English**

System planning, network configuration, device commissioning, runtime deployment, spatial configuration, and operational acceptance.

**繁體中文**

提供系統規劃、網路配置、設備調試、Runtime 部署、空間配置及運行驗收服務。

### 13.3 OceanAI Cloud Services｜OceanAI 雲端服務

**English**

Optional cloud services support remote management, organization-level access, multi-site visibility, analytics, backup, and lifecycle management.

**繁體中文**

可選雲端服務支援遠端管理、組織級存取、多場域可視化、分析、備份及生命週期管理。

### 13.4 Runtime Operations Services｜Runtime 運維服務

**English**

Professional operations services may provide runtime monitoring, fault diagnostics, operational reporting, maintenance support, and approved AI-assisted capabilities.

**繁體中文**

專業運維服務可提供 Runtime 監測、故障診斷、運行報告、維護支援及經核准的 AI 輔助能力。

### 13.5 Service Independence｜服務獨立性

**English**

Essential validated local runtime functions should remain operational without mandatory ongoing cloud subscriptions, within their supported infrastructure and configuration conditions.

**繁體中文**

在受支援的基礎設施及配置條件下，已驗證的必要本地 Runtime 功能應可在沒有強制持續雲端訂閱的情況下運行。

## 14. Sales & Channel Strategy｜銷售與渠道策略

### 14.1 Market Channels｜市場渠道

| Channel｜渠道 | Primary Offering｜主要產品 |
| --- | --- |
| Direct Sales｜直接銷售 | Artibird Hub |
| Residential Integrators｜住宅整合商 | Hub / Hub Pro |
| Professional System Integrators｜專業系統整合商 | Hub Pro / Building Controller |
| Education Solution Partners｜教育方案合作夥伴 | School Runtime Solution |
| Building Technology Partners｜建築科技合作夥伴 | Building Runtime Solution |
| Enterprise Partners｜企業合作夥伴 | Multi-Site Runtime Solution |

### 14.2 Channel Enablement｜渠道賦能

**English**

A shared runtime architecture enables standardized system integration, repeatable deployment procedures, consistent maintenance, and scalable commercial services.

Channel partners require approved product specifications, compatibility matrices, deployment guides, runtime training, and technical support procedures.

**繁體中文**

共用 Runtime 架構支援標準化系統整合、可重複的部署流程、一致的維護方式及可擴展的商業服務。

渠道合作夥伴須取得經核准的產品規格、相容性矩陣、部署指南、Runtime 培訓及技術支援流程。

## 15. Engineering & Commercial Validation｜工程與商業驗證

### 15.1 Engineering Evidence｜工程證據

**English**

Commercial capabilities must correspond to approved engineering specifications, validated deployment configurations, measured performance, and documented operating conditions.

**繁體中文**

商業能力須對應經核准的工程規格、已驗證部署配置、實測性能及明確記錄的運行條件。

### 15.2 Validation Matrix｜驗證矩陣

| Capability｜能力 | Required Evidence｜必要證據 |
| --- | --- |
| ART Local Operation｜ART 本地運行 | Local runtime functional tests｜本地運行功能測試 |
| Cross-Space Coordination｜跨空間協同 | Multi-room and multi-zone testing｜多房間及多區域測試 |
| Multi-Site Coordination｜多場域協同 | Cross-site integration tests｜跨場域整合測試 |
| Runtime Continuity｜運行連續性 | Cloud-disconnection and recovery testing｜雲端斷線及恢復測試 |
| Device Capacity｜設備容量 | Workload-based validation｜依工作負載驗證 |
| Runtime Observability｜運行可觀測性 | Traceable states, events, and metrics｜可追溯狀態、事件及指標 |
| Operations Agent｜運維代理 | Diagnostic accuracy and evidence review｜診斷準確性及證據審查 |
| Security｜安全 | Security testing and applicable compliance｜安全測試及適用合規驗證 |

### 15.3 Commercial Claim Governance｜商業宣稱治理

**English**

Commercial materials must distinguish released capabilities, validated features, pilot implementations, planned services, and research activities.

Claims involving unlimited capacity, guaranteed uptime, universal compatibility, autonomous AI recovery, or quantified energy savings require formal supporting evidence.

**繁體中文**

商業資料必須明確區分已發布能力、已驗證功能、試點實作、規劃服務與研究項目。

涉及無限制容量、保證不中斷、全面相容、AI 自主恢復及量化節能效果的宣稱，必須具有正式支持證據。

## 16. Go-to-Market Roadmap｜市場推進路線

### Phase 1 — ART Local Runtime｜ART 本地運行

**English**

Validate the shared ART runtime foundation through controlled Hub deployments, establishing reliable local operation, device coordination, and repeatable commissioning.

**繁體中文**

透過受控 Hub 部署驗證共用 ART Runtime 基礎，建立可靠的本地運行、設備協同及可重複的調試流程。

### Phase 2 — Professional Runtime｜專業運行

**English**

Extend validated ART capabilities through Hub Pro with advanced monitoring, diagnostics, and professional runtime management.

**繁體中文**

透過 Hub Pro 擴展已驗證的 ART 能力，提供進階監測、診斷及專業 Runtime 管理。

### Phase 3 — Building Runtime｜建築運行

**English**

Deploy Building Controller for validated multi-floor, multi-zone, and building-scale runtime coordination.

**繁體中文**

透過 Building Controller 實現經驗證的多樓層、多區域及建築級 Runtime 協同。

### Phase 4 — ORT Multi-Site Coordination｜ORT 多場域協同

**English**

Extend the operating architecture across multiple sites through ORT services, organization-level management, and coordinated runtime visibility.

**繁體中文**

透過 ORT 服務、組織級管理及協同 Runtime 可視化，將運行架構延伸至多個場域。

### Phase 5 — Runtime Intelligence｜運行智能

**English**

Expand runtime intelligence through log analysis, evidence-based diagnostics, operational reporting, and subsequently validated human-approved recovery workflows.

**繁體中文**

透過日誌分析、證據化診斷及運行報告擴展 Runtime 智能，並在後續引入經驗證、受人工審批保護的恢復工作流程。

These phases describe commercial capability expansion. Engineering activities may proceed in parallel, subject to dependencies and validation requirements.

以上階段描述商業能力擴展順序。工程活動可依依賴關係及驗證要求並行推進。

## 17. Brand & Product Messaging｜品牌與產品訊息

### OceanAI

**Intelligent Space Systems Architecture**

智能空間系統架構

**Core Mission｜核心使命**

We keep intelligent spaces running and acting as one, so people can live well.

我們讓智能空間持續運行、協同如一，讓人們生活得更好。

### OceanAI Runtime — ORT

**Cross-Space & Multi-Site Runtime Coordination**

跨空間與多場域 Runtime 運行協調

### ArtiOS Runtime — ART

**Local Runtime Execution & Spatial Coordination**

本地 Runtime 執行與空間協同

### Artibird

**Where OceanAI Becomes Physical.**

OceanAI 進入實體世界的產品形態。

### Artibird Hub Series

**Local Runtime Infrastructure for Intelligent Spaces.**

智能空間的本地 Runtime 運行基礎設施。

### Artibird Hub

**Local Intelligence. Continuous Living.**

本地智能，生活持續運行。

### Artibird Hub Pro

**Intelligence in Operation.**

智能，在運行之中。

### Artibird Building Controller

**Keep Buildings Running as One.**

讓建築持續運行，協同如一。

**Brand Governance｜品牌管理**

Product-level promotional statements remain subject to brand approval.

產品級宣傳語仍須經品牌審閱與正式批准。

## 18. Document Governance｜文件治理

### 18.1 Commercial Specification｜商業規格書

**English**

Describes product positioning, customer value, product tiers, application markets, pricing, service offerings, and commercial release boundaries.

**繁體中文**

描述產品定位、客戶價值、產品分級、應用市場、定價、服務方案及商業發布邊界。

### 18.2 Engineering Specification｜工程規格書

**English**

Specifies system architecture, interfaces, hardware, software, reliability, security, and acceptance requirements.

**繁體中文**

規範系統架構、接口、硬體、軟體、可靠性、安全與驗收要求。

### 18.3 Product Datasheet｜產品資料表

**English**

Publishes approved customer-facing product capabilities and technical specifications.

**繁體中文**

向客戶發布經核准的產品能力及技術規格。

### 18.4 REVIEW.md｜成果審閱報告

**English**

Records evidence, completion, quality, unresolved issues, approval status, and improvement requirements.

**繁體中文**

記錄證據、完成度、品質、未解事項、審批狀態及改進要求。

## 19. Revision History｜版本紀錄

| Version｜版本 | Date｜日期 | Description｜修訂內容 |
| --- | --- | --- |
| v1.0-Final | 2026-05-08 | Original Hub Commercial Specification｜原始 Hub 商業規格 |
| v2.0 | 2026-11-17 | Three-tier controller portfolio｜三級控制器產品組合 |
| v2.1 | 2026-11-17 | Commercial model and release governance｜商業模式及發布治理 |
| v2.2 | 2026-11-17 | Premium technology positioning and brand language｜高階技術定位及品牌語言 |
| v2.3 Consolidated Draft | 2026-11-17 | ORT / ART, Cross-Space, Multi-Site, Act as One, product classification correction｜整合 ORT／ART、跨空間、多場域、協同如一及產品分類修訂 |

## 20. REVIEW.md｜本次成果審閱

**Document｜文件：** ARTIBIRD-HUB-COM-001  
**Version｜版本：** v2.3 Consolidated Revision  
**Status｜狀態：** Author Review Required｜待作者審閱

### Completed｜已完成

- **Architecture Positioning｜架構定位：** OceanAI 智能空間系統架構已整合。
- **ORT / ART｜全局與本地運行：** 完整區分跨空間、多場域協同與本地運行責任。
- **Act as One｜協同如一：** 納入第二章核心原則與整體產品敘事。
- **Architectural Principles｜架構原則：** 保留 Archipelago Architecture、Liquid Runtime、Spatial Orchestration 與 Continuous Runtime 的關係。
- **Product Portfolio｜產品組合：** 保留 Hub、Hub Pro、Building Controller 三級定位。
- **Product Classification｜產品分類：** 將 Flow 明確歸入擴展產品線。
- **Commercial Structure｜商業結構：** 保留價格、場域、市場、服務與渠道安排。
- **Brand Language｜品牌語言：** 統一技術高度、系統語彙及商業表達。

### Pending Validation｜待驗證

- Original nine core product lines complete catalog｜原有九大核心產品線完整名錄
- Hardware configurations and capacities｜硬體配置與容量
- Cross-space and multi-site performance｜跨空間及多場域性能
- Pricing and financial review｜定價與財務審核
- Operations Agent release readiness｜Operations Agent 發布準備
- Certification and customer-facing claims｜認證及對外商業宣稱

### Quality Assessment｜品質評估

**English**

Version 2.3 establishes a coherent commercial architecture connecting OceanAI's Intelligent Space Systems Architecture, ORT system-wide coordination, ART local operation, and Artibird's distributed physical device system.

The principle of Act as One connects architectural structure, runtime coordination, and physical action while preserving clear responsibilities across the system.

**繁體中文**

v2.3 建立了完整一致的商業架構，將 OceanAI 智能空間系統架構、ORT 全局協同、ART 本地運行與 Artibird 分散式實體設備系統連結為同一套產品體系。

Act as One｜協同如一 將架構結構、Runtime 協調與物理行動連結起來，同時維持系統各層級清晰的責任邊界。

**Approval Status｜審批狀態**

Ready for Author Review｜可供作者審閱

**Document End｜文件結束**
