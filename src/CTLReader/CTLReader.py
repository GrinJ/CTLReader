import re
import numpy

#Simple CTL reader
class CTLReader:

    #Constructor, filename - path and filname of *.CTL file
    def __init__(self, filename):
        """
        Allows to read files of meteorological fields from the "CTF" format (ARWpost output)

        To work with the class, specify the path to the data file

        :param filename: path to the file
        :type filename: basestring
        """

        #Flag of successful file open
        self.noProblem = True

        #Main dictionary
        self.data = {}

        #Get the path for
        path = filename[0:filename.rfind("/")+1]

        try:
            #Open the file
            file = open(filename, 'r')
            data = file.read()

            #Read the main paraemtrs
            self.datafile = re.findall( 'dset\s*\^(.+?)\n', data)[0]
            self.options = re.findall( 'options\s*(.+?)\s*\n', data)[0]
            self.Xsize = re.findall( 'xdef\s*([0-9]+)\s*linear', data)[0]
            self.Ysize = re.findall( 'ydef\s*([0-9]+)\s*linear', data)[0]
            self.zType = re.findall('zdef\s*([0-9]+)\s*(linear|levels)', data)[0][1]
            self.zSize = int(re.findall('zdef\s*([0-9]+)\s*(linear|levels)', data)[0][0])
            self.lat = int(re.findall( 'pdef\s*(\d+)\s*(\d+)\s*lcc', data)[0][1])
            self.lon = int(re.findall( 'pdef\s*(\d+)\s*(\d+)\s*lcc', data)[0][0])
            self.tSize = int(re.findall( 'tdef\s*([0-9]+)\s*(.+?)\s+(.+?)\s+(.+?)\s*\n', data)[0][0])
            self.startTime = re.findall( 'tdef\s*([0-9]+)\s*(.+?)\s+(.+?)\s+(.+?)\s*\n', data)[0][2]
            self.timeInterval = re.findall( 'tdef\s*([0-9]+)\s*(.+?)\s+(.+?)\s+(.+?)\s*\n', data)[0][3]

            #Try to fill levels tuple with model levels or Isobaric levels
            if self.zType == 'linear':
                self.levels = [i for i in range(0, self.zSize)]
            else:
                #Find string with levels
                sub = re.findall( 'levels(.+?)tdef', data, re.DOTALL)

                #Find numbers in that string
                levels = re.findall( '[-+]?\d*\.\d+|\d+', sub[0] )

                #Convert values
                self.levels = [float(i) for i in levels]

            #Read all comments
            self.comments = {}
            __split = data.split("\n")
            for split_str in __split:
                search = re.findall('@\s*global\s*String\s*comment\s*(.+?)\s*=\s*(.+?)\n', split_str + "\n")
                if search.__len__() != 0:
                    self.comments[search[0][0]] = search[0][1]

            #Get info about available variables
            values = re.findall('VARS\s*([0-9]+)\s*\n(.+?)ENDVARS\n', data, re.S)
            stringVars = values[0][1].split("\n")
            self.vars = {}
            count = 0

            #Parse the variables from file
            for var in stringVars:
                find = re.findall('(.+?)\s+(\d+)\s*(\d+)\s*(.+?)\n', var + "\n")
                if find.__len__() == 1:
                    val = {}
                    val['var'] = find[0][0]
                    val['hgt'] = int(find[0][1])
                    val['desc'] = find[0][3]
                    self.vars[count] = val
                    count += 1

            #Open binary file and read it
            self.numbers = numpy.fromfile(path + self.datafile, dtype='>f')

            #Convert 1D array to 4D array
            self.__data = numpy.reshape(self.numbers, (self.tSize, self.__getHGT(), self.lat, self.lon))

            # Create data dictionary
            self.result = {}

            #Let's try to read the binary file
            for time in range(0, self.tSize):
                self.result[time] = {}
                __hgt = 0
                for var, value in self.vars.items():
                    self.result[time][value['var']] = {}
                    for hgt in range(0, value['hgt']):
                        self.result[time][value['var']][hgt] = numpy.array( self.__data[time][__hgt] )
                        __hgt += 1

            #Set the default value
            self.data = self.result[0]

        #Exception when cant open CTL or DAT file
        except IOError:
            self.noProblem = False

    #Calculates result heigth value of all variables
    def __getHGT(self):
        __hgt = 0
        for var, value in self.vars.items():
            __hgt += value['hgt']
        return __hgt


    def setTime(self, time):
        """
        Set the time value from zero to tSize

        :param time: time number from zero to tSize
        :type time: int
        """
        if time < self.tSize:
            self.data = self.result[time]
        else:
            self.noProblem = False


    def fieldExists(self, field):
        """
        Check if variable does or not exists
        :param field: field name from VARS section
        :type field: str
        :return: True if exists, False if not
        :rtype: bool
        """
        for num, value in self.vars.items():
            if value['var'] == field:
                return True
        return False

    #Returns the value by the given key
    def __getitem__(self, pos):
        return self.data[pos][0]