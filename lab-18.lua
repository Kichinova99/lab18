print('Chleni ryada, menshie 10^-5') -- na otsenku 3
function fact(x)
        y = 1
        for i = 2, x do
                y = y * i
        end
        return y
end
n = 0
an = 10^n / fact(n)
while an > 10^(-5) do
        n = n + 1
        an = 10^n / fact(n)
        print(an)
end
print('Ih kolichestvo: '..n)
print(' ')

io.write('Vvedite tochnost e: ') -- na otsenku 4
e = io.read()
e = tonumber(e)
print('Chleni ryada, menshie e')
n1 = 0
an1 = 10^n1 / fact(n1)
sum = 0
arr = {}
while an1 > e do
        n1 = n1 + 1
        an1 = 10^n1 / fact(n1)
        arr[n1] = an1
        sum = sum + an1
        print(an1)
end
print('Ih kolichestvo: '..n1)
print('Ih summa: '..sum)
print(' ')

io.write('Vvedite tochnost e: ') -- na otsenku 5
e1 = io.read()
e1 = tonumber(e1)
print('Chleni ryada, podhodyaschie pod uslovie')

n2 = 1
sum1 = 0
arr2 = {}

for i = 2, #arr do
        if math.abs(arr[i] - arr[i - 1]) > e then
                print(arr[i])
                arr2[i] = i
        end
end
print('Naimenshiy nomer elemanta: '..arr2[2])

