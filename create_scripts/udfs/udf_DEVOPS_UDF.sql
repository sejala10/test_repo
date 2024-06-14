CREATE OR REPLACE FUNCTION "DEVOPS_UDF"()
RETURNS VARIANT
LANGUAGE PYTHON
RUNTIME_VERSION = '3.8'
PACKAGES = ('numpy','pandas')
HANDLER = 'udf'
AS '
import numpy as np
import pandas as pd
def udf():
    return [np.__version__, pd.__version__]
';