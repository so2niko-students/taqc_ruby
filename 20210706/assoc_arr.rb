cars = [
    {
        :year => 2020,
        "name" => "Skoda",
        "model" => "Karoq",
        :mileage => 10000,
        :color => "blue"
    },
    {
        :year => 2008,
        "name" => "Kia",
        "model" => "Ceed",
        :mileage => 16000,
        :color => "blue"
    },
    {
        :year => 2013,
        "name" => "Kia",
        "model" => "Soul",
        :mileage => 150000,
        :color => "white"
    },
    {
        :year => 1988,
        "name" => "Peugeot",
        "model" => "405",
        :mileage => 320000,
        :color => "blue"
    },
    {
        :year => 2017,
        "name" => "Nissan",
        "model" => "Quashkai",
        :mileage => 45000,
        :color => "violet"
    },
    {
        :year => 1972,
        "name" => "ВАЗ",
        "model" => "2103",
        :mileage => 480000,
        :color => "dark red"
    },
    {
        :year => 2002,
        "name" => "Nissan",
        "model" => "X-Trail",
        :mileage => 213000,
        :color => "green"
    }
]


def minMaxYears carr
    #1
    # old_y = 9000
    # new_y = 1000

    # carr.each do |car|
    #     if old_y > car[:year]
    #         old_y = car[:year]
    #     end
    #     if new_y < car[:year]
    #         new_y = car[:year]
    #     end
    # end
    # return old_y, new_y

    #2
    carr.sort_by!{ |a| a[:year] }
    return carr[0][:year], carr[-1][:year]   
end

def milesPerY carr
    y = (Time.now).year
    carr.each { |car| car["mpy"] = car[:mileage] / (y - car[:year]) }

    return carr
end

#return hash with key(names)=>value(count)
def countNames carr
    stat = {}
    carr.each do |car|
        name = car["name"]
        # if stat.has_key?(name)
        #     stat[name] += 1
        # else
        #     stat[name] = 1
        # end
        stat[name] = stat.has_key?(name) ? stat[name] + 1 : 1
        
    end
    return stat
end

# p minMaxYears cars


# p milesPerY cars

p countNames cars
