from sqlalchemy import create_engine, MetaData
import pandas as pd



meta=MetaData()
# connect_db = database_connection.connect()

def connect_to_db():
  database_username = 'root'
  database_password = 'Devih.2001'
  database_ip       = '127.0.0.1'
  database_name     = 'httt_survey'

  database_connection = create_engine('mysql+mysqlconnector://{0}:{1}@{2}/{3}'.format(database_username, database_password, database_ip, database_name))
  return database_connection