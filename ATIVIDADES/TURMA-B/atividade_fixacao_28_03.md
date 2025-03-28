# Atividade de Fixação - Criando Telas e Navegação em Flutter

## Objetivo:
Praticar a criação de telas e a navegação entre elas em um aplicativo Flutter.

- Instruções:
1. Criar um novo projeto Flutter
2. Criar a tela inicial (HomeScreen)
- A tela inicial deve conter:
    - AppBar personalizada com título.
    - BottomNavigationBar com ícones de navegação.
    - Imagem representando o aplicativo.
    - Botão flutuante (FloatingActionButton) para acessar a tela de cadastro.
    - Botão "Entrar" que leva para a tela de login.
 - Exemplo:
 
 ![alt text](img/tela_inicial.png)
    
3. Criar a tela de cadastro (CadastroScreen)
- Deve ser acessada pelo botão flutuante da tela inicial.
    - Deve conter um formulário com campos para nome, endedereço, cidade, estado, e-mail e senha.
    - Deve ter um botão para confirmar o cadastro.

4. Criar a tela de login (LoginScreen)
    - Deve ser acessada pelo botão "Entrar" da tela inicial.
    Deve conter campos para e-mail e senha.
    Deve ter um botão para realizar o login.

5. Implementar a navegação entre telas
    - Utilize o Navigator.push() para navegar entre as telas.

6. Testar o aplicativo
    - Execute no emulador ou dispositivo real para verificar a navegação e o funcionamento dos botões.
