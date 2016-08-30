# Medical Diagnosis

### Switching from local Storage to API model.

The main idea is to POST all the patient data into our API backEnd.

My Idea is to set a simple Backend, with a REST API.
PHP/Python Backend for the API, with a standard JSON Response.
MySQL for a DB, since we are storing simple data now. No need for anything fancy for the moment.

We can implement a simple set of endpoints.

```
Get the Tests by a User ID
GET /v1.0/tests/AVKN1aVxZh9qJwtOv4RA/favorites 
X-API-KEY: cyHemEnmy4ePM70HrXW/TJgLqJ5xD
```

```
Get All the Tests 
GET /v1.0/tests/
X-API-KEY: cyHemEnmy4ePM70HrXW/TJgLqJ5xD
```

```
Save the Data by user ID (user logged into the app)
POST /v1.0/tests/
AVKN1aVxZh9qJwtOv4RA/favorites 
X-API-KEY: cyHemEnmy4ePM70HrXW/TJgLqJ5xD
{
  "age": 15,
  "gender": "Male",
  "drugs": false,
  "migraines: false
}
```




