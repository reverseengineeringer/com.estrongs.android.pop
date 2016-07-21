package com.dianxinos.library.notify.c;

import android.text.TextUtils;
import com.dianxinos.library.notify.dispatcher.a;
import com.dianxinos.library.notify.dispatcher.p;
import com.dianxinos.library.notify.download.i;
import com.dianxinos.library.notify.download.o;
import org.json.JSONException;
import org.json.JSONObject;

public class b
  implements c
{
  public int a(p paramp)
  {
    if ((paramp == null) || (!a().equals(b))) {}
    for (;;)
    {
      return 0;
      if ((com.dianxinos.library.notify.c.a(a) == null) || (!a().equals(b))) {
        continue;
      }
      try
      {
        Object localObject = new JSONObject(d);
        String str1 = ((JSONObject)localObject).optString("work");
        if (!a().equals(str1)) {
          continue;
        }
        str1 = ((JSONObject)localObject).optString("url");
        if (TextUtils.isEmpty(str1)) {
          continue;
        }
        String str2 = ((JSONObject)localObject).optString("network");
        if (((TextUtils.isEmpty(str2)) && (("preload_bkg".equals(e)) || ("preload_file".equals(e)))) || (((JSONObject)localObject).optInt("size", -1) < 0)) {
          continue;
        }
        i locali;
        if (("preload_bkg".equals(e)) || ("preload_file".equals(e)))
        {
          localObject = a.a();
          if (localObject == null) {
            continue;
          }
          locali = new i();
          a = a;
          c = str2;
          b = str1;
          if (!"preload_bkg".equals(e)) {
            break label249;
          }
          d = "preload_bkg";
        }
        for (;;)
        {
          ((a)localObject).a(o.c(a, str1), locali);
          ((a)localObject).c();
          return 2;
          localObject = a.b();
          break;
          label249:
          if ("preload_file".equals(e)) {
            d = "preload_file";
          } else {
            d = "download";
          }
        }
        return 0;
      }
      catch (JSONException paramp) {}
    }
  }
  
  public String a()
  {
    return "download";
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */