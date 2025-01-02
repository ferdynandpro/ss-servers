export const verifyRole = (role) => {
    return (req, res, next) => {
        try {
            const user = req.user; // Pastikan `req.user` sudah diisi di middleware JWT
            if (!user || user.role !== role) {
                return res.status(403).json({ message: "Access denied" });
            }
            next();
        } catch (err) {
            return res.status(401).json({ message: "Unauthorized" });
        }
    };
};
