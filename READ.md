// Notes about DB structure of cars assessment

1. users table created first for authentication of users

2. vehicles table created to store different vehicles having vehicles name, sales price, retail price, color, stock etc.

3. vehicles table have multiple foreign ids like company_id, model_id and vehicle_type.

4. companies table we added to store companies names which is company_id in vehicles table.

5. models table we created to store company manufacturing models of their vehicles and this table has foreign ids of companies called company_id.

6. types table we created to store types of vehicles like car, truck etc and this type is foreign id in vehicles table to get its relative vehicle.

7. features table is also added to store the features of vehicles and it has features names with vehicle_id as foreign key (vehicles table).

8. images table is also added to store the multiple images of every vehicle like front image, back image, dashboard etc. this included image name, title and vehicle_id as foreign key (vehicles table).

9. videos table is also added to store embedded url of every vehicle and vehicle_id as foreign key (vehicles table).

10. extra specifications table was also need to store the data like sports, speed automatic etc. it has also vehicle_id as foreign key (vehicles table).

// notes about code structure of cars assessment project

1. we have code structure like first we created login.php file to handle the from design page of login

2. then we created login-process file to take email and password

3. after successful authentication the user redirects to the index page and the list of vehicles displayed on that page.

4. by clicking on single vehicle, the user redirects to the detail page of the vehicle. this single page has detailed list of  that specific vehicle.

5. connection page is also created to handle the database connection of the project.

6. styling is also included in seperate style file.

7. scripts are included in seperate script file.

8. list of vehicles on dashboard is being displayed through the rest api

9. master file called index is also created to switch easily between pages

10. master file keeps the layout and working more easy and reliable which can sort out the security concerns as well

11. if the user is not authenticated, it can't redirect to dashboard or any other page.

12. after login, session is ended with logout option.