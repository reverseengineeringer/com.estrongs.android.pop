package com.dianxinos.library.notify.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.dianxinos.library.dxbase.o;
import com.dianxinos.library.notify.data.Works;
import com.dianxinos.library.notify.data.j;
import com.dianxinos.library.notify.dispatcher.p;
import com.dianxinos.library.notify.dispatcher.q;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

public class d
  implements c
{
  public int a(p paramp)
  {
    boolean bool = false;
    if ((paramp == null) || (!a().equals(b))) {}
    Object localObject1;
    Object localObject2;
    PackageInfo localPackageInfo;
    do
    {
      do
      {
        do
        {
          do
          {
            return 0;
            localObject1 = com.dianxinos.library.notify.c.a(a);
          } while (localObject1 == null);
          localObject1 = h.getFileUrl();
        } while (TextUtils.isEmpty((CharSequence)localObject1));
        localObject2 = new File(com.dianxinos.library.notify.c.a((String)localObject1, a));
      } while ((!((File)localObject2).exists()) || (!((File)localObject2).canRead()) || (!((File)localObject2).isFile()));
      localObject1 = com.dianxinos.library.notify.c.a();
      localPackageInfo = com.dianxinos.library.notify.j.e.a((Context)localObject1, ((File)localObject2).getAbsolutePath());
    } while (localPackageInfo == null);
    q.a(a, packageName, versionCode);
    o.a(new e(this, localPackageInfo), 600000);
    if (!TextUtils.isEmpty(d)) {}
    for (;;)
    {
      try
      {
        int i = new JSONObject(d).optInt("silent");
        if (i == 1) {
          bool = true;
        }
      }
      catch (JSONException localJSONException)
      {
        bool = false;
        continue;
      }
      localObject2 = Uri.fromFile((File)localObject2);
      com.dianxinos.library.notify.e.a.a((Context)localObject1).a((Context)localObject1, (Uri)localObject2, ((Context)localObject1).getPackageName(), null, 1, bool);
      com.dianxinos.library.notify.g.a.c(a, packageName);
      return 2;
      bool = false;
    }
  }
  
  public String a()
  {
    return "install";
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */