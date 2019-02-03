# Proposal for a New Coptic Calendar
This Python program generates a MongoDB database of the New Coptic Calendar (newcopticcalendar.org), including:
- Restoration of the origianal start date of the New Coptic Year to its counterpart in the Gregorian Calendar (1 Thout = 29 August), thereby aligning fixed feast days such as Christmas with the Gregorian Calendar (29 Kiahk = 25 December)
- A new method of computing leap years that follows the same method of adding leap days as the Gregoarian Calendar, maintaining alignment between the two systems in perpetuity
- A new proposal for Computus (the calculation of Easter) based on the rules of the Council Of Nicea (Easter is the first Sunday after the first full moon after the Vernal Equinox), however utilizing NASA JPL ephemerides to calculate the true, astronomical date of both the Vernal Equinox and the Paschal Full Moon as observed from the city of Jerusalem. 


The default program generates the New Coptic Calendar for 500 years, starting on 29 August, 2019 (1 Thout 1736 New Coptic Calendar, 23 Mesra 1735 Old Coptic Calendar), along with the corresponding dates in the Gregorian Calendar and the Old Coptic Calendar, as well as fixed and variable event dates (e.g. Christmas and Easter respectively). 

# Requirements
- Python 3.7 or higher
- DE435 ephemeris file from NASA JPL (https://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/de435.bsp)
-- Place de435.bsp in the same directory as your main Jupyter Python code file.
- Skyfield Python library (https://rhodesmill.org/skyfield/)
- MongoDB (https://www.mongodb.com/download-center)
- PyMongo (https://api.mongodb.com/python/current/)
- pytz (http://pytz.sourceforge.net/)

# MongoDB Database Organization
## Database Name
`new_coptic_calendar`
## Collection Name
`master-calendar`
## Fields
Each document in the collection represents a day, and provides the corresponding dates in the Gregorian Calendar, Old Coptic Calendar, and New Coptic Calendar as follows:
- `weekday`: Weekday
- `gg_year`: Integer year of the date in the Gregorian calendar
- `gg_month`: Integer month (`1`,`2`,…,`12`) of date in the Gregorian calendar
- `gg_day`: Integer day of the date in the Gregorian calendar
- `occ_year`: Integer year of the date in the Old Coptic Calendar
- `occ_month`: Integer month (`1`,`2`,…,`13`) of the date in the Old Coptic Calendar
- `occ_day`: Integer day of the date in the Old Coptic Calendar
- `ncc_year`: Integer year of the date in the New Coptic Calendar
- `ncc_month`: Integer month (`1`,`2`,…,`13`) of the date in the New Coptic Calendar
- `ncc_day`: Integer day of the date in the New Coptic Calendar
- `ncc_fixed_event`: String value of a fixed event in the New Coptic Calendar (e.g. `The Feast of the Nativity`) if one occurs on that day, otherwise `Undefined`
- `ncc_variable_event`: String value of a variable event in the New Coptic Calendar (e.g. `The Feast of the Resurrection`) if one occurs on that day, otherwise `Undefined`
- `celestial_event`: String value of either `Vernal Equinox`,`Paschal Full Moon`, or `Undefined`
