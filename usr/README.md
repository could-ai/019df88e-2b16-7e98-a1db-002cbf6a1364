# Vaga de Estágio - Actemium

Um aplicativo Flutter que apresenta as informações e detalhes sobre a vaga de Estágio em Eletrotécnica na Actemium.

## Visão Geral do Produto
O aplicativo exibe de forma clara e organizada os requisitos, a carga horária, a bolsa-estágio e o generoso pacote de benefícios oferecidos pela empresa. Conta também com uma seção institucional que inclui um link direto para o vídeo de apresentação da Actemium.

## Funcionalidades
*   **Detalhes da Vaga**: Visualização do cargo, área e informações básicas.
*   **Requisitos e Condições**: Listagem dos requisitos da vaga (como domínio de AutoCAD 2D) e informações de carga horária e bolsa.
*   **Lista de Benefícios**: Exposição detalhada dos benefícios oferecidos aos colaboradores (Plano de Saúde, Seguro de Vida, Vale Alimentação, Refeição no local, Vale Transporte/Fretado, Total Pass e Conexa Saúde).
*   **Seção Institucional**: Breve apresentação da Actemium e link rápido para assistir ao vídeo institucional no YouTube.
*   **Ação de Candidatura**: Botão interativo para simular o interesse na vaga.

## Principais Fluxos de Usuário
1.  **Acesso à Tela Principal**: Ao abrir o aplicativo, o usuário visualiza imediatamente a descrição completa da vaga.
2.  **Visualização Institucional**: O usuário pode clicar no link "Assistir ao Vídeo Institucional" que abre o navegador ou o aplicativo do YouTube para assistir ao material da Actemium.
3.  **Candidatura**: O usuário clica em "Candidatar-se" no final da tela e recebe uma confirmação visual (SnackBar).

## Stack Tecnológica
*   **Framework**: Flutter
*   **Linguagem**: Dart
*   **Dependências Principais**: `url_launcher` (para redirecionamento ao YouTube)

## Como Configurar e Executar

1.  Certifique-se de ter o [Flutter](https://flutter.dev/docs/get-started/install) instalado.
2.  Clone o repositório.
3.  No terminal, instale as dependências:
    ```bash
    flutter pub get
    ```
4.  Execute o aplicativo:
    ```bash
    flutter run
    ```

---

## Sobre o CouldAI

Este aplicativo foi gerado com o **[CouldAI](https://could.ai)**, um construtor de aplicativos de IA para plataformas móveis, web e desktop que transforma prompts em aplicativos nativos reais usando agentes de IA autônomos que arquitetam, constroem, testam, implantam e iteram aplicações prontas para produção.