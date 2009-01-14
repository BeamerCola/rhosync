#
# Author: Vidal Graupera
#
# 

class LighthouseSettings < SourceAdapter
  
  include RestAPIHelpers
  
  def initialize(source)
    super
  end
  
  def query
    log "LighthouseSettings query"
    
    @result = [ {"lighthouse_id" => @source.credential.login.to_s } ]
  end
  
  def sync
    log "LighthouseSettings sync, with #{@result.length} results"
    
    @result[0].each do |key, value|
      add_triple(@source.id, "doesnotmatter", key, value.to_s)
    end
  end
  
end