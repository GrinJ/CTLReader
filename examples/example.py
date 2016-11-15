from src.CTLReader.CTLReader import CTLReader

#Create object
forecast = CTLReader('./examples/data/d1_mail_2015-08-20-00.ctl')

#Foop throug all the time variables
for time in range(0, forecast.tSize):

    #Set the time
    forecast.setTime(time)

    #If there are no problems
    if forecast.noProblem:

        #For example print the temperature in the middle of our area on zero model level
        if forecast.fieldExists("T2"):
            print(forecast["T2"][forecast.lat//2][forecast.lon//2])

    else:
        print("Some problem happened")