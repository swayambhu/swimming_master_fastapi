from fastapi import APIRouter, status, HTTPException

router = APIRouter(
    prefix="/members",
    tags=["Members"]
)

@router.get("/", status_code= status.HTTP_200_OK)
def get_all_users():
    return {"data": ["current users"]}