package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.io.File;
import java.text.MessageFormat;
import java.util.Map;

class e
  extends ix
{
  e(d paramd, Activity paramActivity, String paramString1, com.estrongs.a.a parama, RemoteSynchronizer.RemoteFile paramRemoteFile, String paramString2)
  {
    super(paramActivity, paramString1, parama);
  }
  
  protected String a()
  {
    return null;
  }
  
  protected String b()
  {
    return MessageFormat.format(c.c.c.getString(2131427852), new Object[] { c.b.getName() });
  }
  
  protected void b(com.estrongs.a.a parama)
  {
    if ((c.c.e) && (c.a))
    {
      RemoteSynchronizer.a(am.bk(c.c.d));
      if (a == null) {
        break label211;
      }
    }
    for (parama = a;; parama = new RemoteSynchronizer.RemoteFile(c.b))
    {
      h localh = com.estrongs.fs.d.a().a(c.b.getPath(), false, false);
      Map localMap = RemoteSynchronizer.c;
      if (localh != null) {}
      label211:
      try
      {
        if ((lastModified != localh.lastModified()) || (size != localh.length()))
        {
          lastModified = localh.lastModified();
          size = localh.length();
        }
        RemoteSynchronizer.c.put(b, parama);
        cachePath = c.c.d;
        localFileLastModified = new File(c.c.d).lastModified();
        RemoteSynchronizer.c();
        com.estrongs.android.pop.utils.a.a(c.c.c, c.c.g);
        return;
      }
      finally {}
    }
  }
  
  protected void c(com.estrongs.a.a parama)
  {
    com.estrongs.android.pop.utils.a.a(c.c.c, MessageFormat.format(c.c.c.getString(2131427853), new Object[] { c.b.getName() }));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */