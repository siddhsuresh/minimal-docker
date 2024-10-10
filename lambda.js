const fs = require('fs');

exports.handler = async (event) => {
    console.log(process.env)
    const filePath = '/run/secrets/API_KEY'; 
    
    try {
        // Read the file asynchronously (UTF-8 encoding)
        const data = fs.readFileSync(filePath, 'utf8');
        
        // Log or return the file contents
        console.log("File content:", data);

        return {
            statusCode: 200,
            body: JSON.stringify({
                message: 'File read successfully!',
                content: data,
            }),
        };
    } catch (err) {
        console.error('Error reading the file:', err);

        return {
            statusCode: 500,
            body: JSON.stringify({
                message: 'Error reading the file',
                error: err.toString(),
            }),
        };
    }
};
