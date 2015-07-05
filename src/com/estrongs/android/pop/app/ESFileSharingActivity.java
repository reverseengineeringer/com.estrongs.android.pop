package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.pcs.j;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.a;

public class ESFileSharingActivity
  extends ESActivity
{
  private boolean a = true;
  private a b = null;
  
  private void a()
  {
    Intent localIntent = getIntent();
    localIntent.setClass(this, LocalFileSharingActivity.class);
    startActivity(localIntent);
    finish();
  }
  
  public void a(Activity paramActivity, String paramString)
  {
    if (r.a().b())
    {
      aj.a(paramActivity, paramString, new bm(this));
      a = false;
      return;
    }
    aj.a(paramActivity, new bn(this, paramActivity, paramString));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    j localj = r.a().j();
    if (localj != null) {
      localj.a(paramInt1, paramIntent, paramInt2);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    if (cc.a())
    {
      b = a.a(this, false, "ESFileSharingActivity");
      paramBundle = getString(2131428699);
      String str = getString(2131428211);
      ct localct = new ct(this).a(2131427388);
      bl localbl = new bl(this);
      localct.a(new String[] { paramBundle, str }, -1, localbl).d(false).a(new bk(this)).c();
      a = true;
      setTheme(16973839);
      return;
    }
    a();
    finish();
  }
  
  protected void onPause()
  {
    super.onPause();
    if (b != null) {
      b.c();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (b != null) {
      b.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ESFileSharingActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */