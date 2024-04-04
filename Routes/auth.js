const express = require("express");
const authController = require("../Controllers/auth");
const router = express.Router();
const multer = require('multer');
const upload = multer({ dest: 'uploads/' });


router.get("/api/auth", authController.GetUserData)
router.get("/api/fetchroutes", authController.BusRoutes)
router.get('/api/busSeatAvailability' , authController.BusSeatAvailability)
router.get('/api/FoodInfo' , authController.FoodInfo)
router.get('/api/courses' , authController.CourseFetch)
router.get('/api/courseShow' , authController.CourseShowRoutine)
router.get('/api/PostFetch' , authController.PostFetch)
router.get('/api/PostFetchBasedOnID' , authController.PostFetchBasedOnID)

router.post("/signup", authController.UserSignup)
router.post("/signin", authController.UserLogin)
router.post("/updateUser", authController.UserUpdate)
router.post("/bookTickets", authController.bookTicket)
router.post("/buyBusTickets", authController.busTicket)
router.post('/api/addToCart' , authController.AddToCart)
router.post('/api/courseSelected' , authController.CourseSelected)
router.post('/forum-post', upload.single('post-image'), authController.ForumPost)



router.get('/logout', (req, res) => {
    req.session.destroy(err => {
        if (err) {
            console.error('Error destroying session:', err);
            res.status(500).send('Internal server error');
        } else {
            res.redirect('/CampusConnect');
        }
    });
});

module.exports = router;