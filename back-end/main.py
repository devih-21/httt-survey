from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from config.db import connect_to_db
import pandas as pd

app = FastAPI()
connect = connect_to_db()
origins = [
  "http://localhost",
  "http://localhost:3001",
  "http://localhost:8000"
]

app.add_middleware(
  CORSMiddleware,
  allow_origins=origins,
  allow_credentials=True,
  allow_methods=["*"],
  allow_headers=["*"],
  expose_headers=["*"]
)


def get_full_ques():
  data = pd.read_sql('SELECT * FROM `quescontent`', con=connect)
  dict_data =  data.to_dict(orient='ID')
  result_list = list(dict_data.values())

  return result_list

def handle_syntax(data_req: list, index_type: int):
  data = pd.read_sql('SELECT Rate, QuesContentID FROM `rating` where StypeTypeID = ' + str(index_type) + " order by QuesContentID", con=connect)
  list_rate = data["Rate"].values.tolist()
  numerator = 0
  for index, item in enumerate(data_req):
    numerator += item["weight"] * (1 - abs(item["value"] - list_rate[index]))
  denominator = sum(req_item['weight'] for req_item in data_req)
  result = numerator / denominator
  return result

def handle_result(data: list):
  item1 = handle_syntax(data, 1)
  item2 = handle_syntax(data, 2)
  item3 = handle_syntax(data, 3)
  item4 = handle_syntax(data, 4)
  item5 = handle_syntax(data, 5)
  item6 = handle_syntax(data, 6)
  
  list_result = [item1, item2, item3, item4, item5, item6]
  index = list_result.index(max(list_result))
  major = pd.read_sql('SELECT ContentType, MajorContent FROM `stypetype` where ID = ' + str(index + 1) , con=connect)
  type = major["ContentType"].values.tolist()[0]
  content = major["MajorContent"].values.tolist()[0]
  print(type, content)
  return {"type":type, "content": content}
    
@app.get("/")
def read_root():
  return {"Hello": "World"}


@app.get("/v1/get/data-ques")
def read_info():
  data = get_full_ques()
  return data

@app.post("/v1/post/submit-ques")
def check(list_ques: list):
  data = handle_result(list_ques)
  print(data)
  return {"type": data['type'], "content": data['content']}
