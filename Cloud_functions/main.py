import json
from google.cloud import bigquery

def replace_all(string, search, replace):
    return string.replace(search, replace)

def hello_world(request):
    req = request.get_json()
    tag = req['fulfillmentInfo']['tag']
    print(request)
    print("####################--" + str(tag) + "--#####################")
    print(req)
    
    if tag == "phone_auth_tag":
        phone_number = replace_all(str(req['sessionInfo']['parameters']['phone_number']), '"', '')
        query = "SELECT phone_number FROM `durable-pulsar-419609.banky.users` WHERE phone_number='{}'".format(phone_number)
        client = bigquery.Client()
        result = client.query(query)
        
        is_phone = True
        for row in result:
            print(row)
            phone_number = row["phone_number"]
            if phone_number:
                is_phone = False
                
        return json.dumps({'sessionInfo': {'parameters': {'is_phone': is_phone}}})
        
    elif tag == "passcode_auth_tag":
        passcode = replace_all(str(req['sessionInfo']['parameters']['passcode']), '"', '')
        print("Passcode",passcode)
        query = "SELECT passcode FROM `durable-pulsar-419609.banky.users` WHERE passcode={}".format(passcode)
        print("Query",query)
        client = bigquery.Client()
        result = client.query(query)
        
        is_passcode = True
        for row in result:
            print(row)
            db_passcode = str(row["passcode"])  # Ensure the database passcode is treated as a string
            if db_passcode == passcode:
                is_passcode = False
                
        return json.dumps({'sessionInfo': {'parameters': {'is_passcode': is_passcode}}})

    return json.dumps({'sessionInfo': {'parameters': {}}})
