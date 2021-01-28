#Author: Floyd Modau
#Date: Thu 28 Jan 2021 20:46:55 SAST


print("Calculate increase in % after performance reviews")

current_salary = float(input("Enter your current salary: "))
new_salary = float(input("Enter your new salary: "))

#formula step by step
print("Your salary has increased by", (( new_salary - current_salary ) / current_salary ) * 100 , "%")