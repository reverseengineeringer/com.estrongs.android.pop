package com.dianxinos.dxservice.stat;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.json.JSONObject;

public class o
{
  public static int a(int paramInt, Object paramObject)
  {
    int i = 1;
    if ((1 == paramInt) && (!(paramObject instanceof JSONObject)) && (!(paramObject instanceof Number))) {
      return -1;
    }
    if ((paramObject instanceof String)) {
      paramInt = 8;
    }
    for (;;)
    {
      return paramInt;
      if ((paramObject instanceof byte[]))
      {
        paramInt = 10;
      }
      else if ((paramObject instanceof JSONObject))
      {
        paramInt = 9;
      }
      else if ((paramObject instanceof Byte))
      {
        paramInt = 0;
      }
      else
      {
        paramInt = i;
        if (!(paramObject instanceof Short)) {
          if ((paramObject instanceof Integer)) {
            paramInt = 2;
          } else if ((paramObject instanceof Long)) {
            paramInt = 3;
          } else if ((paramObject instanceof Float)) {
            paramInt = 4;
          } else if ((paramObject instanceof Double)) {
            paramInt = 5;
          } else if ((paramObject instanceof BigInteger)) {
            paramInt = 6;
          } else if ((paramObject instanceof BigDecimal)) {
            paramInt = 7;
          } else {
            paramInt = -1;
          }
        }
      }
    }
  }
  
  public static boolean a(int paramInt)
  {
    return (paramInt == 0) || (1 == paramInt) || (2 == paramInt) || (3 == paramInt) || (4 == paramInt) || (5 == paramInt) || (6 == paramInt) || (7 == paramInt) || (8 == paramInt) || (9 == paramInt) || (10 == paramInt);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */