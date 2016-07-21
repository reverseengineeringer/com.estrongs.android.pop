package com.estrongs.android.i;

import com.estrongs.android.util.af;
import com.estrongs.fs.util.j;
import java.io.File;

final class b
  implements af
{
  b(String paramString1, String paramString2, String paramString3) {}
  
  public void downloadCompleted(Object paramObject)
  {
    Object localObject1 = new File(b);
    if ((((File)localObject1).exists()) && (((File)localObject1).length() > 0L))
    {
      paramObject = new File(c);
      ((File)paramObject).delete();
      ((File)localObject1).renameTo((File)paramObject);
      try
      {
        localObject1 = j.b((File)paramObject);
        if (localObject1 != null) {
          a.a((String)localObject1);
        }
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      finally
      {
        ((File)paramObject).delete();
      }
    }
    ((File)localObject2).delete();
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    if (a != null) {
      a.b(a, null);
    }
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.i.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */