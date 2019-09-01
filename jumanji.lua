print("You Have Become Stuck in A place called Jumanji. The only way to escape is to place the Jewel of Jumanji in its Statue")
print("Do Not Capitalize Answers")
area = "Jumanji"
active = 1
while active == 1 do
while area == "Jumanji" do
print("What do you want to do?")
x = io.read()
if x == "check map" and pathdiscovered2 ~= 1 then
	print("Your Map Shows A Statue to put the Jewel of Jumanji In. However, It does not show a path to the Statue")
	 mapchecked = 1
elseif x == "check map" and pathdiscovered2 == 1 and mapchecked ~= 1 and pathdiscovered ~= 1 then
	print("Your Map Shows A Statue to Put the Jewel of Jumanji In. You Should Double Check The Path You Saw Leads To The Statue.")
	mapchecked2 = 1
elseif x == "check map" and pathdiscovered2 ==1 and pathdiscovered == 1 and mapchecked == 1 or x == "check map" and pathdiscovered2 == 1 and pathdiscovered == 1 and mapchecked2 ==1 then
	print("Your Map Shows A Statue to put the Jewel of Jumanji In. You Should Follow The Path You Found")
elseif x == "escape" then
	print("It's Not That Easy Bud")
elseif x == "inspect" and mapchecked2 == nil and mapchecked ~= 1 then
	print("You See A Path Leading to an Unknown Place. Perhaps Checking Your Map Could Help")
	pathdiscovered2 = 1
	elseif x == "inspect" and mapchecked2 ~= 1 and pathdiscovered2 ~= 1 and mapchecked == 1 then
	print("You See a Path That Leads Towards the Statue")
	pathdiscovered = 1
	pathdiscovered2 = 1
elseif x == "inspect" and mapchecked2 == 1 and pathdiscovered2 == 1 then
	print("You See That The Path From Before Leads to the Statue")
	pathdiscovered = 1
elseif x == "follow path" and mapchecked2 ~= 1 and pathdiscovered2 == 1 and pathdiscovered ~= 1 then
	print("You Don't Know Where That Path Leads. Check Your Map First")
elseif x == "follow path" and mapchecked == 1 and pathdiscovered == nil and pathdiscovered2 == 1 then
	print("Have you Double Checked that the Path you saw Leads to the Statue?")
	elseif x == "follow path" and mapchecked == 1 and pathdiscovered == 1 and pathdiscovered2 == 1 or mapchecked2 == 1 and pathdiscovered == 1 and pathdiscovered2 == 1 then
	print("Your Follow the Path to a Clearing Containing the Statue of Jumanji")
	area = "Clearing"
else
	print("I Dont Understand")
end
end
while area == "Clearing" do
print("What do you want to do?")
x = io.read()
if x == "check map" then
print("There is no need")
elseif x == "place jewel" then
	print("Congrats You Esacped Jumanji")
	area = "Winner"
	break
elseif x == "inspect" then
	print("You See The Statue, and Nothing Else. Place the Jewel in The Statue to Escape")
elseif x == "escape" then
	print("It's Not That Easy Bud")
	else
	print("I Don't Understand")
end
end

while area == "Winner" do
print("Would You Like to Play Again?")
x = io.read()
	if x == "yes" then
	print("Okay, Restarting")
	pathdiscovered = nil
	pathdiscovered2 = nil
	mapchecked = nil
	mapchecked2 = nil
	print("Successfully Restarted")
	print("You Have Become Stuck in A place called Jumanji. The only way to escape is to place the Jewel of Jumanji in it's Statue")
	print("Do Not Capitalize Answers")
	area = "Jumanji"
	elseif x == "no" then
	print("Okay Goodbye")
	area = nil
	active = 0
	else
	print("I Don't Understand")
end
end
end
