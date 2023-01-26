from typing import Union
from fastapi import FastAPI
from .routers import members
from fastapi.testclient import TestClient

app = FastAPI()

app.include_router(members.router)