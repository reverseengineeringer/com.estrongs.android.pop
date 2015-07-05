package com.estrongs.android.pop.view.utils;

import android.os.FileObserver;
import java.io.File;
import java.util.Map;

public class aa
  extends FileObserver
{
  private String a;
  
  public aa(String paramString)
  {
    super(paramString);
    a = paramString;
  }
  
  public void onEvent(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      return;
      RemoteSynchronizer.RemoteFile localRemoteFile;
      synchronized (RemoteSynchronizer.c)
      {
        localRemoteFile = (RemoteSynchronizer.RemoteFile)RemoteSynchronizer.c.get(paramString);
        if (localRemoteFile == null) {
          continue;
        }
        paramString = new File(a, paramString);
        cachePath = paramString.getPath();
        localFileLastModified = paramString.lastModified();
        RemoteSynchronizer.a(localRemoteFile);
        return;
      }
      synchronized (RemoteSynchronizer.c)
      {
        localRemoteFile = (RemoteSynchronizer.RemoteFile)RemoteSynchronizer.c.get(paramString);
        if (localRemoteFile == null) {
          continue;
        }
        paramString = new File(a, paramString);
        cachePath = paramString.getPath();
        localFileLastModified = paramString.lastModified();
        RemoteSynchronizer.a(localRemoteFile);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */