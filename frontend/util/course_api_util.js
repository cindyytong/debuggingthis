export const fetchCourses = () => {
    return {
        $.ajax({
           method: 'GET',
           url: 'api/courses' 
        })
    }
};

