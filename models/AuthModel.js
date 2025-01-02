import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const { DataTypes } = Sequelize;

const User = db.define(
    "Login",
    {
        username: { type: DataTypes.STRING, allowNull: false, unique: true },
        password: { type: DataTypes.STRING, allowNull: false },
        role: {
            type: DataTypes.ENUM("owner", "admin"), // Restrict to 'owner' and 'admin'
            allowNull: false,
            defaultValue: "admin", // Default role is 'admin'
        },
    },
    {
        freezeTableName: true,
        timestamps: false,
    }
);

export default User;

