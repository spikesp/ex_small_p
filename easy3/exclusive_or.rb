def xor?(op1, op2)
  if op1 && op2 == true or ((op1 == false) && (op2 == false))
    puts false
  else
    puts true
  end
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false