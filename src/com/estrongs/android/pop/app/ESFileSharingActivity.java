package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.pcs.l;
import com.estrongs.android.ui.pcs.u;

public class ESFileSharingActivity
  extends ESResourceActivity
{
  private boolean a = true;
  private c b = null;
  
  private void a()
  {
    Intent localIntent = getIntent();
    localIntent.setClass(this, LocalFileSharingActivity.class);
    startActivity(localIntent);
    finish();
  }
  
  public void a(Activity paramActivity, String paramString)
  {
    if (u.a().b())
    {
      ao.a(paramActivity, paramString, new bq(this));
      a = false;
      return;
    }
    ao.a(paramActivity, new br(this, paramActivity, paramString));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    l locall = u.a().j();
    if (locall != null) {
      locall.a(paramInt1, paramIntent, paramInt2);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (cl.a())
    {
      b = c.a(this);
      b = c.a(this);
      try
      {
        b.d("act3");
        b.a("act3", "es_file_sharing");
        paramBundle = getString(2131232324);
        String str = getString(2131230795);
        cv localcv = new cv(this).a(2131230892);
        bp localbp = new bp(this);
        localcv.a(new String[] { paramBundle, str }, -1, localbp).d(false).a(new bo(this)).c();
        a = true;
        return;
      }
      catch (Exception paramBundle)
      {
        for (;;)
        {
          paramBundle.printStackTrace();
        }
      }
    }
    a();
    finish();
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ESFileSharingActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */