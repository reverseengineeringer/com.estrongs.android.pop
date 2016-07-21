package android.support.v4.media;

import android.app.Service;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.e.a;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.support.v4.os.ResultReceiver;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public abstract class MediaBrowserServiceCompat
  extends Service
{
  MediaSessionCompat.Token a;
  private final a<IBinder, i> b = new a();
  private final m c = new m(this, null);
  
  private void a(String paramString, i parami, Bundle paramBundle)
  {
    Object localObject = (List)e.get(paramString);
    if (localObject == null) {
      localObject = new ArrayList();
    }
    for (;;)
    {
      Iterator localIterator = ((List)localObject).iterator();
      while (localIterator.hasNext()) {
        if (d.a(paramBundle, (Bundle)localIterator.next())) {
          return;
        }
      }
      ((List)localObject).add(paramBundle);
      e.put(paramString, localObject);
      c(paramString, parami, paramBundle);
      return;
    }
  }
  
  private void a(String paramString, ResultReceiver paramResultReceiver)
  {
    paramResultReceiver = new g(this, paramString, paramResultReceiver);
    b(paramString, paramResultReceiver);
    if (!paramResultReceiver.a()) {
      throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + paramString);
    }
  }
  
  private boolean a(String paramString, int paramInt)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = getPackageManager().getPackagesForUid(paramInt);
      int i = arrayOfString.length;
      paramInt = 0;
      while (paramInt < i)
      {
        if (arrayOfString[paramInt].equals(paramString)) {
          return true;
        }
        paramInt += 1;
      }
    }
  }
  
  private boolean b(String paramString, i parami, Bundle paramBundle)
  {
    List localList = (List)e.get(paramString);
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        Bundle localBundle = (Bundle)localIterator.next();
        if (d.a(paramBundle, localBundle)) {
          localList.remove(localBundle);
        }
      }
      for (boolean bool = true;; bool = false)
      {
        if (localList.size() == 0) {
          e.remove(paramString);
        }
        return bool;
      }
    }
    return false;
  }
  
  private void c(String paramString, i parami, Bundle paramBundle)
  {
    f localf = new f(this, paramString, parami, paramString, paramBundle);
    if (paramBundle == null) {
      a(paramString, localf);
    }
    while (!localf.a())
    {
      throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + a + " id=" + paramString);
      a(paramString, localf, paramBundle);
    }
  }
  
  public abstract h a(String paramString, int paramInt, Bundle paramBundle);
  
  public abstract void a(String paramString, j<List<MediaBrowserCompat.MediaItem>> paramj);
  
  public void a(String paramString, j<List<MediaBrowserCompat.MediaItem>> paramj, Bundle paramBundle)
  {
    paramj.a(1);
    a(paramString, paramj);
  }
  
  public void b(String paramString, j<MediaBrowserCompat.MediaItem> paramj)
  {
    paramj.a(null);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserServiceCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */