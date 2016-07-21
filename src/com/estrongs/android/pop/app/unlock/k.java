package com.estrongs.android.pop.app.unlock;

import com.duapps.ad.b;
import com.estrongs.android.j.c;
import org.json.JSONObject;

class k
  implements Runnable
{
  k(j paramj, b paramb) {}
  
  public void run()
  {
    UnLockDialogActivity.a(b.a).a(a);
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("errorCode", a.a());
      c.a(b.a).a("unlockad", localJSONObject);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.unlock.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */