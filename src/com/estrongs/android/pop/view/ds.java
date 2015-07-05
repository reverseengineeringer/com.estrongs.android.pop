package com.estrongs.android.pop.view;

import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.ui.dialog.o;
import com.estrongs.android.util.bc;
import com.estrongs.android.view.cc;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.f;

class ds
  implements cc
{
  ds(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a(h paramh)
  {
    if ((paramh instanceof com.estrongs.fs.impl.n.a)) {}
    for (Object localObject = ((com.estrongs.fs.impl.n.a)paramh).a(); (localObject instanceof com.estrongs.fs.impl.b.c); localObject = paramh)
    {
      new o(a, (com.estrongs.fs.impl.b.c)localObject).a();
      return;
    }
    if ((localObject instanceof f))
    {
      a.Q().a((f)localObject);
      return;
    }
    if (bc.O(((h)localObject).getPath()))
    {
      DownloaderActivity.a(a, (h)localObject, false);
      return;
    }
    if ((localObject instanceof com.estrongs.fs.impl.b.c))
    {
      new o(a, (com.estrongs.fs.impl.b.c)localObject).a();
      return;
    }
    if ((localObject instanceof com.estrongs.fs.impl.j.a))
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
          if (n.a(FileExplorerActivity.ac(), paramh) == null) {
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
    a.a(paramh.getPath(), paramh.getAbsolutePath());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */