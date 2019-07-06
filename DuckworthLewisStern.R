#Calculate Team 2's target score
team2_target = function(team1_score, team1_par, team1_resources, team2_resources){
  return((team1_score + team1_par*(team2_resources/team1_resources))) 
}

## team2_target = the final output score Team 2 requires to Win the match, taking all interruptions into account.
## team1_score = (a.k.a G50) the runs that the team batting first scores (this variable is useful if Team 1's innings is interrupted, otherwise 'team1_score' = 0).
## team1_par = the runs on average scored by the team batting first at that venue. We use this variable in place of 'team1_score'. if their innings does not get interrupted.
## team1_resources = this uses the DLS table to evaluate the resources remaining between when they started, and at the close of interruption for Team 1.
## team2_resources = this uses the DLS table to evaluate the resources remaining between when they started, and at the close of interruption for Team 2.