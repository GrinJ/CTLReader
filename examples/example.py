from src.CTLReader.CTLReader import CTLReader

#Create object
#forecast = CTLReader('./examples/data/d1_mail_2015-08-20-00.ctl') #file with models levels
forecast = CTLReader('./examples/data/d1_mail_2015-10-24-00.ctl')  #file with isobaric levels

#Foop throug all the time variables
for time in range(0, forecast.tSize):

    #Set the time
    forecast.setTime(time)

    #If there are no problems
    if forecast.noProblem:

        #For example print the temperature in the middle of our area on zero model level
        if forecast.fieldExists("T2"):
            #print(forecast["T2"][forecast.lat//2][forecast.lon//2]) #for file with models levels
            print(forecast["T2", 1000][forecast.lat//2][forecast.lon//2]) #for file with isobaric levels

    else:
        print("Some problem happened")