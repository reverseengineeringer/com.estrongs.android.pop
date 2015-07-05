package com.estrongs.android.pop.app;

import com.estrongs.android.util.bc;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.m;
import java.util.List;
import java.util.Vector;

class il
  implements Runnable
{
  il(PopRemoteImageBrowser paramPopRemoteImageBrowser) {}
  
  public void run()
  {
    int j = 0;
    try
    {
      List localList = PopRemoteImageBrowser.f(a).a(PopRemoteImageBrowser.e(a), false);
      if (localList == null) {
        return;
      }
    }
    catch (Exception localException)
    {
      Object localObject;
      for (;;)
      {
        localObject = null;
      }
      Vector localVector = new Vector();
      int i = 0;
      if (i < ((List)localObject).size())
      {
        h localh = (h)((List)localObject).get(i);
        if (localh == null) {}
        for (;;)
        {
          i += 1;
          break;
          if ((!localh.getFileType().a()) && (bc.c(localh.getAbsolutePath()))) {
            localVector.add(localh.getAbsolutePath());
          }
        }
      }
      PopRemoteImageBrowser.a(a, new String[localVector.size()]);
      localVector.toArray(PopRemoteImageBrowser.a(a));
      i = j;
      while (i < PopRemoteImageBrowser.a(a).length)
      {
        if (PopRemoteImageBrowser.a(a)[i].equals(PopRemoteImageBrowser.g(a))) {
          PopRemoteImageBrowser.a(a, i);
        }
        i += 1;
      }
      PopRemoteImageBrowser.h(a);
      io.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.il
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */