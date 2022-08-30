sudo apt install python3-pip python3-dev
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv
# cd al directorio de interés
cd RUTA_DONDE_SE_ENCUENTRA_MI_PROYECTO
# En dicha ruta, se creará una carpeta que contendrá los archivos del ambient
virtualenv python_env
# Activar el ambiente
source python_env/bin/activate