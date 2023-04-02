#Obter informações dos produtos VR
Quando('realizar a requisição GET para o endpoint VRPAT') do
    @response = get_vr_api.get_vr_api
end
  
Então('receber as informações dos produtos e estabelecimentos vr') do
    expect(@response.code).to eql buscar_massa("code ok")
    expect(@response.body).not_to eql buscar_massa("get_vr nulo")
end

#Validar se o retorno da API contém a chave typeOfEstablishment
Então('validar se a chave typeOfEstablishment está presente no retorno') do
    expect(@response.code).to eql buscar_massa("code ok")
    expect(@response.body).to include buscar_massa("get_vr campo")
end

#Imprimir uma chave typeOfEstablishment retornada na consulta get
Então('imprimir uma chave typeOfEstablishment aleatória') do
    expect(@response.code).to eql buscar_massa("code ok")
    expect(@response.body).to include buscar_massa("get_vr campo")
    puts(@response['typeOfEstablishment'][0]['key'])
    puts(@response['typeOfEstablishment'][0]['name'])
    puts(@response['typeOfEstablishment'][0]['label'])
end