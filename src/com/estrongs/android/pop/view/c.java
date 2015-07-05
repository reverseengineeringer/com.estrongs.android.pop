package com.estrongs.android.pop.view;

import android.os.Handler;
import com.estrongs.android.ui.addressbar.AdvancedAddressBar;
import com.estrongs.android.ui.d.e;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.aw;
import com.estrongs.android.view.ca;
import java.util.ArrayList;

class c
  implements ca
{
  Runnable a = null;
  
  c(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(String paramString, boolean paramBoolean)
  {
    a(paramString, paramBoolean, true);
  }
  
  public void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = e.a();
    aw localaw = b.y();
    if (paramString == null) {
      if (localaw != null)
      {
        str = localaw.c();
        paramString = str;
        if (str == null) {
          paramString = u;
        }
        str = paramString;
        if (paramString != null) {}
      }
    }
    for (String str = "New";; str = paramString)
    {
      if ((localaw != null) && (!str.startsWith("http://win-title/")))
      {
        localObject = localaw.c();
        paramString = (String)localObject;
        if (bd.a((CharSequence)localObject)) {
          paramString = u;
        }
        if (!am.e(paramString, str)) {
          return;
        }
      }
      if (b.u) {
        FileExplorerActivity.a(b).a(str);
      }
      FileExplorerActivity.a(b, false);
      Object localObject = new String[2];
      FileExplorerActivity.a(b, b.y(), e.b(), str, (String[])localObject);
      paramString = localObject[0];
      localObject = localObject[1];
      ArrayList localArrayList = new ArrayList();
      if (a != null) {
        b.h.removeCallbacks(a);
      }
      a = new d(this, paramString, str, localArrayList, (String)localObject, i, localaw, paramBoolean1, paramBoolean2);
      b.h.post(a);
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