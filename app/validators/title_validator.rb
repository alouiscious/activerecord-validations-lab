class TitleValidator < ActiveModel::Validator
  def validate(record)
    @clickbait = ["Won't Believe", "Secret", "Top 5", "Guess"]
    @clickbait.each do |bait|
      unless record.title.match?(bait)
          record.errors[:title] << "We're only publishing post which contain Won't Believe, Secret, Top 5, or Guess."
      end
    end
    # unless record.title.match?("Won't Believe") || record.title.match?("Secret") || record.title.match?("Top 5") || record.title.match?("Guess")
    # # unless record.title.match?(/Won't Believe/, /Secret/, /Top 5/, /Guess/)
    #   record.errors[:title] << "We're only publishing post which contain Won't Believe, Secret, Top 5, or Guess."
    # end
  end
end