# The National Bank

## MVC ARCHITECTURE

## Project name : prjWin_MVC_NationalBank_Rm

Été - 2020


## Description

In this project we will develop a Bank Application able to make Deposit, Withdraw and Consult. The app will be handle by an admin to administrate directors, agencies, customers, the diferent accounts and reports. The app will includ concepts of Object Oriented Programming, concepts of MVC architecture, database with Sql Server and relationship between classes in C # .NET.


### This project focuses on MVC architecture.

![MVC Entity](/img/MVCmodel.JPG "MVC Entity")


### Problem

A bank has several agencies spread over the Quebec territory. A bank is characterized by the name of its director, 
its global capital, its own name and the address of its head office.


### Prerequisites

 * Microsoft Visual Studio Community 2015 Version 14.0.25425.01 Update 3
 * Programming language : C#.
 * Object Oriented Programming.
 * SQL server Management Studio v17.9.
 * Programming language : SQL Server.
 * MVC Concepts.
 
 
#### Videos
 
 * [C5/ Arquitectura en Capas/ Análisis completo (conceptos,principios,modelos,...)/Ejemplo C#- DIP-DDD](https://www.youtube.com/watch?v=SGXR0pDCP38&t=2464s)
 * [Dashboard / Sumario - NCapas SQL C# (POO)](https://www.youtube.com/watch?v=PmgSBN7xnzM&list=PLqjdFmR_HdQQaB7W6NWj9Mtdl3QvQn2oA)
 * [SQL Server connection](https://www.youtube.com/watch?v=OdDkFPO_nto)
 * [Curso de Git y Github : 1 - 15](https://www.youtube.com/watch?v=j8CSUPIB8mA)
 
 
## Installation

### Download and install. 

 * [Install Visual Studio](https://visualstudio.microsoft.com/)
 * [Install SQL Server](https://www.microsoft.com/en-ca/sql-server/sql-server-downloads)
 * [Dowland the Layer Architecture NationalBank SqlServer project](https://github.com/RicardoAMendoza/LayerArchitecture_Cs_NationalBank_SqlServer)
 
 
### Create the database with SQl server. 

1.- Create the data base : open SQL Server Management Studio, open a new query and run SqlServer/1_init_DataBase.sql

[prjWin_MVC_NationalBank_Rm/blob/master/SqlServer/1_init_DataBase.sql](https://github.com/RicardoAMendoza/prjWin_MVC_NationalBank_Rm/blob/master/SqlServer/1_init_DataBase.sql)

2.- Create the Stored Procedures : run SqlServer/2_create_StoredProcedures.sql

[prjWin_MVC_NationalBank_Rm/blob/master/SqlServer/2_create_StoredProcedures.sql](https://github.com/RicardoAMendoza/prjWin_MVC_NationalBank_Rm/blob/master/SqlServer/2_create_StoredProcedures.sql)

3.- Fill up the tables : run SqlServer/3_fill_Tables.sql

[prjWin_MVC_NationalBank_Rm/blob/master/SqlServer/3_fill_Tables.sql](https://github.com/RicardoAMendoza/prjWin_MVC_NationalBank_Rm/blob/master/SqlServer/3_fill_Tables.sql)

4.- Create Views : run SqlServer/4_create_Views.sql

[prjWin_MVC_NationalBank_Rm/blob/master/SqlServer/4_create_Views.sql](https://github.com/RicardoAMendoza/prjWin_MVC_NationalBank_Rm/blob/master/SqlServer/4_create_Views.sql)

5.- The class clsConnection connects the SQL Server and the Visual Studio.

```
static private string stringConnection = "Data Source = .; DataBase = bd_NationalBank; Integrated Security = true";
```


### Data Base Diagram bd_MVC_NationalBank.

![DataBaseDiagram](/img/DATABASE_bd_MVC_NationalBank.jpg "DataBaseDiagram")


### Data Base Selection.

![Data Base Selection](/img/SelectingServer.JPG "Data Base Selection")


## Author

* **Ricardo Mendoza -  Programmer Analyst**
 
 
## Running the tests
 
 
## Built With

* [Microsoft Visual Studio Community 2015 Version 14.0.25425.01 Update 3](https://visualstudio.microsoft.com/)
* [SQL server Management Studio v17.9.](https://www.microsoft.com/en-ca/sql-server/sql-server-downloads)


## Versions and source manager. 

This project uses GitHub.com as source manager in the following repository:

https://github.com/RicardoAMendoza/prjWin_MVC_NationalBank_Rm


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

- Copyright Ricardo Mendoza
- the MIT License (MIT)


## Acknowledgments

* [Andy Del Risco](https://www.linkedin.com/in/andydelriscomanzanares/) - MENTOR, *Technicien Informatique Cl. Principale* [École des métiers de l’aérospatiale de Montréal](http://ecole-metiers-aerospatiale.csdm.ca/)
* [Fernand Tonye](https://www.linkedin.com/in/fernand-tonye-6a46532b/) - MENTOR, *Chief d'Equipe Informatique pour les enseignants* [Institut Teccart](http://www.teccart.qc.ca/)
* [Charles Vilaisak](https://www.linkedin.com/in/cvilaisak/) - MENTOR, *Registraire à l'École nationale de cirque* [École nationale de cirque](https://www.linkedin.com/school/-cole-nationale-de-cirque/)
* RJ Code Advance - Arquitectura en Capas
* Derek Banas - SQL Server and Visual Studio Installation
* [Institut Teccart](http://www.teccart.qc.ca/)