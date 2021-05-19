# Rapidão - Frontend do administrador

Esse repositório abrange a solução frontend da parte de administrador do projeto Rapidão 

## Instruções

Para executar a aplicação
1. Instale as dependências necessárias. (Ubuntu 20.04)
```bash
sudo apt-get install libgtk-3-0 libblkid1 liblzma5
sudo snap install flutter --classic
```

2. Configure o flutter e execute a aplicação
```bash
flutter channel beta
flutter upgrade
flutter config --enable-web
flutter doctor
echo "export CHROME_EXECUTABLE=\"$(which chromium-browser)\"" >> ~/.bashrc
export CHROME_EXECUTABLE=/opt/google/chrome/chrome
flutter run -d chrome
```
