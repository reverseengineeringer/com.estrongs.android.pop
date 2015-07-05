package com.estrongs.android.pop.spfs;

import com.estrongs.android.pop.netfs.INetRefreshCallback;

public class SPFileSystem$CacheRefreshCallback
  implements INetRefreshCallback
{
  private String fullpath = null;
  
  public void operation_end(Object paramObject) {}
  
  public void operation_start() {}
  
  public void setPath(String paramString)
  {
    fullpath = paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.SPFileSystem.CacheRefreshCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */