# Frontend Routes 

Main components are organized as follows:
* Index 
    - App 
        * NavBar 
            - AuthNavContainer 
                * AuthNav 
            - NavContainer 
                * Nav 
        * (main component goes herre)
        * Footer 

The following routes will render components in between NavBar and Footer 

### Logged Out 

* `/` : `SplashContainer` 
    - `RegisterFormContainer` 
        * `RegisterForm` 
    - `About` 
* `/courses` : `CoursesContainer` 
    - `SearchBarContainer`
        * `SearchBar` 
    - `FilterContainer`
        * `Filter`
    - `CourseIndexContainer`
        * `CourseIndexItem` 

* `/login` : `LoginContainer` 
    - `Login` 
* `/signup` : `RegisterFormContainer`
    - `RegisterForm` 

### Logged In 
* `/home` : `HomeContainer` 
    





What do you need to keep track of? 
- resource fetched 
- current user 
- form errors 
- loading spinner 
- sorting strategies 