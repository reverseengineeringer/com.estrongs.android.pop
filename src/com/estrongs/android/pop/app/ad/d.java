package com.estrongs.android.pop.app.ad;

import com.duapps.ad.b;
import com.duapps.ad.e;
import com.duapps.ad.f;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import java.util.ArrayList;
import org.json.JSONObject;

class d
  implements e
{
  int a = 0;
  
  d(a parama, long paramLong, f paramf) {}
  
  public void a(f paramf)
  {
    if (a.b(d) != null) {
      a.b(d).a();
    }
    try
    {
      c localc = c.a(FexApplication.a());
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("event", "click");
      localJSONObject.put("channel", paramf.k());
      localc.b("mobula", localJSONObject);
      return;
    }
    catch (Exception paramf) {}
  }
  
  public void a(f arg1, b paramb)
  {
    long l1;
    long l2;
    JSONObject localJSONObject;
    synchronized (d)
    {
      a.a(d, false);
      l1 = System.currentTimeMillis();
      l2 = b;
    }
  }
  
  public void b(f paramf)
  {
    long l1 = System.currentTimeMillis();
    long l2 = b;
    a += 1;
    Object localObject2 = new j(paramf, FexApplication.a());
    for (;;)
    {
      synchronized (d)
      {
        a.a(d).add(localObject2);
        if (a < 1) {
          c.d();
        }
      }
      synchronized (d)
      {
        a.a(d, false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ad.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */