type season = Spring | Summer | Autumn | Winter;;

let squirrel_play (deg:int) (season:season):bool = match season with
  Summer -> if deg<15 || deg>35 then false else true
| _ -> if deg<15 || deg>30 then false else true;;