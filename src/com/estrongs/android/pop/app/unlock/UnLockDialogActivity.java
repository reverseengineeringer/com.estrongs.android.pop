package com.estrongs.android.pop.app.unlock;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.duapps.ad.e;
import com.estrongs.android.k.d;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.utils.an;
import org.json.JSONObject;

public class UnLockDialogActivity
  extends ESResourceActivity
{
  private String a;
  private String b;
  private q d;
  private y e;
  
  private e a()
  {
    return new j(this);
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    an.a(this);
    if (getIntent() != null)
    {
      a = getIntent().getStringExtra("lock_id");
      b = getIntent().getStringExtra("lock_from");
    }
    if (TextUtils.isEmpty(a)) {
      finish();
    }
    Object localObject = com.estrongs.android.k.h.a().a(a);
    if (localObject == null) {
      finish();
    }
    paramBundle = new a();
    a = a;
    localObject = ((d)localObject).b();
    if (localObject != null)
    {
      b = ((com.estrongs.android.k.f)localObject).a("dialog_title");
      c = ((com.estrongs.android.k.f)localObject).a("dialog_icon");
      d = ((com.estrongs.android.k.f)localObject).a("dialog_msg");
    }
    e = getString(2131232501);
    d = new q(this, paramBundle);
    d.show();
    d.setOnDismissListener(new h(this));
    e = new i(this);
    s.a().a(e);
    paramBundle = s.a().c(a);
    if (paramBundle != null) {
      d.a(paramBundle);
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(b)) {}
      try
      {
        paramBundle = new JSONObject();
        paramBundle.put("from", b);
        paramBundle.put("feature", a);
        paramBundle.put("action", "show");
        com.estrongs.android.j.c.a(this).a("unlockd", paramBundle);
        return;
      }
      catch (Exception paramBundle)
      {
        paramBundle.printStackTrace();
      }
      if ((ab != null) && (!s.a().d(ab.l().f())))
      {
        d.a(ab);
      }
      else
      {
        paramBundle = new com.duapps.ad.f(this, 11718);
        paramBundle.a(a());
        paramBundle.d();
      }
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    s.a().b(e);
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.unlock.UnLockDialogActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */