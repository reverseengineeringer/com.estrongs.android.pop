package com.estrongs.android.pop.app;

import com.estrongs.a.a.c;
import com.estrongs.android.a.d;
import java.util.Map;

class lf
  implements d
{
  lf(ShowDialogActivity paramShowDialogActivity, c paramc, com.estrongs.a.a parama) {}
  
  public void a(String paramString1, String paramString2, Object paramObject)
  {
    com.estrongs.android.a.a.a.remove(Long.valueOf(ShowDialogActivity.a(c)));
    a.b = paramString1;
    paramObject = a;
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    c = paramString1;
    b.sendMessage(5, new Object[] { a });
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.lf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */