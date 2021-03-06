
/****** Object:  StoredProcedure [dbo].[sec_get_user_by_username]    Script Date: 8/06/2018 8:35:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[sec_get_user_by_username]
	@username varchar(25)
AS
BEGIN
	select distinct privilege_code, 
	       username, 
		   password, 
		   ur.id_num, 
		   u.credit_limit,
		   e.employee_firstname,
		   e.employee_lastname,
		   e.location_code,
		   e.positiontype_code
	  from sysroleprivilege rp (nolock)
	  join sysuserrole ur (nolock) 
	    on ur.role_code = rp.role_code 
	  join sysuser u (nolock)
	    on u.id_num = ur.id_num
	  join employee e (nolock)
	    on e.id_num = u.id_num
     where u.username = @username
	  
END

