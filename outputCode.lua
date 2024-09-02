-- Function to convert Fahrenheit to Celsius
function fahrenheitToCelsius(fahrenheit)
    return (fahrenheit - 32) * 5 / 9
end

-- Function to convert Celsius to Fahrenheit
function celsiusToFahrenheit(celsius)
    return (celsius * 9 / 5) + 32
end

-- Main program
print("Temperature Converter")
print("1. Fahrenheit to Celsius")
print("2. Celsius to Fahrenheit")
io.write("Choose an option (1 or 2): ")
local choice = io.read()

if choice == "1" then
    io.write("Enter temperature in Fahrenheit: ")
    local fahrenheit = tonumber(io.read())
    local celsius = fahrenheitToCelsius(fahrenheit)
    print(string.format("%.2f Fahrenheit is %.2f Celsius", fahrenheit, celsius))
elseif choice == "2" then
    io.write("Enter temperature in Celsius: ")
    local celsius = tonumber(io.read())
    local fahrenheit = celsiusToFahrenheit(celsius)
    print(string.format("%.2f Celsius is %.2f Fahrenheit", celsius, fahrenheit))
else
    print("Invalid choice. Please select 1 or 2.")
end
