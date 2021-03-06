
/****** Object:  StoredProcedure [dbo].[hris_get_latest_paf]    Script Date: 20/03/2018 10:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[hris_get_latest_paf]
	@id_num varchar(12),
	@as_of_date datetime
AS
BEGIN
	select top 1 *
	  from paf p (nolock)
	 where p.id_num = @id_num
	   and isnull(p.is_cancelled,0) = 0
	   and p.pafstatus_code = 'APP'
	   and p.effective_date < @as_of_date
  order by p.effective_date desc
END

