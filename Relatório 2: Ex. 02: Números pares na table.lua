math.randomseed(os.time())
a = {} -- table

x = 0 -- contador de numeros pares
for i=1, 100, 1 do
  a[i] = math.random(1,100)
  tonumber(a[i])

  if a[i] % 2 == 0 then
    x = x+1 -- numero par no indice i
  end
end

-- imprimindo o resultado
print(x)
