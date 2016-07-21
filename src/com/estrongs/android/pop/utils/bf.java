package com.estrongs.android.pop.utils;

import android.app.Activity;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.do;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.fs.a.b;
import com.estrongs.fs.d;
import com.estrongs.fs.z;
import java.util.List;

final class bf
  implements do
{
  bf(Activity paramActivity, u paramu, List paramList) {}
  
  public void a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {
      ad.a(a).F(paramString);
    }
    paramString = b.g() + "/files" + "/" + paramString;
    ao.a(a, c, d.m(paramString), true);
    if ((b.a().h(paramString) == null) && (b.a().h(ap.ce(paramString)) == null)) {
      b.a().a(new z(paramString, false));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */