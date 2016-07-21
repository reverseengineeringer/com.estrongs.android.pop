package com.dianxinos.lockscreen.b;

import android.content.Context;
import android.text.TextUtils;
import com.dianxinos.lockscreen.ad.AdvertDataMgr;
import com.dianxinos.lockscreen.c.g;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class b
{
  public static String a;
  private final Context b;
  private final e c;
  
  static
  {
    if (g.a) {}
    for (String str = "http://cq01-duapps-qa-2016-09.epc.baidu.com:8888/appLock/getConf";; str = "http://common.duapps.com/appLock/getConf")
    {
      a = str;
      return;
    }
  }
  
  public b(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    c = new e(paramContext);
  }
  
  public boolean a()
  {
    g.a("LockScreenAppsPuller", "start pull ");
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append(com.dianxinos.DXStatService.stat.a.a(b));
    if (((StringBuilder)localObject2).length() != 0) {
      ((StringBuilder)localObject2).append("&");
    }
    ((StringBuilder)localObject2).append("module").append("=").append("lockscreen");
    com.dianxinos.lockscreen.a locala = com.dianxinos.lockscreen.a.a(b);
    Object localObject1 = locala.d();
    if (com.dianxinos.lockscreen.c.e.a(b) > locala.i())
    {
      localObject1 = Long.valueOf(0L);
      locala.a(((Long)localObject1).longValue());
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("pkg_utime", "0"));
    localArrayList.add(new BasicNameValuePair("conf_utime", String.valueOf(localObject1)));
    boolean bool2 = false;
    localObject1 = c.a(a, localArrayList, ((StringBuilder)localObject2).toString());
    boolean bool1 = bool2;
    if (localObject1 != null)
    {
      g.a("LockScreenAppsPuller", "request reponse code:" + a);
      if (200 == a)
      {
        bool1 = bool2;
        if (!TextUtils.isEmpty(b))
        {
          g.a("LockScreenAppsPuller", "request result:" + b);
          try
          {
            localObject1 = new JSONObject(b);
            localObject2 = ((JSONObject)localObject1).optJSONObject("conf");
            if (localObject2 == null) {
              break label417;
            }
            g.a("LockScreenAppsPuller", "conf:" + localObject2);
            locala.a(((JSONObject)localObject1).optLong("utime"));
            locala.b(com.dianxinos.lockscreen.c.e.a(b));
            localObject1 = ((JSONObject)localObject2).optJSONObject("data");
            if (localObject1 == null)
            {
              g.d("LockScreenAppsPuller", "can not find data from conf");
            }
            else
            {
              locala = com.dianxinos.lockscreen.a.a(b);
              locala.c(((JSONObject)localObject1).optBoolean("switch", true));
              locala.d(((JSONObject)localObject1).optBoolean("label_switch", true));
              AdvertDataMgr.a(b).a((JSONObject)localObject1);
            }
          }
          catch (JSONException localJSONException)
          {
            return true;
          }
        }
      }
      else
      {
        bool1 = bool2;
        if (304 == a)
        {
          return true;
          label417:
          bool1 = true;
        }
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */