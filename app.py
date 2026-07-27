from flask import Flask
 
app = Flask(__name__)
 
@app.route('/')
def home():
    return """
    <html>
    <body style="font-family: Arial; text-align: center; padding: 50px;">
        <h1>Hello from ECS Fargate!</h1>
        <p>Running inside a Docker container on AWS ECS Fargate.</p>
        <p>Deployed automatically via GitHub Actions and Terraform.</p>
        <p>Built by <strong>Rukayat Alarape</strong></p>
    </body>
    </html>
    """
 
@app.route('/health')
def health():
    return {'status': 'healthy'}, 200
 
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
