package com.dianxinos.library.notify.c;

import android.text.TextUtils;
import com.dianxinos.library.notify.dispatcher.p;
import com.dianxinos.library.notify.j.d;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

public class a
  implements c
{
  public int a(p paramp)
  {
    if ((paramp == null) || (!a().equals(b))) {}
    String str;
    do
    {
      Object localObject;
      do
      {
        do
        {
          return 0;
        } while (com.dianxinos.library.notify.c.a(a) == null);
        try
        {
          localObject = new JSONObject(d);
          str = ((JSONObject)localObject).optString("chksum");
          if (TextUtils.isEmpty(str)) {
            return 1;
          }
        }
        catch (JSONException paramp)
        {
          paramp.printStackTrace();
          return 0;
        }
        localObject = ((JSONObject)localObject).optString("url");
      } while (TextUtils.isEmpty((CharSequence)localObject));
      paramp = d.b(new File(com.dianxinos.library.notify.c.a((String)localObject, a)).getAbsolutePath());
    } while ((paramp == null) || (!paramp.equals(str)));
    return 1;
  }
  
  public String a()
  {
    return "checksum";
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */