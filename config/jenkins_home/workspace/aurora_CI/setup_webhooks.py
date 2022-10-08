"""
This script updates the webhook URL in github to PUBLIC_URL generated by NGROK
"""
import json
import os




def get_jenkins_public_url():
    os.system("curl  http://localhost:4551/api/tunnels > tunnels.json")
    with open('tunnels.json') as data_file:
        datajson = json.load(data_file)
    for entry in datajson["tunnels"]:
        if entry["config"]["addr"] == "http://jenkins:8080":
            return entry["public_url"]



print(get_jenkins_public_url())