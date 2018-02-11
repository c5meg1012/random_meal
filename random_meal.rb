def random_meal(first_time = true)
    if first_time
        puts "今日のご飯はなんでしょう？"
    end

    puts "エンターキーを1回だけ押してください"
    key = gets

    judge_key(key)
end

def judge_key(key)
    if key == "\n"
        select_random_meal
    else
        random_meal(false)
    end
end

STAPLE_FOOD = ["ごはん", "ごはん", "ごはん", "めん"]
MAIN_DISH = ["魚", "肉"]

def select_random_meal
    staple = STAPLE_FOOD.sample
    main = MAIN_DISH.sample

    puts "今日は【#{main}】と【#{staple}】です！"
end

random_meal
