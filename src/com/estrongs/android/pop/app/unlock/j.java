package com.estrongs.android.pop.app.unlock;

import android.text.TextUtils;
import com.duapps.ad.b;
import com.duapps.ad.e;
import com.duapps.ad.f;
import org.json.JSONObject;

class j
  implements e
{
  j(UnLockDialogActivity paramUnLockDialogActivity) {}
  
  public void a(f paramf)
  {
    com.estrongs.android.util.l.c("===================================================================onClick, " + UnLockDialogActivity.b(a) + ", " + paramf.l().f());
    s.a().a(UnLockDialogActivity.b(a), paramf.l().f(), paramf.l());
    if (!TextUtils.isEmpty(UnLockDialogActivity.c(a))) {}
    try
    {
      paramf = new JSONObject();
      paramf.put("from", UnLockDialogActivity.c(a));
      paramf.put("feature", UnLockDialogActivity.b(a));
      paramf.put("action", "click");
      com.estrongs.android.j.c.a(a).a("unlockd", paramf);
      return;
    }
    catch (Exception paramf)
    {
      paramf.printStackTrace();
    }
  }
  
  public void a(f paramf, b paramb)
  {
    com.estrongs.android.util.l.c("===================================================================" + paramb.a());
    a.runOnUiThread(new k(this, paramb));
  }
  
  public void b(f paramf)
  {
    a.runOnUiThread(new l(this, paramf));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.unlock.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */