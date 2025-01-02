// AuthMiddleware.js

import jwt from 'jsonwebtoken';

export const authenticate = (req, res, next) => {
  const token = req.headers.authorization?.split(" ")[1]; // Get the token from the Authorization header

  if (!token) {
    return res.status(403).json({ message: "No token provided" });
  }

  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    req.user = decoded; // Attach user info to the request object
    next();
  } catch (err) {
    res.status(401).json({ message: "Invalid token" });
  }
};

// Add role checking middleware for owner role
export const authorizeOwner = (req, res, next) => {
  if (req.user.role !== 'owner') {
    return res.status(403).json({ message: "You do not have permission to access this route" });
  }
  next();
};
