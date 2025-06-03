exports.handler = async (event) => {
    console.log("Hello World 5")
    const response = {
        statusCode: 200,
        body: JSON.stringify('Hello from Lambda!'),
    };
    return response;
}
