package com.estrongs.android.pop.app;

import android.app.Activity;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.ui.pcs.q;

class br
  implements q
{
  br(ESFileSharingActivity paramESFileSharingActivity, Activity paramActivity, String paramString) {}
  
  public void a(boolean paramBoolean, String paramString1, String paramString2)
  {
    if ((paramBoolean) && (paramString2 != null))
    {
      ao.a(a, b, new bs(this));
      ESFileSharingActivity.a(c, false);
      return;
    }
    c.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */