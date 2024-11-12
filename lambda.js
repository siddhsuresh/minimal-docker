exports.handler = async (event) => {
    console.log("Hello World 2")
    const response = {
        statusCode: 200,
        body: JSON.stringify('Hello from Lambda!'),
    };
    return response;
}
