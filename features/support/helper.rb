Dir[File.join(File.dirname(__FILE__), "/services/requests/*_requests.rb")].each{|file| require file}
module HelperRequests

  def get_vr_api
    @get_vr_api ||=GetVrApi::new
  end

end