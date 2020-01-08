import * as APIUtil from '../util/course_api_util';

export const RECEIVE_COURSES = 'RECEIVE_COURSES';

export const receiveCourses = courses => {
    return {
        type: RECEIVE_COURSES,
        courses
    }
};

