defmodule ExDemo do
  # sample2
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
end
