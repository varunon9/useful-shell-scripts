#value entered greater than 10 will increase brightness
echo "enter value rangimg from 5 to 10"
read x
y=4
#safety check
if [ $x -gt $y ] && [ $x -lt 20 ]
then
  z=$(echo "scale=2;$x / 10" | bc)
  xrandr --output eDP1 --brightness $z
 echo "brightness changed: $z"
else
  echo "Wrong input , enter value greater than 4 and less than 20"
fi
