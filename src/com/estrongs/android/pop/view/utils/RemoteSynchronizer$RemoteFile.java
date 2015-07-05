package com.estrongs.android.pop.view.utils;

import com.estrongs.fs.h;
import java.io.Serializable;

public class RemoteSynchronizer$RemoteFile
  implements Serializable
{
  private static final long serialVersionUID = -1026136086149303164L;
  public String cachePath = null;
  public long lastModified = -1L;
  public long localFileLastModified = -1L;
  public String path = null;
  public long size = -1L;
  public String tmpPath = null;
  
  public RemoteSynchronizer$RemoteFile(h paramh)
  {
    path = paramh.getAbsolutePath();
    size = paramh.length();
    lastModified = paramh.lastModified();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.RemoteSynchronizer.RemoteFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */