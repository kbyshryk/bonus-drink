class BonusDrink
  def self.total_count_for(amount)

    # もしボトルが3本いかならそれが飲める全ての飲み物
    return amount if amount < 3

    # 飲める本数は、 買ったボトルのうち、お店に戻す3の倍数のボトルのほかに、再帰で、お店に戻さない分＋お店から戻ってきたボーナス
    (amount - (amount % 3)) + total_count_for((amount % 3) + (amount / 3))

  end
end
