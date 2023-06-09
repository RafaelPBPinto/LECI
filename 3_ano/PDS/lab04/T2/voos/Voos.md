---
# Global Info
author: Rafael Cinta Ferreira
title: Voos
description: Notas e apontamentos para o exercicio voos

# Global Vars
marp: true
theme: gaia
class: invert
paginate: true
_paginate: false
style: |
  .columns {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 1rem;
  }
---

# <!--fit-->Voos :airplane:

---

# <!-- align:center --> Indice

- [Objetivo](#3)
- [Entidade/Relação](#4)
- [Objetivo](#3)

---

# Objetivo

O objetivo é desenvolver um programa para gerir voos e reservas. Analise os requisitos e planeie cuidadosamente as interfaces, classes, e estruturas de dados mais adequadas.

<!-- footer: Voos -->

---

# <!-- fit  --> Entidade/Relação

Vamos tentar criar um modelo de entidade relação para melhor compreensão deste exercício.

Em primeira instância temos que compreender quais as entidades que aqui existem. E de seguida quais as relações e os atributos destas.

<!-- footer: 1. DER -->

---

# Entidades:

- Voo
- Avião
- Filas
- Lugares
- Reserva

---

# Atributos

<div class="columns">
<div>

- Voo:
  - Código alphaNum
  - Avião
- Avião:
  - Classes
- Filas:
  - Número

</div>
<div>

- Lugares:
  - Letra
- Reserva:
  - Classe
  - Passageiros

</div>
</div>

---

# Relações

- Avião tem voo
- Voo tem filas
- Filas têm lugares
- Voos têm reservas
- Reserva têm lugares

---
