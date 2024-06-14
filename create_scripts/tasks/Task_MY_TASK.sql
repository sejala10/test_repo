create or replace task MY_TASK
	warehouse=COMPUTE_WH
	schedule='60 minute'
	as SELECT PI();