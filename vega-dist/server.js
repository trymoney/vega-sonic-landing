const express = require('express');
const cors = require('cors');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

// Serve static files from dist
app.use(express.static(path.join(__dirname, 'dist')));

// Handle SPA routing
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'dist', 'index.html'));
});

app.listen(PORT, () => {
  console.log(`
╔══════════════════════════════════════════════════════════╗
║                                                          ║
║   ██████╗ ███████╗███████╗██╗     ██╗███╗   ██╗███████╗ ║
║   ██╔══██╗██╔════╝██╔════╝██║     ██║████╗  ██║██╔════╝ ║
║   ██║  ██║█████╗  █████╗  ██║     ██║██╔██╗ ██║█████╗   ║
║   ██║  ██║██╔══╝  ██╔══╝  ██║     ██║██║╚██╗██║██╔══╝   ║
║   ██████╔╝███████╗███████╗███████╗██║██║ ╚████║███████╗ ║
║   ╚═════╝ ╚══════╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝ ║
║                                                          ║
║              Command Center v1.0.0                        ║
║                                                          ║
╠══════════════════════════════════════════════════════════╣
║                                                          ║
║   🌐 Server running at: http://localhost:${PORT}           ║
║                                                          ║
║   Press Ctrl+C to stop                                    ║
║                                                          ║
╚══════════════════════════════════════════════════════════╝
  `);
});
