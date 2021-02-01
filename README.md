<h1>Lista de Tarefas com Mobx e SQFlite</h1> 

<p align="center">
  <img src="https://img.shields.io/static/v1?label=dart&message=language&color=blue&style=for-the-badge&logo=DART"/>  
  <img src="https://img.shields.io/static/v1?label=flutter&message=framework&color=blue&style=for-the-badge&logo=FLUTTER"/>  
  <img src="http://img.shields.io/static/v1?label=License&message=MIT&color=green&style=for-the-badge"/>   
  <img src="http://img.shields.io/static/v1?label=TESTES&message=%3E100&color=GREEN&style=for-the-badge"/>  
   <img src="http://img.shields.io/static/v1?label=STATUS&message=CONCLUIDO&color=GREEN&style=for-the-badge"/>
</p>

> Status do Projeto: :heavy_check_mark: (concluido)
---

### 📖 Tópicos 

:small_blue_diamond: [Descrição do projeto](#-descrição-do-projeto)

:small_blue_diamond: [Funcionalidades](#-funcionalidades)

:small_blue_diamond: [Layout da Aplicação](#-layout)

:small_blue_diamond: [Pré-requisitos](#-pré-requisitos)

:small_blue_diamond: [Como execultar a aplicação](#-como-execultar-a-aplicação)

:small_blue_diamond: [Casos de uso](#-casos-de-uso)

:small_blue_diamond: [Linguagens, dependencias e libs utilizadas](#-linguagens-dependencias-e-libs-utilizadas)

:small_blue_diamond: [Desenvolvedores Contribuintes](#-desenvolvedores-contribuintes)

:small_blue_diamond: [Autor](#-autor)

--- 

## 💻 Descrição do projeto 

<p align="justify">
  Projeto realizado em Flutter, referente a um gerenciador de tarefas utilizando o banco de dados local SQFlite e a gerencia de estados MOBx. 
</p>

---

## ⚙️ Funcionalidades

:heavy_check_mark: Tela splash screen.  

:heavy_check_mark: Tela de Login, com validação de e-mail e senha.  

:heavy_check_mark: Tela Home, com a opção de incluir, atualizar e excluir uma tarefa.  

:heavy_check_mark: persistência de dados com SQFlite e gerencia de estado com MOBx. 

---

## 🎨 Layout 

<p align="center">
  <img alt="Splash" title="#Splash" src="https://user-images.githubusercontent.com/77983152/105763282-60afbc80-5f34-11eb-918e-e2e43d232385.png" width="200px">

  <img alt="Login" title="#Login" src="https://user-images.githubusercontent.com/77983152/105848445-bf6d4880-5fbd-11eb-8b9c-8d2eb0569744.png" width="200px">

  <img alt="Login_Validação" title="#Login_Validação" src="https://user-images.githubusercontent.com/77983152/105848494-cd22ce00-5fbd-11eb-898e-184c2977ef91.png" width="200px">

  <img alt="Tarefas" title="#Tarefas" src="https://user-images.githubusercontent.com/77983152/105848533-da3fbd00-5fbd-11eb-84b6-f5a9ef8a6d21.png" width="200px">
</p>

---

## 🎯 Pré-requisitos

:warning: [Flutter](https://flutter.dev/docs/get-started/install)

:warning: [Android Studio](https://developer.android.com/studio)

:warning: [Vscode](https://code.visualstudio.com/download)

---

## ▶️ Como execultar a aplicação

No terminal, clone o projeto: 

```
git clone https://github.com/AndersonD-art/tasksmobx.git
```
---

## 📌 Casos de uso

👍 Projeto inspirado no desenvolvedor e youtuber Daniel Ciolfi - https://www.youtube.com/channel/UCigaGpaR1tyjIEU0AfIcg1Q. O mesmo possui excelentes cursos na Udemy.

💬 Trata-se de um gerenciador de tarefas simples, porém que utiliza o banco de dados SQFlite para a persistencia de dados e o MOBx como gerencia de estados.

💬 De inicio ira surgi uma tela de splash screen, esta tela possui uma imagem e uma animação feita em flare. Logo após surgirá a tela de login, necessario informar um e-mail válido e uma senha com mais de 3 caracteres pois o mesmo realizar validações referentes ao e-mail e senha, estando tudo correto o botão de login será habilitado.

💬 Após o login validado a tela de tarefas(home) ira surgir, podemos incluir uma tarefa no campo tarefa, note que o mesmo somente habilita o botão de add '+' quando o campo não está vazio, após inforama a tarefa e clicar no '+', a mesma ira aparece abaixo, sendo ordenada pela data e hora. Para editar ou atualizar uma tarefa basta clicar no icone do lapis, para excluir bastar arastar a tarefa para o lado direito. após a exclusão sera mostrado um snackbar com a opção de desfazer a exclusão.

---

## 🛠 Linguagens, dependencias e libs utilizadas

- [Lab: Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

---

## 👨‍💻 Desenvolvedores Contribuintes

Um super thanks 👏 para Daniel Ciolfi pela inspiração.

---

## 🎓 Autor

 <img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/77983152?s=460&u=f61c18670116cb318cdf26e7523643a6dccb5680&v=4" width="100px;" alt=""/>
 <br />
 <sub><b>Anderson David</b></sub> ☕
 <br />
[![Linkedin Badge](https://img.shields.io/badge/-AndersonDavid-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/anderson-david-ti)](https://www.linkedin.com/in/anderson-david-ti) 
[![Hotmail Badge](https://img.shields.io/badge/-andersondavidti@hotmail.com-c14438?style=flat-square&logo=Hotmail&logoColor=white&link=mailto:andersondavidti@hotmail.com)](mailto:andersondavidti@hotmail.com)

---

## 📝 Licença 

The [MIT License]() (MIT)

Copyright :copyright: 2021 - Tasks Mobx