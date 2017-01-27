def nyc_pigeon_organizer(pigeon_data)
    pigeon_list={}
        pigeon_data.map{|attribute,attvals| 
         attvals.map{|vals,names| 
         names.map{|name|  
              if !pigeon_list.include?(name)
              pigeon_list[name]={}
              end
              if !pigeon_list[name].has_key?(attribute)
                pigeon_list[name][attribute]=[vals.to_s]
              else
                pigeon_list[name][attribute]<<vals.to_s
              end
                    }
                  }
                    }
pigeon_list
end

=begin FIRST ATTEMPT seperate correctly need to populate attributes
def nyc_pigeon_organizer(pigeon_data)
  pigeon_list={}
   pigeon_data.map{|attribute,attchoice| if !pigeon_list.include?(pigeon_list[attribute])
              attchoice.map{|choice,name| if !pigeon_list.include?(pigeon_list[choice])
               name.map{ |k,v|  if !pigeon_list.include?(pigeon_list[k])
             pigeon_list[k]=pigeon_data.keys

           end}
           end    }
  end
   }
 pigeon_list.inspect
  end


nyc_pigeon_organizer(pigeon_data)
=end
