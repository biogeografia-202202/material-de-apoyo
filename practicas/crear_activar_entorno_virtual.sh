# GUÍA LINUX PARA INSTALAR PYTHON Y HERRAMIENTAS PARA CREAR ENTORNOS VIRTUALES Y CUADERNOS JUPYTER

# Instala python, pip y el paquete de entornos virtuales
sudo apt install python3-pip python3-dev
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv

# Ve al directorio de interés
cd RUTA_DONDE_SE_ENCUENTRA_MI_PROYECTO

# En dicha ruta, crea el entorno virtual con esto:
virtualenv python_env
# Esto hará que, en la carpeta "python_env", se coloquen
# los archivos requeridos por el entorno virtual

# Activa el entorno virtual
source python_env/bin/activate

# Instala los paquetes geopandas y geoplot
pip install geopandas
pip install geoplot

# Instala jupyter, para disponer de los notebooks
pip install jupyter

# Carga el servidor de notebook
jupyter notebook

# Es probable que tu navegador se abra en la ruta del servidor de cuadernos Jupyter 
# Si no hiciese, ve al navegador y escribe esto en la barra de direcciones:
# localhost:8888

# Al finalizar tu trabajo, cierra la pestaña del navegador, que contiene el cuaderno,
# ve a la consola y presiona CTRL+C. Esto cerrará el servidor Jupyter

# Luego, desactiva el entorno virtual con esto:
deactivate