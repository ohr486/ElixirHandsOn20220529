defmodule ExDemo.Monte do
  @try 1000000 # 試行数

  # 円周率計算
  def try1 do
    start_time = :os.system_time(:millisecond) # 計算開始
    pi = monte_method1(@try)
    end_time = :os.system_time(:millisecond) # 計算終了
    diff = end_time - start_time

    IO.puts("試行数:#{@try}")
    IO.puts("計算時間:#{diff}msec")
    IO.puts("円周率:#{inspect pi}")
  end

  def monte_method1(n) do
    monte_method1(n, n, 0)
  end

  defp monte_method1(0, n, point) do
    4.0 * point / n
  end

  defp monte_method1(i, n, point) do
    new_point = check_new_point(point) 
    monte_method1(i-1, n, new_point)
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


  # nxを使った円周率計算
  def try2 do
    start_time = :os.system_time(:millisecond) # 計算開始
    pi = monte_method2(@try)
    end_time = :os.system_time(:millisecond) # 計算終了
    diff = end_time - start_time

    IO.puts("試行数:#{@try}")
    IO.puts("計算時間:#{diff}msec")
    IO.puts("円周率:#{inspect pi}")
  end

  defp monte_method2(n) do
    x = Nx.random_uniform({n}, 0, 1, type: {:f, 32})
    y = Nx.random_uniform({n}, 0, 1, type: {:f, 32})

    # x*x+y*y
    xxyy = Nx.add(Nx.multiply(x,x),Nx.multiply(y,y))

    # 要素が1.0より大きい場合は0に変換
    less1 = Nx.less(xxyy, 1.0)

    # 1.0より小さい要素数
    point = Nx.sum(less1) |> Nx.to_flat_list |> Enum.at(0)

    4.0 * point / n
  end
end
