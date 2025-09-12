# Starbugs: Automação Web com Capybara

## 📚 Curso - BDD Experience
Esta atividade foi desenvolvida como parte do curso BDD Experience (por **Fernando Papito** na Udemy). O foco é aprender e aplicar automação de testes com abordagem **Behavior Driven Development (BDD)** e **Cucumber** utilizando **Capybara** na aplicação fictícia **Starbugs**.

## 🛠️ Tecnologias Utilizadas
- **Ruby** – Linguagem principal
- **Cucumber** – Framework BDD
- **Capybara** – Automação de navegação
- **Selenium WebDriver** – Driver para browsers
- **RSpec** – Ferramenta de testes para aplicações escritas em Ruby

![Evidência de teste:](docs/screenshots/4200.png)

## 🚀 Como Executar

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/isadoraada/starbugs-bdd-tests
   cd starbugs-bdd-tests
   ```
2. **Instale as dependências:**
   ```bash
   bundle install
   ```
3. **Execute todos os testes:**
   ```bash
   bundle exec cucumber
   ```
4. **Execute o teste que desejar:**
   ```bash
   //Adicione @temp no cenário que deseja executar no arquivo feature
   
   bundle exec cucumber -t @temp
   ```
5. **Execute testes de fumaça:**
   ```bash
   //Adicione @smoke no cenário que deseja executar no arquivo feature

   bundle exec cucumber -t @smoke
   ```