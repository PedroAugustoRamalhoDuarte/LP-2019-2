intToRomano :: Int -> String
intToRomano 0 = []
intToRomano x | x > 4000 = "limite para conversão 3999"
              | x >= 1000 = "M" ++ intToRomano (x - 1000)
              | x >= 900 = "CM" ++ intToRomano (x - 900)
              | x >= 500 = "D" ++ intToRomano (x - 500)
              | x >= 400 = "CD" ++ intToRomano (x - 400)
              | x >= 100 = "C" ++ intToRomano (x - 100)
              | x >= 90 = "XC" ++ intToRomano (x - 90)
              | x >= 50 = "L" ++ intToRomano (x - 50)
              | x >= 40 = "XL" ++ intToRomano (x - 40)
              | x >= 10 = "X" ++ intToRomano (x - 10)
              | x >= 9 = "IX" ++ intToRomano (x - 9)
              | x >= 5 = "V" ++ intToRomano(x - 5)
              | x >= 4 = "IV" ++ intToRomano (x - 4)
              | x >= 1 = "I" ++ intToRomano (x - 1)
