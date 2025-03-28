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

## Critérios de Avaliação

| **Critério**                          | **Descrição**                                                              | **Pontuação** |
|---------------------------------------|----------------------------------------------------------------------------|---------------|
| **Estrutura do Projeto**              | O projeto foi criado corretamente, sem erros. Navegação entre as telas fluída. | 10 pontos     |
| **Tela Inicial (HomeScreen)**         | `AppBar` personalizado, `BottomNavigationBar` funcional, imagem e botões corretos. | 15 pontos     |
| **Tela de Cadastro (CadastroScreen)** | Formulário com campos corretos e botão de confirmação funcional.           | 20 pontos     |
| **Tela de Login (LoginScreen)**       | Campos de login e botão funcionando para simular o login.                  | 20 pontos     |
| **Navegação**                         | Navegação correta entre telas com `Navigator.push()`.                       | 15 pontos     |
| **Testes no Emulador ou Dispositivo Real** | Teste realizado no emulador/dispositivo real e responsividade verificada.   | 10 pontos     |
| **Estilo e Layout**                   | Layout organizado, esteticamente agradável e responsivo.                   | 10 pontos     |
| **Boas Práticas**                     | Código bem organizado, modularizado e uso adequado de widgets.             | 10 pontos     |
| **Total**                             |                                                                            | **100 pontos** |


- Ao finalizar compacte os arquivos de telas em uma pasta com nome_sobrenome e envie para o e-mail: erika.barrado@etec.sp.gov.br
    - Assunto: Atividades Telas 28-03
    - Mensagem: Nome Completo