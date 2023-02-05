import naive_bayes as nb
import sys

model = nb.NaiveBayesClassifier(k=0.5)
model.load_from_file()


def process_stdin(stream):
    '''
    Given an input stream from our command line, read the filenames as strings.

    External source used to help:
        -https://www.geeksforgeeks.org/take-input-from-stdin-in-python/

    '''

    # read lines
    fnames = stream.readlines()

    # couldn't find a more elegant way to get rid of that extra \n
    return [x.replace("\n","") for x in fnames]

def score_one_file(fname, model):
    try:
        sys.stderr.write(fname)
        subject = ""
        with open(fname, errors='ignore') as source:
            for line in source:
                if line.startswith("Subject:"):
                    subject = line.lstrip("Subject: ")
        
        score = model.predict(subject)
        formatted_return = "{}\t{}".format(str(score), fname)
        print(formatted_return)
    except Exception as e:
        sys.stderr.write("{}\tUncaught Exception:\t{}".format(fname, e))


files_to_score = process_stdin(sys.stdin)

for fname in files_to_score:
    score_one_file(fname, model)

