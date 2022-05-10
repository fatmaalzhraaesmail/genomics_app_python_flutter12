import os
from fileinput import filename
from flask import Flask, jsonify, request, flash, url_for, json
app = Flask(__name__)
@app.route('/name', methods=['POST','GET'])
def nameRoute():
     global response

     if (request.method == 'POST'):
         request_data = request.data
         request_data = json.loads(request_data.decode('utf-8'))
         name = request_data['name']
         print(name)
         response = f'Hi {name}! this is Python'
         return " "
     else:
      return jsonify({'name': response})

if __name__ == "__main__":
      app.run(debug=True)

