package com.dianxinos.library.notify.b;

import android.text.TextUtils;
import com.dianxinos.library.notify.d;
import java.util.LinkedHashMap;
import java.util.Map;

public class a
{
  private static Map<String, d> a = new LinkedHashMap();
  
  public static d a(String paramString)
  {
    Object localObject = null;
    for (;;)
    {
      try
      {
        boolean bool = TextUtils.isEmpty(paramString);
        if (bool)
        {
          paramString = (String)localObject;
          return paramString;
        }
        synchronized (a)
        {
          if (a.containsKey(paramString)) {
            paramString = (d)a.get(paramString);
          }
        }
      }
      finally {}
      paramString = (String)localObject;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */