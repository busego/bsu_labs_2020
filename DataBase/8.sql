SELECT NAME_USER FROM USER_ WHERE USER_ID in (SELECT USER_ID FROM POST 
	WHERE DATE (POST.CREATED_AT) = CURDATE() group by CREATED_AT, USER_ID having count(*) > 3);