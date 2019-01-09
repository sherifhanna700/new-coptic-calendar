# Proposal for a New Coptic Calendar
Code that generates a MongoDB database of the New Coptic Calendar (newcopticcalendar.org), including a new proposal for Computus (the calculation of Easter) based on NASA JPL ephemerides, a new method of computing leap years, and restoration of the origianal start date of the New Coptic Year (1 Thout = 29 August) thereby aligning fixed feast days such as Christmas with the Gregorian Calendar (29 Kiahk = 25 December)

# Requirements
- DE435 ephemerides file from NASA JPL (https://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/de435.bsp)
-- Place de435.bsp in the same directory as your main Python code file.
- Skyfield Python library (https://rhodesmill.org/skyfield/)
- MongoDB (https://www.mongodb.com/download-center)
- PyMongo (https://api.mongodb.com/python/current/)
- pytz (http://pytz.sourceforge.net/)
