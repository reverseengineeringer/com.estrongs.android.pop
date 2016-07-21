package com.duapps.ad.stats;

import android.os.SystemClock;
import com.duapps.ad.base.ak;
import com.duapps.ad.base.al;
import com.duapps.ad.base.l;
import com.duapps.ad.k;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class s
  extends al
{
  s(r paramr, long paramLong) {}
  
  public void a(int paramInt, ak paramak)
  {
    com.duapps.ad.base.r.a(q.a(b.a), c);
    paramak = a;
    if ((200 == paramInt) && (paramak != null)) {}
    for (;;)
    {
      JSONObject localJSONObject;
      int i;
      try
      {
        localJSONObject = paramak.getJSONObject("datas");
        JSONArray localJSONArray = localJSONObject.getJSONArray("list");
        i = 0;
        if (i < localJSONArray.length())
        {
          paramak = localJSONArray.optJSONObject(i);
          if (paramak == null) {
            break label568;
          }
          int k = paramak.optInt("sid");
          Object localObject = paramak.optJSONObject("wt");
          if ((localObject == null) || (((JSONObject)localObject).length() == 0)) {
            break label568;
          }
          int j = ((JSONObject)localObject).optInt("download");
          com.duapps.ad.base.r.a(q.a(b.a), k, j);
          j = ((JSONObject)localObject).optInt("facebook");
          com.duapps.ad.base.r.b(q.a(b.a), k, j);
          j = ((JSONObject)localObject).optInt("inmobi");
          com.duapps.ad.base.r.c(q.a(b.a), k, j);
          j = ((JSONObject)localObject).optInt("online");
          com.duapps.ad.base.r.e(q.a(b.a), k, j);
          j = ((JSONObject)localObject).optInt("admob");
          com.duapps.ad.base.r.d(q.a(b.a), k, j);
          localObject = paramak.optJSONArray("priority");
          if ((localObject == null) || (((JSONArray)localObject).length() <= 0)) {
            break label568;
          }
          paramak = new StringBuilder();
          j = 0;
          if (j < ((JSONArray)localObject).length())
          {
            paramak = paramak.append(((JSONArray)localObject).get(j));
            paramak.append("#");
            j += 1;
            continue;
          }
          localObject = paramak.toString();
          paramak = com.duapps.ad.base.r.b(q.a(b.a), k, com.duapps.ad.entity.a.b.a(k));
          com.duapps.ad.base.r.a(q.a(b.a), k, ((String)localObject).substring(0, ((String)localObject).length() - 1));
          localObject = ((String)localObject).substring(0, ((String)localObject).length() - 1).split("#");
          k.a(q.a(b.a)).a(k, paramak, (String[])localObject);
        }
      }
      catch (JSONException paramak)
      {
        b.a(q.a(b.a), -101, SystemClock.elapsedRealtime() - a);
        return;
      }
      com.duapps.ad.base.r.g(q.a(b.a), localJSONObject.getInt("logPriority"));
      l.c("TEST", "getSrc logPriority :" + localJSONObject.getInt("logPriority"));
      paramak = localJSONObject.optString("imId");
      com.duapps.ad.base.r.b(q.a(b.a), paramak);
      l.c("TEST", "getSrc Inmobi ID = " + paramak);
      com.duapps.ad.base.r.c(q.a(b.a));
      do
      {
        b.a(q.a(b.a), paramInt, SystemClock.elapsedRealtime() - a);
        return;
      } while (304 != paramInt);
      return;
      label568:
      i += 1;
    }
  }
  
  public void a(int paramInt, String paramString)
  {
    com.duapps.ad.base.r.c(q.a(b.a));
    b.a(q.a(b.a), paramInt, SystemClock.elapsedRealtime() - a);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */