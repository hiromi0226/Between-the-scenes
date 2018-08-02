def calculate_result(point_total)
    if point_total > 35 && point_total < 70
        return "New York"
    elsif point_total > 70 && point_total < 105
        return "Europe"
    elsif point_total > 105 && point_total < 140
        return "Hawaii"
    else
        return "United States"
    end
end
