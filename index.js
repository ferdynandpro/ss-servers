import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import { errorHandler } from "./middlewares/ErrorHandler.js";
import AuthRoutes from "./routes/AuthRoutes.js";
import CustomerRoutes from "./routes/CustomerRoutes.js";
import ProductRoutes from "./routes/ProductRoutes.js"; // Import Product Routes
import DiscountRoutes from "./routes/DiscountRoutes.js"; // Import Discount Routes
import logsRoute from './routes/LogsRoutes.js';

dotenv.config();

const app = express();

// Middleware for parsing JSON bodies
app.use(express.json());

// CORS Configuration
app.use(cors({
  origin: "http://localhost:3000",  // Adjust to your frontend URL
  methods: "GET,POST,PUT,DELETE",
  allowedHeaders: "Content-Type,Authorization"
}));

// Routes

app.use('/api', logsRoute);
app.use("/api", AuthRoutes);
app.use("/api", CustomerRoutes);
app.use("/api", ProductRoutes);  // Use Product Routes
app.use("/api", DiscountRoutes);  // Use Discount Routes

// Error handler middleware
app.use(errorHandler);

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => console.log(`Server is running on port ${PORT}...`));
