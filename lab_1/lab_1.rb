#11 Rudenko Olexandr lab 1

print " Enter value U: "
U_angle = gets
  print "Enter value x: "
x = gets
  print "Enter value a: "
a = gets
  print "Enter value t: "
t = gets
  print "U = " ,  U_angle, " x = " , x + " a = " , a , " t = "  , t
U,x,a,t = U_angle.to_f, x.to_f, a.to_f, t.to_f
under_root = Math.exp(x) - a **(3/2)
  if U <= 0
    print"U should be >=0!"
  elsif  under_root < 0
    print "Under the root is a negative number!"
  else
    value_left_denominator = Math.sqrt(under_root)
    if value_left_denominator == 0
      print "Division by zero on the left!"
    else
      value_in_mod = ((Math.log(U) + 16.3) / value_left_denominator).abs
      value_left = Math.cos(value_in_mod) / Math.sin(value_in_mod)

      value_right_denominator = (Math.sin(a)) ** 3
      if value_right_denominator == 0
        print "Division by zero on the right!"
      else
        value_right = (6.8 + Math.cos(Math::PI - t ** 2 ))/ value_right_denominator
        result = value_left + value_right
        print "Result = " , result
      end
    end
  end

