SELECT
	c.CI_ID,
	c.STU_IDS,
	wm_concat ( CASE WHEN instr( c.STU_IDS, s.STU_ID ) > 0 THEN s.stu_name ELSE NULL END ) stu_names 
FROM
	PM_CI c,
	PM_STU s 
GROUP BY
	c.CI_ID,
	c.STU_IDS;
