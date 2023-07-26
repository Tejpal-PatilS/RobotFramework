*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database     pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown      Disconnect From Database

*** Variables ***
${DBName}   mydb
${DBUser}   root
${DBPass}   root
${DBHost}   127.0.0.1
${DBposrt}  3306

*** Test Cases ***
Create person table
    Execute SQL String      Create table person(id integer, first_name, )