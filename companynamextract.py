from transformers import pipeline
from subprocess import list2cmdline
import spacy
from spacy.matcher import Matcher
import time
import argparse

parser = argparse.ArgumentParser(description='CompanyNameParser')

# parameter
parser.add_argument('--input', type=str, default='Question:  How is Walmart doing?"', help='string to parse')

args = parser.parse_args()

start = time.time()
nlp = spacy.load('en_core_web_sm')
model_checkpoint = "xlm-roberta-large-finetuned-conll03-english"
token_classifier = pipeline(
    "token-classification", model=model_checkpoint, aggregation_strategy="simple"
)

# Organisation names extraction
def org_name(extracted_text):
    classifier = token_classifier(extracted_text)
    # Get the list of dictionary with key value pair "entity":'ORG'
    values = [item for item in classifier if item["entity_group"] == "ORG"]
    # Get the list of dictionary with key value pair "entity":'ORG'
    res = [sub['word'] for sub in values]
    final1 = list(set(res))  # Remove duplicates
    final = list(filter(None, final1)) # Remove empty strings
    print(final[0])


#org_name("Q: What is the outlook for Fedex this year?")
org_name(args.input)
end = time.time()

#print("The time of execution of above program is :", round((end - start), 2))
