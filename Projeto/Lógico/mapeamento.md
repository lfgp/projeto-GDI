# Entidades

Pesquisador(<ins>CPF</ins>,instituição,nome,especialização);

Região(<ins>Cód_região</ins>, coordenadas_latitude, coordenadas _longitude);

Bioma(<ins>Cód_região,bioma</ins>);

    Cód_região -> Região(Cód_região)

Espécie(<ins>Nome_científico</ins>,tax_Reino, tax_Filo, tax_Classe, tax_Ordem, tax_Família, tax_Gênero);

Nome_popular(Nome_científico,nome_popular);

      Nome_científico -> Espécie(Nome_científico)

Pesquisa(<ins>Título</ins>,resultado,metodologia);

Congresso(<ins>Cód_Congresso</ins>,tema,ano,sigla);

EmpresaPública(<ins>CNPJ</ins>,nome_fantasia,ramo,órgão_regulador);

EmpresaPrivada(<ins>CNPJ</ins>,nome_fantasia,ramo,natureza_jurídica);

Reserva_ambiental(<ins>Cód_região,CNPJ,Responsável</ins>);

      Cód_região -> Região(Cód_região)

      CNPJ -> Empresa(CNPJ)


# Relacionamentos


Estuda(<ins>CPF,Cód_região,Nome_científico,data</ins>);

      CPF -> Pesquisador(CPF)

      Cód_região -> Região(Cód_região)

      Nome_científico -> Espécie(Nome_científico)

Descobre(<ins>Nome_científico_novo</ins>, [CPF,Cód_região, Nome_científico, data_estuda]!,data_descobre);

      Nome_Científico_novo -> Espécie(Nome_científico)

      (CPF,Cód_região,Nome_científico,data_estuda) -> Estuda(CPF,Cód_região,Nome_científico,data)

Faz(<ins>CPF,Título</ins>);

      CPF -> Pesquisador(CPF)

      Título -> Pesquisa(Título)

Financia(<ins>CNPJ,CPF,Título</ins>);

      (CPF,Título) -> Faz(CPF,Título)

      CNPJ -> Empresa(CNPJ)

Apresentada(<ins>Título,Cód_Congresso,situação</ins>);

      Título -> Pesquisa(Título)

      Cód_Congresso -> Congresso(Cód_Congresso)

Preservada(<ins>Cód_região,CNPJ,responsável,Nome_científico</ins>,quantidade);

      (Cód_região,CNPJ,Responsável) -> Reserva_ambiental(Cód_região,CNPJ,Responsável)

      Nome_científico -> Espécie(Nome_científico)

Orienta(<ins>Aluno</ins>,Professor!)

      Aluno-> Pesquisador(CPF)

      Professor -> Pesquisador(CPF)
