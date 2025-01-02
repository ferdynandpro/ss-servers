import express from "express";
import { verifyToken } from "../middleware/verifyToken.js";
import { verifyRole } from "../middleware/verifyRole.js";
import User from "../models/UserModel.js";

const router = express.Router();

router.get("/auth/users", verifyToken, verifyRole("owner"), async (req, res) => {
    try {
        const users = await User.findAll({
            attributes: ["id", "username", "role"], // Fetch only necessary fields
        });
        res.json(users);
    } catch (err) {
        res.status(500).json({ message: "Failed to fetch users" });
    }
});

// Endpoint untuk mendapatkan informasi user saat ini
router.get("/auth/me", verifyToken, async (req, res) => {
    try {
        const user = await User.findByPk(req.user.id, {
            attributes: ["id", "username", "role"],
        });
        if (!user) return res.status(404).json({ message: "User not found" });
        res.json(user);
    } catch (err) {
        res.status(500).json({ message: "Failed to fetch user data" });
    }
});

export default router;
