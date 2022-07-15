local Screen = GetPartFromPort(1, "TouchScreen")
Screen:ClearElements()
local equasion3 = {}
local equasion2 = {}
local summ = 0
local tempnum = 0
local skip = ''
local equasion = ''
local running = false
local previous = '+'
local input = Screen:CreateElement("TextLabel", {
  Text = '';
	Size = UDim2.new(1, 0, 0.333, 0);
	Position = UDim2.new(0, 0, 0, 0);
  TextSize = 40.0;
})
local seven = Screen:CreateElement("TextButton", {
	Text = "7";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0, 0, 0.333, 0);
  TextSize = 20.0;
})
local eight = Screen:CreateElement("TextButton", {
	Text = "8";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0.25, 0, 0.333, 0);
  TextSize = 20.0;
})
local nine = Screen:CreateElement("TextButton", {
	Text = "9";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0.5, 0, 0.333, 0);
  TextSize = 20.0;
})
local divide = Screen:CreateElement("TextButton", {
	Text = "/";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0.75, 0, 0.333, 0);
  TextSize = 20.0;
})
local four = Screen:CreateElement("TextButton", {
	Text = "4";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0, 0, 0.5, 0);
  TextSize = 20.0;
})
local five = Screen:CreateElement("TextButton", {
	Text = "5";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0.25, 0, 0.5, 0);
  TextSize = 20.0;
})
local six = Screen:CreateElement("TextButton", {
	Text = "6";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0.5, 0, 0.5, 0);
  TextSize = 20.0;
})
local multiply = Screen:CreateElement("TextButton", {
	Text = "*";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0.75, 0, 0.5, 0);
  TextSize = 20.0;
})
local one = Screen:CreateElement("TextButton", {
	Text = "1";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0, 0, 0.666, 0);
  TextSize = 20.0;
})
local two = Screen:CreateElement("TextButton", {
	Text = "2";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0.25, 0, 0.666, 0);
  TextSize = 20.0;
})
local three = Screen:CreateElement("TextButton", {
	Text = "3";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0.5, 0, 0.666, 0);
  TextSize = 20.0;
})
local minus = Screen:CreateElement("TextButton", {
	Text = "-";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0.75, 0, 0.666, 0);
  TextSize = 20.0;
})
local clear = Screen:CreateElement("TextButton", {
	Text = "C";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0, 0, 0.833, 0);
  TextSize = 20.0;
})
local zero = Screen:CreateElement("TextButton", {
	Text = "0";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0.25, 0, 0.833, 0);
  TextSize = 20.0;
})
local equals = Screen:CreateElement("TextButton", {
	Text = "=";
	BackgroundColor3 = Color3.fromRGB(255, 170, 0);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0.5, 0, 0.833, 0);
  TextSize = 20.0;
})
local plus = Screen:CreateElement("TextButton", {
	Text = "+";
	BackgroundColor3 = Color3.fromRGB(128, 128, 128);
	Size = UDim2.new(0.25, 0, 0.1666, 0);
	Position = UDim2.new(0.75, 0, 0.833, 0);
  TextSize = 20.0;
})

one.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      previous = '1'
      table.insert(equasion3, '1')
      equasion = equasion..'1'
      input:ChangeProperties({Text = equasion})
      running = false
    end
  end)
  two.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      previous = '2'
      table.insert(equasion3, '2')
      equasion = equasion..'2'
      input:ChangeProperties({Text = equasion})
      running = false
    end
  end)
  three.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      previous = '3'
      table.insert(equasion3, '3')
      equasion = equasion..'3'
      input:ChangeProperties({Text = equasion})
      running = false
    end
  end)
  four.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      previous = '4'
      table.insert(equasion3, '4')
      equasion = equasion..'4'
      input:ChangeProperties({Text = equasion})
      running = false
    end
  end)
  five.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      previous = '5'
      table.insert(equasion3, '5')
      equasion = equasion..'5'
      input:ChangeProperties({Text = equasion})
      running = false
    end
  end)
  six.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      previous = '6'
      table.insert(equasion3, '6')
      equasion = equasion..'6'
      input:ChangeProperties({Text = equasion})
      running = false
    end
  end)
  seven.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      previous = '7'
      table.insert(equasion3, '7')
      equasion = equasion..'7'
      input:ChangeProperties({Text = equasion})
      running = false
    end
  end)
  eight.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      previous = '8'
      table.insert(equasion3, '8')
      equasion = equasion..'8'
      input:ChangeProperties({Text = equasion})
      running = false
    end
  end)
  nine.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      previous = '9'
      table.insert(equasion3, '9')
      equasion = equasion..'9'
      input:ChangeProperties({Text = equasion})
      running = false
    end
  end)
  zero.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      previous = '0'
      table.insert(equasion3, '0')
      equasion = equasion..'0'
      input:ChangeProperties({Text = equasion})
      running = false
    end
  end)
  plus.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      if type(tonumber(previous)) == 'number' then
        table.insert(equasion3, '+')
        previous = '+'
        equasion = equasion..'+'
        input:ChangeProperties({Text = equasion})
      end
      running = false
    end
  end)
  minus.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      if type(tonumber(previous)) == 'number' then
        table.insert(equasion3, '-')
        previous = '-'
        equasion = equasion..'-'
        input:ChangeProperties({Text = equasion})
      end
      running = false
    end
  end)
  divide.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      if type(tonumber(previous)) == 'number' then
        table.insert(equasion3, '/')
        previous = '/'
        equasion = equasion..'/'
        input:ChangeProperties({Text = equasion})
      end
      running = false
    end
  end)
  multiply.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      if type(tonumber(previous)) == 'number' then
        table.insert(equasion3, '*')
        previous = '*'
        equasion = equasion..'*'
        input:ChangeProperties({Text = equasion})
      end
      running = false
    end
  end)
  equals.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      for l, b in pairs(equasion3) do
        if type(tonumber(b)) == "number" then
          if type(tonumber(equasion2[table.maxn(equasion2)])) == 'number' then
            tempnum = equasion2[table.maxn(equasion2)]
            table.remove(equasion2, table.maxn(equasion2))
            table.insert(equasion2,  tempnum..b)
          else
            table.insert(equasion2, b)
          end
        else
          table.insert(equasion2, b)
        end
      end
      for k, v in pairs(equasion2) do
        if k == 1 and type(tonumber(v)) == 'number' then
          summ = tonumber(v)
        elseif type(tonumber(v)) ~= 'number' then
          if v == '+' then
            skip = k + 1
            summ = summ + equasion2[k + 1]
          elseif v == '-' then
            skip = k + 1
            summ = summ - equasion2[k + 1]
          elseif v == '*' then
            skip = k + 1
            summ = summ * equasion2[k + 1]
          elseif v == '/' then
            skip = k + 1
            summ = summ / equasion2[k + 1]
          end
        elseif k == skip then
          skip = skip
        end
      end
      input:ChangeProperties({Text = summ})
      summ = 0
      equasion = ''
      previous = ''
      equasion3 = {}
      equasion2 = {}
      running = false
    end
  end)
  clear.MouseButton1Up:Connect(function(x, y)
    if not running then
      running = true
      wait(1/24)
      equasion = ''
      previous = ''
      equasion3 = {}
      equasion2 = {}
      input:ChangeProperties({Text = equasion})
      running = false
    end
  end)
