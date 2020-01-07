// avoid duplicate info if possible 
// the more that can be handled server side the better 

sampleState = {
    entities: { // resources fetched 
        courses: {  // how do we distinguish btwn user and all?
            1: {
                title: 'Intro to Ruby',
                description: "Learn about Ruby fundamentals and more",
                img_url: 'ruby.img',
                duration: '30',
                lessons: [1,2,3], // is this the best way to keep track of lessons?,
                tags: [1, 3]
            },
            2: {
                title: 'Intro to Ruby',
                description: "Learn about Ruby fundamentals and more",
                imgUrl: 'ruby.img',
                duration: '30',
                lessons: [4,5,6],
                tags: [1, 2, 3]
            },
            3: {
                title: 'Intro to Ruby',
                description: "Learn about Ruby fundamentals and more",
                imgUrl: 'ruby.img',
                duration: '30',
                lessons: [7,8,9],
                tags: [2, 3]
            },
            4: {
                title: 'Intro to Ruby',
                description: "Learn about Ruby fundamentals and more",
                imgUrl: 'ruby.img',
                duration: '30',
                lessons: [10,11,12],
                tags: [4, 5]
            }
            
        },
        lessons: {
            1 : {
                title: "Ruby lesson 1",
                courseId: 1,
                duration: '20',
                lesson_content: 'Here is the lesson course text for this really fun lesson', // does this need to be preloaded? 
                video_url: 'lesson1.mov', // how do we do conditional check if video or content? 
                final_lesson: false 
            },
            2 : {
                title: "Ruby lesson 2",
                courseId: 1,
                duration: '20',
                lesson_content: 'Here is the lesson course text for this really fun lesson',
                video_url: 'lesson2.mov', 
                final_lesson: false 
            },
            3 : {
                title: "Ruby lesson 3",
                courseId: 1,
                duration: '20',
                lessonContent: 'Here is the lesson course text for this really fun lesson',
                videoUrl: 'lesson2.mov', 
                finalLesson: false 
            } 
            // continue for 13 lessons 
        },
        users: {
            1 : { // only one user should I even have this nested? 
                email: 'tongcindyy@gmail.com',
                firstName: 'Cindy',
                lastName: 'Tong', 
                courses: [1, 3],
                lessons: [1,2,3,10,11,12]
                completedLessons: [1,2,10] // should we only track completed lessons or is it better to have a userLesson table keeping track of this??  
            }
        }, 
        profile: {
            1 : {
                user_id: 1,
                img_url: 'cindy.jpg',
                linkedin_url: 'linkedin.com',
                github_url: 'github.com',
                resume_url: 'googledrive.com/myresume',
                cover_letter_url: 'googledrive.com/coverletter.com'
            }
        }, 
        tags: {
            1 : {
                topic: 'algorithm'
            },
            2 : {
                topic: 'sorting'
            },
            3 : {
                topic: 'data_structures'
            },
            4 : {
                topic: 'fundamentals'
            },
            5 : {
                topic: 'ruby'
            }
        },
    },
    ui: { // view config, sorting, pagination, loading screen

    },
    errors: { // info for forms 
        signUp: {errors: []},
        logIn: {errors: []}
    },
    session: {
        currentUserId: 1
    }
}