# Python Railway Reservation Labs

A series of 17 hands-on Python labs, all built around one theme: an **Indian Railways reservation system**. The labs start with basic variables and output, then build up step by step to OOP, regex validation, web scraping, and a complete reservation system.

## Final Project

**[Lab 17 – Complete Railway Reservation System](17_Complete_Railway_Reservation_System.ipynb)** combines everything from the earlier labs into one `RailwayReservationSystem` class:

- Automatic seat allocation (`B1`, `B2`, ...)
- PNR and seat number validation using regex
- Ticket booking with passenger records
- Passenger details and booking summary reports
- Seat availability tracking (Open / Full)

## Labs Overview

| Lab | Topic | Notebook |
|-----|-------|----------|
| 01 | Variables, data types, type casting, output | [01_Railway_Output_System](01_Railway_Output_System.ipynb) |
| 02 | Variables, arithmetic, fare and GST calculation | [02_Ticket_Management_System](02_Ticket_Management_System.ipynb) |
| 03 | Conditional statements (`if`, `elif`, `else`) | [03_Ticket_Status_Checker](03_Ticket_Status_Checker.ipynb) |
| 04 | Logical operators (`and`, `or`, `not`) | [04_Reservation](04_Reservation.ipynb) |
| 05 | Loops (`while`, `for`), `break`, `continue`, `pass` | [05_Seat_Booking](05_Seat_Booking.ipynb) |
| 06 | String operations, f-strings, slicing | [06_Ticket_String_Operations](06_Ticket_String_Operations.ipynb) |
| 07 | List operations (append, remove, insert, pop) | [07_Reservation_List_Operations](07_Reservation_List_Operations.ipynb) |
| 08 | Dictionaries (create, update, pop) | [08_Train_Dictionary](08_Train_Dictionary.ipynb) |
| 09 | List and dictionary comprehensions | [09_List_Comprehension](09_List_Comprehension.ipynb) |
| 10 | Functions, parameters, return values | [10_Functions](10_Functions.ipynb) |
| 11 | Default arguments, `*args`, `**kwargs`, recursion | [11_Advanced_Functions](11_Advanced_Functions.ipynb) |
| 12 | Lambda, `map`, `filter`, `zip`, `enumerate` | [12_Functional_Programming](12_Functional_Programming.ipynb) |
| 13 | Classes, objects, attributes, methods, inheritance | [13_Railway_OOP](13_Railway_OOP.ipynb) |
| 14 | Constructors (`__init__`) and destructors (`__del__`) | [14_Advanced_OOP](14_Advanced_OOP.ipynb) |
| 15 | Regex validation of PNR, seat and train numbers | [15_Validate_Ticket_Data](15_Validate_Ticket_Data.ipynb) |
| 16 | Web scraping with `requests` and `BeautifulSoup`, saving to TXT/CSV | [16_Web_Data_Extraction](16_Web_Data_Extraction.ipynb) |
| 17 | Complete reservation system (final project) | [17_Complete_Railway_Reservation_System](17_Complete_Railway_Reservation_System.ipynb) |

## Concepts Covered

- Python basics: variables, data types, operators, type casting
- Control flow: conditionals and loops
- Data structures: strings, lists, dictionaries, comprehensions
- Functions: arguments, `*args`, `**kwargs`, recursion, lambda
- Functional tools: `map`, `filter`, `zip`, `enumerate`
- Object-oriented programming: classes, constructors, destructors, inheritance
- Regular expressions for data validation
- Web scraping and file handling (TXT, CSV)

## Requirements

- Python 3.10+
- Jupyter Notebook or JupyterLab
- For Lab 16: `requests` and `beautifulsoup4`

```bash
pip install notebook requests beautifulsoup4
```

## How to Run

```bash
git clone https://github.com/<your-username>/python-railway-reservation-labs.git
cd python-railway-reservation-labs
jupyter notebook
```

Open any notebook and run the cells from top to bottom.

## Author
Mansi Bhor
