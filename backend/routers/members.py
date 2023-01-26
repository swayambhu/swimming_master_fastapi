from fastapi import APIRouter, status, HTTPException, Depends
from database.connection import cursor

router = APIRouter(
    prefix="/members",
    tags=["Members"]
)

@router.get("/", status_code= status.HTTP_200_OK)
def get_all_users():
    cursor.execute("SELECT * FROM members")
    res = cursor.fetchall()
    print(res)
    return {"data": res}