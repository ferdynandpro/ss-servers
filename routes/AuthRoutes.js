import express from "express";
import { loginUser, registerUser, getUserDetails, deleteUserById, getAllUsers } from "../controllers/AuthController.js"; // Import the getAllUsers function
import { authenticate } from "../middlewares/AuthMiddleware.js"; // Assuming you have a middleware to verify JWT

const router = express.Router();

// Register User
router.post("/auth/register", registerUser);

// Login User
router.post("/auth/login", loginUser);

// Get User Details (Authenticated route)
router.get("/auth/user", authenticate, getUserDetails); 

// Get All Users (Admin route)
router.get("/auth/users", authenticate, getAllUsers); // Use middleware to verify JWT

// In AuthRoutes.js
router.delete("/auth/users/:id", authenticate, deleteUserById);


export default router;
