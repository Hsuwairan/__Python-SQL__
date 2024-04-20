import streamlit as st
from dotenv import load_dotenv
import psycopg2
import os
load_dotenv()

def getCity():
    with psycopg2.connect(os.environ['POSTGRE_PASSWORD']) as conn:
        with conn.cursor() as cursor:
            sql='''
                SELECT DISTINCT SUBSTRING(地址, 1, 3) AS county
                FROM stations;
            '''
            cursor.execute(sql)
            queryDatas = cursor.fetchall()
            city_names = tuple(item[0] for item in queryDatas)
            #print(city_names)
            return city_names

def getStation(city_name):
    with psycopg2.connect(os.environ['POSTGRE_PASSWORD']) as conn:
        with conn.cursor() as cursor:
            sql='''
                SELECT DISTINCT 名稱
                FROM stations
                WHERE SUBSTRING(地址, 1, 3) = %(city)s;  
            '''
            cursor.execute(sql,{'city':city_name} )
            queryDatas = cursor.fetchall()
            station_names = tuple(item[0] for item in queryDatas)
            #print(station_names)
            return station_names
        
with st.sidebar:
    source_data = getCity()
    selected_city = st.selectbox('選擇縣市', source_data)
    selected_station = getStation(selected_city)
    st.selectbox('選擇車站', selected_station)