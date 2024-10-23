// Archivo de descripción de la barra de herramientas: MedUTN_Toolbar
run("Action Bar", "/plugins/ActionBar/MedUTN_Toolbar.txt");
exit;

<line>
<button> 1 line 1
label=Abrir Muestra
arg=<macro>
run("Blobs (25K)");  // Plugin para abrir una imagen de muestra de blobs
</macro>
<button> 2 line 1
label=Desenfoque Gaussiano
arg=<macro>
run("Gaussian Blur...", "sigma=5");  // Aplica desenfoque gaussiano con sigma=5
</macro>
style="background-color: #4A90E2; color: white; border-radius: 5px; padding: 10px; margin: 10px;"
<button> 3 line 1
label=Detectar Bordes
arg=<macro>
run("Enhance Contrast", "saturated=0.35");
run("Gaussian Blur...", "sigma=2");
run("Find Edges");  // Plugin para detectar bordes en la imagen
</macro>
<button> 4 line 1
label=Umbral
arg=<macro>
run("Threshold...", "lower=128 upper=255");  // Aplica un umbral a la imagen
</macro>
<button> 5 line 1
label=Visor 3D
arg=<macro>
run("3D Viewer");  // Carga un visor 3D para reconstrucción de imágenes en tres dimensiones.
</macro>
<button> 6 line 1
label=Graficar Perfil
arg=<macro>
makeLine(0, 50, 100, 50);  // Crear una línea de ejemplo en la imagen
run("Plot Profile");  // Traza un gráfico del perfil de intensidad a lo largo de una línea en la imagen
</macro>
</line>
<line>
<button> 1 line 2
label=Segmentacion Watershed
arg=<macro>
run("Watershed");  // Aplica el algoritmo de Watershed
</macro>
<button> 2 line 2
label=Invertir Colores
arg=<macro>
run("Invert");  // Invierte los colores de la imagen
</macro>
<button> 3 line 2
label=Medir
arg=<macro>
run("Measure");  // Mide áreas, perímetros, etc.
</macro>
<button> 4 line 2
label=Analizar Particulas
arg=<macro>
run("Threshold...", "lower=128 upper=255");
run("Analyze Particles...", "size=100-Infinity show=Masks");  // Analiza las partículas en la imagen
</macro>
<button> 5 line 2
label=Umbral Automatico (Otsu)
arg=<macro>
run("Auto Threshold", "method=Otsu white"); // Utiliza la segmentación automática por el método de Otsu
</macro>
<button> 6 line 2
label=Filtrar Mediana
arg=<macro>
run("Median...", "radius=2");  // Aplica un filtro de mediana con un radio de 2
</macro>
<button> 7 line 2
label=Deshacer Ultimo Cambio
arg=<macro>
run("Undo");  // Deshace el último cambio aplicado a la imagen
</macro>
</line>
// fin del archivo
