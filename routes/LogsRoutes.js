// routes/logs.js
import express from 'express';
import db from '../config/Database.js';

const router = express.Router();

router.get('/logs', async (req, res) => {
    try {
        const [logs] = await db.query("SELECT * FROM audit_logs ORDER BY performed_at DESC");
        
        // Format changes for better display
        const formattedLogs = logs.map(log => ({
            ...log,
            changes: formatChanges(log.changes),
        }));
        
        res.json(formattedLogs);
    } catch (err) {
        console.error(err);
        res.status(500).send("Error fetching logs");
    }
});

// Function to format the changes field
function formatChanges(changes) {
    try {
        const parsedChanges = JSON.parse(changes);
        
        // Jika ada perubahan DELETE, hanya tampilkan data Before
        if (parsedChanges.operation === "DELETE") {
            return {
                before: JSON.stringify(parsedChanges.Before, null, 2),
                after: "No data (record deleted)"
            };
        }

        // Untuk UPDATE atau INSERT, tampilkan Before dan After
        return {
            before: JSON.stringify(parsedChanges.Before, null, 2),
            after: JSON.stringify(parsedChanges.After, null, 2)
        };
    } catch (e) {
        return { before: changes, after: "" }; // Kembalikan format asli jika tidak bisa diparse
    }
}

export default router;
