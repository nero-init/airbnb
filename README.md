**Projeto de Tratamento de Dados do Airbnb - README**

Este repositório contém o código e os recursos utilizados para tratar uma tabela de dados do Airbnb do Rio de Janeiro. O objetivo principal é preparar os dados para análises posteriores ou para alimentar modelos de machine learning.

**Histórico de Commits:**

- **Apr 29, 2024:**
    - Finalização dos tratamentos v2
    - Finalização dos tratamentos

- **Apr 27, 2024:**
    - Bronze\Silver\Gold Prontas, iniciar algumas análises
    - Commit antes de executar tabelabronze.sql
    - GX DBT funcionando, finalização da camada bronze e start da Silver

- **Apr 26, 2024:**
    - GX funcionando com Postgres
    - Alterações do DBT V3
    - Alterações do DBT
    - Alterações do DBT
    - Inclusão de comentários, exclusão do ipynb Projeto, para centralizar tudo no main.py. Implementada a função do Dataframe a partir do banco.

- **Apr 25, 2024:**
    - Início geral, DBT funcionando e início do tratamento de dados

Este projeto foi 100% integrado com o PostgreSQL para armazenamento e manipulação eficiente dos dados. Uma lógica interessante implementada foi o preenchimento da tabela de preços (price) através do mapeamento da média dos imóveis dos bairros onde estavam localizados. Além disso, a mesma abordagem foi utilizada para tratar dos valores outlier da tabela minimum_nights.

**Views Focadas:**
- **airbnb_listings:** Visão principal dos dados do Airbnb.
- **tabelabronze:** View resultante da camada de bronze.
- **tabelasilverinit:** View inicial da camada de prata.
- **tabelasilverend:** View final da camada de prata.
- **tabelasilvermid:** View intermediária da camada de prata.
- **tabelagoldinit:** View inicial da camada de ouro.

**Instruções de Uso:**

1. Clonar este repositório para sua máquina local.
2. Executar o código conforme descrito nos commits relevantes para a fase desejada do projeto.
3. Consultar a documentação dos recursos utilizados para mais detalhes sobre seu funcionamento e configuração.

**Contribuições:**

Contribuições são bem-vindas! Se você encontrou algum problema, tem uma sugestão ou deseja contribuir de alguma forma, sinta-se à vontade para abrir uma issue ou enviar um pull request.

**Licença:**

Este projeto é licenciado sob a [MIT License](LICENSE).
