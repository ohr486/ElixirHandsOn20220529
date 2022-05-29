class Monte
  N = 1000000 # 試行数

  def self.try
    start_time = Time.now.strftime('%s%L').to_i
    pi = monte_method(N)
    end_time = Time.now.strftime('%s%L').to_i
    diff = end_time - start_time

    puts("試行数:#{N}")
    puts("計算時間:#{diff}sec")
    puts("円周率:#{pi}")
  end

  def self.monte_method(n)
    point = 0

    n.times.each_with_index do |i|
      x = Random.rand
      y = Random.rand

      point += 1 if x*x+y*y < 1.0
    end

    4.0 * point / n
  end
end

Monte.try
