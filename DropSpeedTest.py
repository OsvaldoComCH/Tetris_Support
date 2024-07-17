for level in range(1, 26):

    speed1 = round((0.8-((level-1)*0.007))**(level-1), 3)
    
    speed2 = round((0.9-((level-1)*0.007))**(level-1), 3)
    
    if(speed1 == 0): speed1 = 0.001
    if(speed2 == 0): speed2 = 0.001
    
    print(f"Level {level}:\t{speed1}\t{round(1/speed1, 2)}\t\t{speed2}\t{round(1/speed2, 2)}")
