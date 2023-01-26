from typing import Union
from fastapi import FastAPI
from routers import members
from fastapi.testclient import TestClient

app = FastAPI(title="Swimming Master", description="API's for swimming competition managing app", version="0.1")




app.include_router(members.router)