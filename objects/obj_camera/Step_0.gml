/// @description Follow Player

if(instance_exists(playerToFollow))
{
 x += (playerToFollow.x - x) * .1;
 y += (playerToFollow.y - y) * .1;
}
