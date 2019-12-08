![alt text](http://url/to/img.png)

# Arduino Voting System

## Getting Started

In this essay, we discuss how to use sensor data acquisition technologies to create a voting system. The idea is to create a system where a push of a button counts as one vote, and the total votes are analysed on a graphical interface in real-time. The final product consists of 2 physical buttons pertaining to 2 candidates to vote for and a user interface accessible online. So, each time a button is pushed, one vote is counted for the corresponding candidate. Every vote is stored in a database as a string value. The data is pulled to create a dashboard with graphical information about the votes winner and datetime. 

### Technologies Used

Technologies used to acquire the data include two buttons, a breadboard and an Arduino. Software used to capture and store the data include Arduino Studio, Processing and MySQL(RDS in AWS). Finally, to present the data we use Google Data Studio. In this paper, we will include all of our code in Arduino, Processing and MySQL. We will also talk about how we connect our database to Google Data Studio using Amazon Web Services (AWS). This allows us to view the data online and share our results.
### Prerequisites

### Project Links 

* [GitHub Link](https://github.com/sundios/voting)
* [Google Data Studio](https://datastudio.google.com/reporting/54176bc4-e6e7-4039-a16e-2c8e67635847)


## Arduino

