package com.estrongs.android.util;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import java.io.File;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class bi
  implements af
{
  private int c = 0;
  
  bi(bj parambj, String paramString) {}
  
  public void downloadCompleted(Object paramObject)
  {
    Object localObject2 = (aa)paramObject;
    paramObject = ((aa)localObject2).e();
    Collections.emptySet();
    synchronized (bh.a())
    {
      localObject2 = (Set)bh.a().remove((String)d);
      if (!new File((String)paramObject).exists()) {
        return;
      }
      if (localObject2 != null)
      {
        ??? = ((Set)localObject2).iterator();
        if (((Iterator)???).hasNext())
        {
          localObject2 = (Handler)((Iterator)???).next();
          ((Handler)localObject2).sendMessage(((Handler)localObject2).obtainMessage(0, paramObject));
        }
      }
    }
    if (a != null)
    {
      paramObject = bh.a((String)paramObject);
      a.a((Drawable)paramObject, b);
    }
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    l.e("image", "download image error!");
    c += 1;
    paramObject = (aa)paramObject;
    if ((((aa)paramObject).g() > 0L) && (((aa)paramObject).a() > 0L) && (c < 3))
    {
      ((aa)paramObject).f();
      return;
    }
    new File(((aa)paramObject).e()).delete();
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */