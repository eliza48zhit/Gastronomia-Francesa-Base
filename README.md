🇫🇷 Gastronomía Francesa - Smart Contract (Base Mainnet)
Este contrato inteligente celebra la sofisticación y el debate que rodea a la cocina francesa, desplegado en la red Base. Esta versión es la más avanzada de la serie gastronómica, introduciendo por primera vez una mecánica de voto negativo (Dislike).

🔗 Verificación en Basescan

El contrato está verificado y abierto a la interacción pública. Dado que la gastronomía francesa puede ser divisiva (especialmente por el uso de ingredientes como caracoles o quesos con cultivos vivos), este contrato permite a la comunidad expresar tanto su amor como su rechazo.

Contract Address: 0xf93c9f8bc2cbaa01700be9c8f5d8b7a856d1ea90

Explorer Link: https://basescan.org/address/0xf93c9f8bc2cbaa01700be9c8f5d8b7a856d1ea90#code

🛠️ Evolución Técnica: El Sistema de Reputación

A diferencia de los contratos anteriores, esta versión implementa:

Métrica de Dislike: Una nueva función darDislike para aquellos platos que no son para todos los gustos (como los quesos fermentados que pueden contener larvas o sabores extremadamente fuertes).

Estructura de Datos Dual: El struct ahora rastrea de forma independiente la aceptación y el rechazo.

Historial Permanente: Uso de mapping para asegurar que cada plato tenga su ID único y su registro de votos sea inmutable.

📖 Instrucciones de Interacción

Explorar el Menú: Usa consultarPlato con el ID 1 para ver el Ratatouille inicial.

Registrar Plato: Usa registrarPlato para añadir nuevas recetas (ej. "Casu Marzu", "Queso de oveja fermentado con larvas vivas").

Votar (Like/Dislike): Si te gusta la propuesta, usa darLike. Si el plato te parece demasiado extremo o incluye ingredientes vivos que prefieres evitar, usa darDislike.

🐈 Nota de Autoría
"En Francia, la cocina es un arte que no teme a la controversia. Como los gatos, los comensales pueden ser muy selectivos. Este contrato permite esa libertad de opinión, registrando lo bueno, lo malo y lo extravagante de la mesa francesa."
