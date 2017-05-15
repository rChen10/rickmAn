# ChainReaction
### by rickmAn

##### Collisions


For collisions against the wall, we checked whether or not the center of the ball plus the change in x and y
exceeds borders of the screen, then we'd multiply the change in coordinates by -1 in order to reverse the direction


For collisions against other balls, we cycled through each ball using two for loops in order to check one ball 
against all the others. We then checked if the balls collided using the dist method.


##### Explosions


For the chain reaction, we used 3 different 'states'. State 1 is the ball growing, state 2 is the ball shrinking, 
and state 4 is the ball getting "deleted" (ball doesn't go through with the reaction).