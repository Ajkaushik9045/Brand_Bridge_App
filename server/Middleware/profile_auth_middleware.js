const jwt = require('jsonwebtoken');
const User = require('../Model/user'); // Adjust path as needed

const ProfileauthMiddleware = async (req, res, next) => {
    const token = req.headers['authorization']?.split(' ')[1]; // Extract token from header

    if (!token) {
        return res.status(401).json({ msg: 'No token, authorization denied' });
    }

    try {
        const decoded = jwt.verify(token, 'your_jwt_secret'); // Replace with your secret
        req.user = await User.findById(decoded.id).select('-password'); // Attach user info to request
        next();
    } catch (err) {
        res.status(401).json({ msg: 'Token is not valid' });
    }
};


module.exports = ProfileauthMiddleware;
