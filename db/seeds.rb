10.times do |n|
    name  = "Category #{n+1}"
    Category.create! name: name
end

10.times do |n|
    name  = "Lesson #{n+1}"
    id = n+1
    Lesson.create!(name: name,
      category_id: id)
end

50.times do |n|
    word  = "Question #{n+1}"
    id = rand(1...10)
    Question.create!(word: word,
      category_id: id)
end

50.times do |n|
    random = rand(0...4)
    4.times do |m|
        mean  = "mean #{m+1}"
        correct = false
        if m == random
            correct = true
        end
        Answer.create!(mean: mean,
            question_id: n+1,
            correct: correct)
        end
end


