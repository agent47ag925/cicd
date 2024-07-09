from fastapi import FastAPI

app = FastAPI()


@app.get( "/info" ) 
def info (): 
    return { "name" : "je-fast-api" , "version" : "1.0.0" }