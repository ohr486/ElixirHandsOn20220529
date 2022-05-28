defmodule ExDemo.Monte do
  def try1 do
    # 試行数
    n = 100000000

    start_time = :os.system_time(:millisecond) # 計算開始
    pi = monte_method(n)
    end_time = :os.system_time(:millisecond) # 計算終了

    diff = end_time - start_time
    IO.puts("calc_time:#{diff}msec")
    IO.puts("pi:#{inspect pi}")
  end

  def monte_method(n) do
    monte_method(n, n, 0)
  end

  defp monte_method(0, n, point) do
    4.0 * point / n
  end

  defp monte_method(i, n, point) do
    new_point = check_new_point(point) 
    monte_method(i-1, n, new_point)
  end

  defp check_new_point(point) do
    x = :rand.uniform
    y = :rand.uniform
    if x*x+y*y < 1.0 do
      point + 1
    else
      point
    end
  end
end
