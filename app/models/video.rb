class Video < ActiveRecord::Base
    def nex
        Video.where("id > ?", id).first
    end
    
    def prev
        Video.where("id < ?", id).last
    end
    
end
