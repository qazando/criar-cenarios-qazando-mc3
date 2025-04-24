Feature:Cadastrar usuários no sistema QAZANDO Shop-Ecommerce

#validar gerador de casos de teste - nova ferramenta qazando
#os cenários abaixo foram gerados automaticamente a partir da tela de cadastro do site: https://automationpratice.com.br


  Scenario: Successful user registration
    Given the website displays the "User Registration" page
    When the user fills in "João da Silva" in the "Nome" field
      And fills in "joao.silva@example.com" in the "E-mail" field
      And fills in "example123" in the "Senha" field
      And clicks on the "Cadastrar" button
    Then the website should be redirected to the registration confirmation page

  Scenario: Registering without filling in the name field
    Given the website displays the "User Registration" page
    When the user leaves the "Nome" field blank
      And fills in "joao.silva@example.com" in the "E-mail" field
      And fills in "example123" in the "Senha" field
      And clicks on the "Cadastrar" button
    Then the Website should display an error message "O campo nome deve ser prenchido"

  Scenario: Registering without filling in the E-mail field
    Given the website displays the "User Registration" page
    When the user fills in "João da Silva" in the "Nome" field
      And the user leaves the "E-mail" field blank
      And fills in "example123" in the "Senha" field
      And clicks on the "Cadastrar" button
    Then the Website should display an error message "O campo e-mail deve ser prenchido corretamente"

#    No teste manual, não exibe a mensagem de erro para o campo senha.
#  Scenario: Registering without filling in the Senha field
#    Given the website displays the "User Registration" page
#    When the user fills in "João da Silva" in the "Nome" field
#      And fills in "joao.silva@example.com" in the "E-mail" field
#      And the user leaves the "Senha" field blank
#      And clicks on the "Cadastrar" button
#    Then I see an error message saying "O campo Senha deve ser prenchido"
