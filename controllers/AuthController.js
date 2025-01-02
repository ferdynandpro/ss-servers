import User from "../models/AuthModel.js";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";

// Register User
// Register User
export const registerUser = async (req, res) => {
    const { username, password, role } = req.body;
  
    // Ensure that all fields are present
    if (!username || !password) {
      return res.status(400).json({ message: "Username and password are required." });
    }
  
    // Check if username already exists
    const existingUser = await User.findOne({ where: { username } });
    if (existingUser) {
      return res.status(400).json({ message: "Username already exists" });
    }
  
    // Password validation
    if (password.length < 6) {
      return res.status(400).json({ message: "Password must be at least 6 characters" });
    }
  
    // Hash password and save the user
    const hashedPassword = await bcrypt.hash(password, 10);
    await User.create({
      username,
      password: hashedPassword,
      role: role || "admin", // Default role is admin if not specified
    });
  
    res.status(201).json({ message: "User registered successfully" });
};

  

// Login User
export const loginUser = async (req, res) => {
    const { username, password } = req.body;
    try {
        const user = await User.findOne({ where: { username } });

        if (!user) {
            return res.status(404).json({ message: "User not found" });
        }

        const isPasswordValid = await bcrypt.compare(password, user.password);

        if (!isPasswordValid) {
            return res.status(401).json({ message: "Invalid credentials" });
        }

        const token = jwt.sign(
            { id: user.id, role: user.role }, // Include role in JWT
            process.env.JWT_SECRET,
            { expiresIn: "1d" }
        );
        res.status(200).json({ message: "Login successful", token, role: user.role });
    } catch (error) {
        res.status(500).json({ message: "Error logging in", error: error.message });
    }
};

// Get User Details (Dashboard)
export const getUserDetails = async (req, res) => {
    try {
        const user = await User.findByPk(req.user.id, { attributes: ["id", "username"] });

        if (!user) {
            return res.status(404).json({ message: "User not found" });
        }

        res.status(200).json(user);
    } catch (error) {
        res.status(500).json({ message: "Error fetching user details", error: error.message });
    }
};

// Delete User by ID
export const deleteUserById = async (req, res) => {
    const { id } = req.params; // Extract user ID from request parameters
    try {
        const user = await User.findByPk(id);

        if (!user) {
            return res.status(404).json({ message: "User not found" });
        }

        await user.destroy();
        res.status(200).json({ message: "User deleted successfully" });
    } catch (error) {
        res.status(500).json({ message: "Error deleting user", error: error.message });
    }
};

// Get All Users
export const getAllUsers = async (req, res) => {
    try {
        const users = await User.findAll({ attributes: ["id", "username", "role"] }); // Include role
        res.status(200).json(users);
    } catch (error) {
        res.status(500).json({ message: "Error fetching users", error: error.message });
    }
};
