
import os
from fileinput import filename

from flask import Flask, jsonify, request, flash, url_for, json
import werkzeug

from werkzeug.utils import redirect, secure_filename
app = Flask(__name__)


FOLDER = 'uploadedfiles'


@app.route('/size', methods=['POST','GET'])

def nameRoute():
     global response
     global w


     if (request.method == 'POST'):
         request_data = request.data
         request_data = json.loads(request_data.decode('utf-8'))
         size = request_data['size']
         w=int(size)
         print(w)

         response = f'Hi {size}! this is Python'

         return " "
     else:
      return jsonify({'size': response})

@app.route('/uploads', methods=['POST'])
def upload_file():
    if request.method == 'POST':
        for field, data in request.files.items():
            print('field:', field)
            print('filename:', data.filename)
            if data.filename:

                data.save(os.path.join(FOLDER, data.filename))
                global p
                p = print(os.path.abspath(__file__))
                global c
                c = print(data.filename)
                sequences, quailties = readFastq(
                    r"./uploadedfiles/"+data.filename
                )
























                sequencessss = ""
                for s in sequences:
                    for ss in s:
                        sequencessss+=ss

                print(sequencessss)

                jj=cmers(sequencessss, w)
                return jj


def readFastq(filename):
    seqs=[]
    quals=[]
    with open(filename) as fo:
        while True:
            fo.readline()
            seq=fo.readline().rsplit()
            fo.readline()
            qual = fo.readline().rsplit()
            if len(seq) ==0 :
                break
            seqs.append(seq)
            quals.append(qual)
    return seqs,quals


def cmers(seqqq,k):
    kfreq={}
    for i in range(0,len(seqqq)-k+1):
        kmer=seqqq[i:i+k]
        if kmer in kfreq:
            kfreq[kmer]+=1
        else:
            kfreq[kmer]=1
    return kfreq



if __name__ == "__main__":
  app.run(debug=True)
