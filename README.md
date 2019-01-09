# Proposal for a New Coptic Calendar
This Python program generates a MongoDB database of the New Coptic Calendar (newcopticcalendar.org), including:
- Restoration of the origianal start date of the New Coptic Year (1 Thout = 29 August) thereby aligning fixed feast days such as Christmas with the Gregorian Calendar (29 Kiahk = 25 December)
- A new method of computing leap years that follows the same method of adding leap days as the Gregoarian Calendar, maintaining alighment between the two systems in perpetuity
- A new proposal for Computus (the calculation of Easter) based on the rules of the Council Of Nicea (Easter is the first Sunday after the first full moon after the Spring equinox), however utilizing NASA JPL ephemerides to calculate the true, astronomical date of both the Spring Equinox and the Paschal Full Moon as observed from the city of Jerusalem. 


The default program generates the New Coptic Calendar for 500 years, starting on 29 August, 2019 (1 Thout 1736 New Coptic Calendar, 23 Mesra 1735 Old Coptic Calendar)

# Requirements
- Python 3.7 or higher
- DE435 ephemerides file from NASA JPL (https://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/de435.bsp)
-- Place de435.bsp in the same directory as your main Python code file.
- Skyfield Python library (https://rhodesmill.org/skyfield/)
- MongoDB (https://www.mongodb.com/download-center)
- PyMongo (https://api.mongodb.com/python/current/)
- pytz (http://pytz.sourceforge.net/)
