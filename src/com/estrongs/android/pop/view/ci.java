package com.estrongs.android.pop.view;

import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.pop.utils.c;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.ui.c.e;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.ui.dialog.o;
import com.estrongs.android.util.bg;
import com.estrongs.android.view.ak;
import com.estrongs.android.view.dx;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.d;
import com.estrongs.fs.impl.b.g;

class ci
  implements dx
{
  ci(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(h paramh)
  {
    if ((paramh instanceof com.estrongs.fs.impl.s.a)) {}
    for (Object localObject = ((com.estrongs.fs.impl.s.a)paramh).a(); (localObject instanceof d); localObject = paramh)
    {
      new o(a, (d)localObject).a();
      return;
    }
    if ((localObject instanceof g))
    {
      a.ag().a((g)localObject);
      return;
    }
    if (bg.O(((h)localObject).getPath()))
    {
      DownloaderActivity.a(a, (h)localObject, false);
      return;
    }
    if ((localObject instanceof d))
    {
      new o(a, (d)localObject).a();
      return;
    }
    if ((localObject instanceof com.estrongs.fs.impl.o.a))
    {
      String str = (String)((h)localObject).getExtra("web_file_url");
      if (str != null)
      {
        paramh = new Intent("android.intent.action.VIEW");
        paramh.setData(Uri.parse(str));
        localObject = (String)((h)localObject).getExtra("intent_file_url");
        if (localObject != null)
        {
          paramh.setData(Uri.parse((String)localObject));
          if (n.a(FileExplorerActivity.aA(), paramh) == null) {
            paramh.setData(Uri.parse(str));
          }
        }
        a.startActivity(paramh);
        return;
      }
    }
    if ((localObject instanceof com.estrongs.fs.impl.adb.a))
    {
      new com.estrongs.android.ui.dialog.a(a, (com.estrongs.fs.impl.adb.a)localObject).a();
      return;
    }
    if ((a.O() instanceof ak)) {
      FileExplorerActivity.c(a, true);
    }
    for (;;)
    {
      a.a(paramh.getPath(), paramh.getAbsolutePath());
      return;
      if (!(a.O() instanceof e))
      {
        FileExplorerActivity.a(a, a.au().a());
        FileExplorerActivity.c(a, false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */