# Método de trabajo

Todo el material se diseña según el **Programa Curricular de Educación Primaria (EBR, Perú)**.

## 1. Orden: grado → área → recurso

```
materialalumno/grado-N/<area>/<recurso>/     juego o programa para el alumno (público)
materialdocente/grado-N/<area>/<recurso>/    herramienta para el docente (público)
materialdoc/grado-N/<area>/<recurso>/        material de venta para el docente (privado)
materialalum/grado-N/<area>/<recurso>/       material de venta para el alumno (privado)
```

| Ciclo | Grados | Lo que dice el programa |
|---|---|---|
| III | 1.º y 2.º | Pensamiento concreto. Aprenden **jugando** y con situaciones concretas. |
| IV | 3.º y 4.º | Más cálculo mental y producción de textos. Pedagogía activa y trabajo en equipo. |
| V | 5.º y 6.º | Pensamiento operativo. Buscan información, cooperan y comunican resultados. |

Nombres de las carpetas de área: `matematica`, `comunicacion`, `personal-social`, `ciencia-tecnologia`, `ingles`, `arte-cultura`, `educacion-fisica`, `castellano-segunda-lengua`, `educacion-religiosa`.

Para el nombre de cada recurso se usa `kebab-case` y un nombre descriptivo, por ejemplo `sumas-hasta-20`.

## 2. Métodos

- **Enfoque por competencias:** cada recurso trabaja un **desempeño concreto** del grado, tal como aparece en el programa.
- **Aprendizaje basado en juegos:** se aprende jugando, con retos cortos, retroalimentación inmediata y premios (estrellas, logros).
- **Secuencia didáctica:** cada material sigue tres momentos:
  - **Inicio:** motivación y saberes previos.
  - **Desarrollo:** el juego o la actividad.
  - **Cierre:** reflexión y metacognición.
- **Método propio de cada área:**
  - Matemática: resolución de problemas en 4 pasos de Pólya (comprender, planificar, resolver, comprobar).
  - Comunicación: enfoque comunicativo, con textos reales y con propósito.
  - Ciencia y Tecnología: indagación (pregunta → hipótesis → experimento → conclusión).
  - Personal Social: casos de la vida cotidiana y deliberación.
- **Evaluación formativa:** criterios claros y una lista de cotejo o rúbrica en el material docente.
- **Atención a la diversidad:** niveles de dificultad, apoyo visual y de audio, y textos cortos.

## 3. Ficha obligatoria de cada recurso (`README.md`)

```
Grado:        1.º (ciclo III)
Área:         Matemática
Competencia:  Resuelve problemas de cantidad
Capacidad:    Usa estrategias y procedimientos de estimación y cálculo
Desempeño:    (copiado del programa curricular)
Método:       Aprendizaje basado en juegos + Pólya
Duración:     15 min
Cómo usarlo:  ...
```

## 4. Reglas técnicas de los juegos

- Un solo archivo `index.html` que funcione sin internet y en cualquier navegador, también en laptops sencillas.
- Botones grandes, letra clara y uso con mouse o pantalla táctil.
- Sin publicidad, sin registro y sin recoger datos de los niños.
- Usan los colores y el logo de la [marca](marca/).
