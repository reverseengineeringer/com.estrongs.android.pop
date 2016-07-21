package com.dianxinos.library.notify.download;

import android.content.Context;
import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.j;
import com.dianxinos.library.notify.c;
import com.dianxinos.library.notify.h.a;

public class h
{
  private static s a;
  
  private static s a()
  {
    try
    {
      if (a == null) {
        a = new q(c.a());
      }
      s locals = a;
      return locals;
    }
    finally {}
  }
  
  public static boolean a(i parami)
  {
    if (e.c) {
      j.b("download task: " + parami.toString());
    }
    DownloadInfo localDownloadInfo2 = a.a(b);
    Context localContext = c.a();
    DownloadInfo localDownloadInfo1 = localDownloadInfo2;
    if (localDownloadInfo2 == null)
    {
      localDownloadInfo1 = new DownloadInfo(localContext);
      mUri = b;
      a.a(localDownloadInfo1);
    }
    mSystemFacade = a();
    mRcmId = a;
    mExtras = d;
    mAllowedNetworkTypes = c;
    mStatus = 192;
    new Thread(new DownloadRunnable(localContext, localDownloadInfo1)).start();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */