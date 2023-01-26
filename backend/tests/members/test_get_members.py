def test_get_all_members(client):
    res = client.get('/members/')
    assert res.status_code == 200