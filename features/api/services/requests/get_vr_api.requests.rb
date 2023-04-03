class GetVrApi

    include HTTParty
  
    base_uri URL_VR
    default_options.update(verify: false)
  
    def get_vr_api
      
        response = self.class.get("/VRPAT")

    end

    def print_type_of_establishment

        get_estabelecimento = GetVrApi.new
        estabelecimento = get_estabelecimento.get_vr_api

        i = rand (1..estabelecimento['typeOfEstablishment'].length)

        puts(estabelecimento['typeOfEstablishment'][i])
      
    end
  
end