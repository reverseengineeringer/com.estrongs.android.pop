package com.estrongs.android.pop.view.utils;

import android.os.Message;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.af;
import java.io.File;

class o
  implements af
{
  o(n paramn) {}
  
  public void downloadCompleted(Object paramObject)
  {
    n.a(a, false);
    paramObject = (aa)paramObject;
    int i = n.a(a, ((aa)paramObject).e());
    if (i >= 0)
    {
      paramObject = new File(((aa)paramObject).e());
      File localFile = new File(n.b);
      localFile.delete();
      ((File)paramObject).renameTo(localFile);
    }
    n.b(a, true);
    if (i > 0)
    {
      paramObject = new Message();
      arg1 = 123457;
      a.a((Message)paramObject, 0L);
      return;
    }
    paramObject = new Message();
    arg1 = 123458;
    a.a((Message)paramObject, 0L);
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    n.a(a, false);
    paramObject = new File(((aa)paramObject).e());
    if (((File)paramObject).exists()) {
      ((File)paramObject).delete();
    }
    n.b(a, true);
    paramObject = new Message();
    arg1 = 123458;
    a.a((Message)paramObject, 1000L);
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */