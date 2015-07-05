package com.estrongs.android.pop.view.utils;

import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.p;
import com.estrongs.android.util.am;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.b.r;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.util.j;
import java.io.File;

public class y
  extends a
{
  protected RemoteSynchronizer.RemoteFile a;
  private r b = null;
  private ab c;
  private boolean d = false;
  private long e;
  private long f;
  
  public y(RemoteSynchronizer.RemoteFile paramRemoteFile, ab paramab)
  {
    a = paramRemoteFile;
    c = paramab;
  }
  
  protected void a()
  {
    try
    {
      if (d.a().a(d.a().j(a.tmpPath))) {
        a.tmpPath = null;
      }
      return;
    }
    catch (FileSystemException localFileSystemException)
    {
      localFileSystemException.printStackTrace();
    }
  }
  
  public void addProgressListener(l paraml)
  {
    super.addProgressListener(paraml);
    if ((b != null) && (b.getTaskStatus() == 2)) {
      b.addProgressListener(paraml);
    }
  }
  
  public a b()
  {
    return b;
  }
  
  public void requestStop()
  {
    if ((b != null) && (b.getTaskStatus() == 2)) {
      b.requestStop();
    }
    super.requestStop();
  }
  
  public boolean task()
  {
    h localh = d.a().a(a.path, false, false);
    if (localh == null) {
      return false;
    }
    if (a.tmpPath != null) {}
    try
    {
      if (d.a().a(d.a().j(a.tmpPath))) {
        d = true;
      }
    }
    catch (FileSystemException localFileSystemException)
    {
      for (;;)
      {
        localFileSystemException.printStackTrace();
        a.tmpPath = null;
      }
    }
    finally
    {
      a.tmpPath = null;
    }
    e = a.lastModified;
    f = a.size;
    if ((localh.lastModified() != e) || (localh.length() != f)) {
      return false;
    }
    String str = am.bA(localh.getName());
    StringBuilder localStringBuilder = new StringBuilder().append(am.bk(localh.getPath())).append(localh.getName()).append(".new");
    if (str == null) {
      ??? = "";
    }
    for (;;)
    {
      ??? = j.m((String)???);
      a.tmpPath = ((String)???);
      synchronized (RemoteSynchronizer.g())
      {
        RemoteSynchronizer.b();
        b = new r(d.a(), new f(new File(a.cachePath)), d.a().j(am.bk(a.tmpPath)), am.d(a.tmpPath));
        b.d(false);
        b.e(true);
        b.addProgressListeners(getProgressListeners());
        b.addPostListener(new z(this, str, localh));
        b.execute(false);
        if (b.getTaskStatus() != 4)
        {
          ??? = b.getTaskResult();
          setTaskResult(a, b);
          return false;
          ??? = str;
        }
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */