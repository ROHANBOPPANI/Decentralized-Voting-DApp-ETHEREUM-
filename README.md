# Decentralized Voting System Using Ethereum Blockchain

A secure and transparent voting system leveraging Ethereum blockchain technology for tamper-proof voting records.

## 🌟 Features

- **🔐 JWT Authentication** - Secure voter authentication and authorization
- **⛓️ Blockchain Integration** - Ethereum blockchain for immutable voting records
- **🏛️ Admin Panel** - Manage candidates, set voting dates, monitor results
- **🗳️ User Interface** - Intuitive UI for voters to cast votes securely
- **🔄 Trustless System** - No intermediaries required

## 🛠️ Technology Stack

- **Frontend:** HTML, CSS, JavaScript
- **Backend:** Node.js, Express.js
- **Blockchain:** Ethereum, Solidity, Truffle
- **Database:** MySQL
- **API:** FastAPI (Python)
- **Authentication:** JWT

## 📋 Requirements

- Node.js (v18.14.0)
- Python (v3.9)
- MySQL Database (port 3306)
- Ganache (for local blockchain)
- Metamask (browser extension)

## 🚀 Quick Start

### 1. Clone Repository
```bash
git clone https://github.com/YOUR_USERNAME/decentralized-voting-system.git
cd decentralized-voting-system
```

### 2. Install Dependencies
```bash
# Node.js dependencies
npm install
npm install -g truffle

# Python dependencies
pip install fastapi mysql-connector-python pydantic python-dotenv uvicorn[standard] PyJWT
```

### 3. Database Setup
```sql
CREATE DATABASE voter_db;
USE voter_db;

CREATE TABLE voters (
voter_id VARCHAR(36) PRIMARY KEY NOT NULL,
role ENUM('admin', 'user') NOT NULL,
password VARCHAR(255) NOT NULL
);
```

### 4. Configure Environment
```bash
# Edit Database_API/.env with your MySQL credentials
MYSQL_USER="root"
MYSQL_PASSWORD="your_password"
MYSQL_HOST="localhost"
MYSQL_DB="voter_db"
```

### 5. Start Services
```bash
# Start Ganache (manually)
# Compile contracts
truffle compile
truffle migrate

# Bundle JavaScript
browserify ./src/js/app.js -o ./src/dist/app.bundle.js
browserify ./src/js/login.js -o ./src/dist/login.bundle.js

# Start servers
node index.js
cd Database_API && python -m uvicorn main:app --reload --host 127.0.0.1
```

### 6. Access Application
- **URL:** http://localhost:8080
- **Admin Login:** admin123 / admin123
- **User Login:** user1 / password1

## 🗳️ How to Use

### For Admin:
1. Login with admin credentials
2. Add candidates with name and party
3. Set voting start and end dates
4. Monitor voting progress

### For Voters:
1. Login with voter credentials
2. Connect Metamask wallet
3. Select preferred candidate
4. Confirm vote transaction
5. View real-time results

## 🔧 Configuration

### Metamask Setup
- Network Name: Localhost 7575
- RPC URL: http://localhost:7545
- Chain ID: 1337
- Currency Symbol: ETH

### Ganache Setup
- Create workspace named "development"
- Add truffle-config.js project
- Start blockchain on port 7545

## 📁 Project Structure

```
├── contracts/           # Smart contracts
├── Database_API/        # FastAPI backend
├── src/                 # Frontend files
│   ├── html/           # HTML templates
│   ├── css/            # Stylesheets
│   ├── js/             # JavaScript logic
│   └── dist/           # Bundled JavaScript
├── public/             # Static assets
├── migrations/         # Truffle migrations
└── index.js           # Node.js server
```

## 🔒 Security Features

- **Immutable Voting Records** - Stored on Ethereum blockchain
- **Double Voting Prevention** - Smart contract validation
- **Secure Authentication** - JWT token-based auth
- **Anonymous Voting** - Only blockchain addresses stored
- **Tamper-Proof Results** - Cryptographic verification

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request


