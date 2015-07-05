package com.estrongs.android.pop.utils;

import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.dialog.dm;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.am;
import com.estrongs.fs.a.b;
import com.estrongs.fs.d;
import com.estrongs.fs.o;
import java.util.List;

final class aw
  implements dm
{
  aw(ESActivity paramESActivity, r paramr, List paramList) {}
  
  public void a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {
      ad.a(a).F(paramString);
    }
    paramString = b.g() + "/files" + "/" + paramString;
    aj.a(a, c, d.m(paramString), true);
    if ((b.a().h(paramString) == null) && (b.a().h(am.bN(paramString)) == null)) {
      b.a().a(new o(paramString, false));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */