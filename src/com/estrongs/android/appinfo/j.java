package com.estrongs.android.appinfo;

import com.estrongs.android.util.af;
import com.estrongs.android.util.l;

class j
  implements af
{
  j(i parami) {}
  
  public void downloadCompleted(Object paramObject) {}
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    l.b("AppFolder", "request app_folder_map update info failed !");
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */