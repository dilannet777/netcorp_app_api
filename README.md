## Build a REST API  for Netcorp Developer Test Project

This example shows how to build the industry level REST APIs using Laravel Repository Pattern.

This design patern appliable to any application based on MVC.

The use of Repository Pattern has many benefits, below is a list of the most important ones:

    * Centralization of the data access logic makes code easier to maintain
    * Business and data access logic can be tested separately
    * Reduces duplication of code
    * A lower chance for making programming errors


**Prerequisites:** PHP, Composer, MySQL


### Getting Started

Clone this project using the following commands:

```
git clone https://github.com/dilannet777/report_tool_api.git
cd report_tool_api
```

### Configure the application

Create the database and user for the project:

```
mysql -u root -p
CREATE DATABASE netcorp_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER 'netcorp_user'@'localhost' identified by 'netcorp_password';
GRANT ALL on netcorp_db.* to 'netcorp_user'@'localhost';
quit;
```

Copy and edit the `.env` file and enter your database details:

```
cp .env.example .env
```

Install the project dependencies and start the PHP server:

```
composer install
php artisan config:cache
php artisan serve

```


### Run the apis via curl

Report - 7 Days Turnover Per Brand
```
curl --location --request POST 'http://127.0.0.1:8000/api/reports/turnover' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data-raw '{"type":"brand"}'
```
Report - 7 Days Turnover Per Day
```
curl --location --request POST 'http://127.0.0.1:8000/api/reports/turnover' \
--header 'Accept: application/json' \
--header 'Content-Type: application/json' \
--data-raw '{"type":"daily"}'
```

After that, you should see the client app execute some API requests and dump the output.


