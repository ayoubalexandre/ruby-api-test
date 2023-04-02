# encoding: utf-8
# language:pt

@web
@vr-informacoes
Funcionalidade: Obter informações sobre os produtos VR
  Como API
  Quero recuperar as informações dos produtos VR
  Para conhecer os produtos e estabelecimentos

  @#alexandre_ayoub
  @%vr_get_api
  @vr_api_get
  Cenário: Obter informações dos produtos VR
    Quando realizar a requisição GET para o endpoint VRPAT
    Então receber as informações dos produtos e estabelecimentos vr

  @#alexandre_ayoub
  @%vr_get_api
  @vr_api_get_validar_chave
  Cenário: Validar se o retorno da API contém a chave typeOfEstablishment
    Quando realizar a requisição GET para o endpoint VRPAT
    Então validar se a chave typeOfEstablishment está presente no retorno

  @#alexandre_ayoub
  @%vr_get_api
  @vr_api_get_imprimir_chave
  Cenário: Imprimir uma chave typeOfEstablishment retornada na consulta get
    Quando realizar a requisição GET para o endpoint VRPAT
    Então imprimir uma chave typeOfEstablishment aleatória