%Function that computes fizz, buzz and fizzbuzz
%n = number of iterations, a = multiple to check for fizz, b = multiple to check for buzz
function [y] = fizzbuzz(n,a,b)
x = [1:n];
y = string(x);
for i = 1 : n 
    if mod(x(i),a) == 0 & mod(x(i),b) ~=0
        y(i) = "Fizz";
    else if mod(x(i),a) ~= 0 & mod(x(i),b) ==0
            y(i) = "Buzz";
        else if mod(x(i),a) == 0 & mod(x(i),b) ==0
                y(i) = "FizzBuzz";
            end
        end
    end
end