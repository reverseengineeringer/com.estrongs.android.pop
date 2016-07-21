package com.estrongs.android.pop.app;

import android.app.Activity;
import android.content.Context;
import com.estrongs.a.a;
import com.estrongs.a.p;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.ad;
import java.io.File;

final class bc
  extends jh
{
  bc(Activity paramActivity, String paramString1, a parama, String paramString2, String paramString3)
  {
    super(paramActivity, paramString1, parama);
  }
  
  protected String a()
  {
    return getContext().getString(2131231397, new Object[] { ap.F(b) });
  }
  
  protected String a(p paramp)
  {
    if ((paramp != null) && (b != null)) {
      return a;
    }
    return null;
  }
  
  protected String b()
  {
    return getContext().getString(2131231378, new Object[] { ap.F(b) });
  }
  
  protected void c(a parama)
  {
    try
    {
      new File(((ad)parama).c()).delete();
      return;
    }
    catch (Exception parama) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */