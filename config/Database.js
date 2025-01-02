import { Sequelize } from "sequelize";
import dotenv from "dotenv";

dotenv.config();

const db = new Sequelize(
    process.env.DB_NAME,
    process.env.DB_USER,
    process.env.DB_PASSWORD,
    {
        host: process.env.DB_HOST,
        dialect: process.env.DB_DIALECT,
        logging: false, // Disable logging for production
    }
);

(async () => {
    try {
        await db.authenticate();
        console.log("Database connected...");
    } catch (error) {
        console.error("Database connection failed:", error);
        process.exit(1);
    }
})();

export default db;
