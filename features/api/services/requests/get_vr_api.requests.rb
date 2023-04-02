class GetVrApi

    include HTTParty
  
    base_uri URL_VR
    default_options.update(verify: false)
  
    def get_vr_api
      
        response = self.class.get("/VRPAT")
      
    end
  
end