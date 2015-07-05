package com.estrongs.android.pop.b;

import android.app.Activity;
import com.estrongs.a.p;
import com.estrongs.android.ui.dialog.jw;
import java.io.File;

final class d
  extends jw
{
  File a = new File(b);
  
  d(Activity paramActivity1, String paramString1, String paramString2, com.estrongs.a.a parama, String paramString3, String paramString4, Runnable paramRunnable, Activity paramActivity2)
  {
    super(paramActivity1, paramString1, paramString2, parama);
  }
  
  protected String a()
  {
    return null;
  }
  
  protected String a(p paramp)
  {
    if ((paramp != null) && (b != null)) {
      return e.getString(2131427728, new Object[] { c.toUpperCase() });
    }
    return null;
  }
  
  protected void a(com.estrongs.a.a parama)
  {
    parama = a.b() + "/es_" + c + ".jar";
    if ("ftps".equalsIgnoreCase(c)) {
      parama = a.b() + "/es_" + "ftp" + ".jar";
    }
    if (new File(parama).exists()) {
      new File(parama).delete();
    }
    a.renameTo(new File(parama));
    if (d != null) {
      e.runOnUiThread(d);
    }
  }
  
  protected void b(com.estrongs.a.a parama)
  {
    a.delete();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */