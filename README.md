# Rapidão - Frontend do administrador

Esse repositório abrange a solução frontend da parte de administrador do projeto Rapidão 


# Link Protótipo do figma

- [Protótipo do figma](https://www.figma.com/proto/bJqOhT34LFld1FHS8quWsq/Ru-Rapid%C3%A3o?node-id=78%3A3&scaling=min-zoom&page-id=49%3A407)

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
