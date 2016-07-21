package com.estrongs.android.pop.view;

import android.os.Handler;
import com.estrongs.android.ui.controller.a;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.cr;
import com.estrongs.android.view.dv;

class c
  implements dv
{
  Runnable a = null;
  
  c(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(String paramString, boolean paramBoolean)
  {
    a(paramString, paramBoolean, true);
  }
  
  public void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = b.au().a();
    cr localcr = b.O();
    if (paramString == null) {
      if (localcr != null)
      {
        str1 = localcr.c();
        paramString = str1;
        if (str1 == null) {
          paramString = B;
        }
        str1 = paramString;
        if (paramString != null) {}
      }
    }
    for (String str1 = "New";; str1 = paramString)
    {
      if ((localcr != null) && (!str1.startsWith("http://win-title/")))
      {
        String str2 = localcr.c();
        paramString = str2;
        if (bk.a(str2)) {
          paramString = B;
        }
        if (!ap.e(paramString, str1)) {
          return;
        }
      }
      FileExplorerActivity.a(b).a(str1);
      FileExplorerActivity.a(b, false);
      paramString = new String[2];
      b.a(b.O(), b.au().b(), str1, paramString);
      if (a != null) {
        b.i.removeCallbacks(a);
      }
      a = new d(this, localcr, str1, paramString, i, paramBoolean1, paramBoolean2);
      b.i.post(a);
      return;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */