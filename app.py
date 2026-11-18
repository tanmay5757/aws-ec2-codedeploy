from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return """
    <h1>AWS CodeDeploy Successful!</h1>
    <p>Application deployed on EC2 using CodePipeline.</p>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)