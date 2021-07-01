def order(str)
    if str.empty?
        return ' '
    end 
  
    array_words = str.split.sort_by{ |w| w[/[1-9]/]}
    
    return array_words.join(' ')
  end

def order2(str)
    if str.empty?
        return ' '
    end 

    arr_answ = []
    array_words = str.split
    array_words.each { |w| arr_answ[w[/[1-9]/].to_i - 1] = w }

    return arr_answ.join(' ')

end


  
  p order "4of Fo1r pe6ople g3ood th5e the2"