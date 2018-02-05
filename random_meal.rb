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
        puts "エンターキーを押したよ"
        random_meal
    else
        random_meal(false)
    end
end


random_meal
