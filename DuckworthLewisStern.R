dls=read.csv("DuckworthLewisStern.csv",sep=",")
r1=1
r2=1
ch=1
inn=1
while(inn<=2){
  while(r1>0 && r2>0 && ( ch==1 || ch==2)){
    cat("1.Interruption \n2.Restart \n3.Get Target \n")
    ch=as.integer(readline(prompt="Enter your choice"))
    if(ch==1){
      overs_lost=as.integer(readline(prompt="Enter overs left"))
      wickets_lost=as.integer(readline(prompt="Enter wickets lost"))
      overs=50-overs_lost;
      if(inn==1){
        r1=r1-dls[overs_lost][wickets_lost]
      }
      else{
        r2=r2-dls[overs_lost][wickets_lost]
      }
    }
    if(ch==2){
      overs_gained=as.integer(readline(prompt="Enter overs gained"))
      wickets_lost=as.integer(readline(prompt="Enter wickets lost"))
      overs=50+overs_gained;
      if(inn==1){
        r1=r1+dls[overs_gained][wickets_lost]
      }
      else{
        r2=r2+dls[overs_lost][wickets_lost]
      }
    }
    if(ch==3){
      if(inn==1){
        score=as.integer(readline(prompt="Enter Score of team 1"))
        r2=dls[overs][10]
        target=score+245*r2-r1/100
        inn=inn+1
      }
      else{
        target=score*r2/r1
        inn=inn+1
      }
    }
  }
}