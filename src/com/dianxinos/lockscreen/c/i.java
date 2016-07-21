package com.dianxinos.lockscreen.c;

import android.content.Context;
import com.dianxinos.dxservice.core.a;
import org.json.JSONObject;

public class i
{
  public static void a(Context paramContext)
  {
    a.a(paramContext).b();
    if (g.a) {
      g.a("LockScreen_Stats", "report Optimizer start()");
    }
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    if ((paramInt < 2) || (paramInt > 6)) {
      throw new IllegalArgumentException("Invalid active level (" + paramInt + ")");
    }
    switch (paramInt)
    {
    }
    for (;;)
    {
      if (g.a) {
        g.a("LockScreen_Stats", "report Activite, key: class, level: " + paramInt + ", value: " + 1);
      }
      return;
      a(paramContext, "class", "act2", Integer.valueOf(1));
      a(paramContext);
      continue;
      a(paramContext, "class", "act3", Integer.valueOf(1));
      a(paramContext);
      continue;
      a(paramContext, "class", "act4", Integer.valueOf(1));
      a(paramContext);
      continue;
      a(paramContext, "class", "act5", Integer.valueOf(1));
      a(paramContext);
      continue;
      a(paramContext, "class", "act6", Integer.valueOf(1));
      a(paramContext);
    }
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, Number paramNumber)
  {
    if (g.a) {
      g.a("LockScreen_Stats", "report event, key: " + paramString1 + ", contentKey: " + paramString2 + ", value: " + paramNumber);
    }
    a.a(paramContext).a(paramString1, paramString2, paramNumber);
  }
  
  public static void a(Context paramContext, String paramString, JSONObject paramJSONObject)
  {
    if (g.a) {
      g.d("LockScreen_Stats", "report event, key: " + paramString + ", data: " + paramJSONObject);
    }
    a.a(paramContext).a(paramString, 0, paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.c.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */