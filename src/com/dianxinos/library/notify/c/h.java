package com.dianxinos.library.notify.c;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.dianxinos.library.notify.dispatcher.b;
import com.dianxinos.library.notify.dispatcher.p;
import org.json.JSONException;
import org.json.JSONObject;

public class h
  implements c
{
  public int a(p paramp)
  {
    boolean bool1 = true;
    if ((paramp == null) || (!"uninstall".equals(c)) || (TextUtils.isEmpty(d))) {}
    while (com.dianxinos.library.notify.c.a(a) == null) {
      return 0;
    }
    Context localContext = com.dianxinos.library.notify.c.a();
    for (;;)
    {
      try
      {
        Object localObject = new JSONObject(d);
        if (((JSONObject)localObject).optInt("silent") == 1)
        {
          localObject = ((JSONObject)localObject).optString("pkgName");
          boolean bool2 = TextUtils.isEmpty((CharSequence)localObject);
          if (!bool2) {
            try
            {
              localContext.getPackageManager().getApplicationInfo((String)localObject, 8192);
              com.dianxinos.library.notify.g.a.e(a, (String)localObject);
              if (com.dianxinos.library.notify.e.a.a(localContext).a(localContext, (String)localObject, b.a(), bool1)) {
                return 2;
              }
            }
            catch (PackageManager.NameNotFoundException localNameNotFoundException)
            {
              com.dianxinos.library.notify.g.a.e(a, "null");
              return 0;
            }
          }
          return 2;
        }
      }
      catch (JSONException paramp)
      {
        paramp.printStackTrace();
        return 0;
      }
      bool1 = false;
    }
  }
  
  public String a()
  {
    return "uninstall";
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.c.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */