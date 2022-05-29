defmodule ExDemo do
  # 02.ベクトル生成
  def ex2 do
    IO.puts "--- ex.02 ---"

    # 1x1ベクトル
    IO.inspect(Nx.tensor(10))

    # 1x3ベクトル
    IO.inspect(Nx.tensor([1,2,3]))

    # 2x3ベクトル
    IO.inspect(Nx.tensor([[1,2,3],[4,5,6]]))

    # 2x2の単位ベクトル
    IO.inspect(Nx.eye(2))

    # 3x3の単位ベクトル
    IO.inspect(Nx.eye(3))

    # 2x2
    IO.inspect(Nx.iota({2,2}))

    # 3x5
    IO.inspect(Nx.iota({3,5}))

    nil
  end

  #02.ベクトル演算
  def ex3 do
    IO.puts "--- ex.03 ---"

    a = Nx.tensor([[1,2],[3,4]])
    b = Nx.tensor([[10,10],[10,10]])
    c = Nx.tensor([[2,2,2],[3,3,3]])

    # a + b
    IO.inspect(Nx.add(a,b))

    # a - b
    IO.inspect(Nx.subtract(a,b))

    # a * 10
    IO.inspect(Nx.multiply(a, 10))

    # a / 2
    IO.inspect(Nx.divide(a, 2))

    # a・b
    IO.inspect(Nx.dot(a, c))

    nil
  end

  # 03.ランダムなベクトル
  def ex4 do
    IO.puts "--- ex.04 ---"

    # ベクトルの次元確認
    IO.inspect(Nx.shape(Nx.tensor([1,2,3])))
    IO.inspect(Nx.shape(Nx.tensor([[1,2,3],[4,5,6]])))

    # ランダムな要素のベクトル生成
    IO.inspect(Nx.random_uniform({2}, 0, 1, type: {:f, 32}))
    IO.inspect(Nx.random_uniform({3,3}, 0, 1, type: {:f, 32}))
    IO.inspect(Nx.random_uniform({3,3}, 0, 100, type: {:u, 8}))

    nil
  end
end

