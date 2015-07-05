package com.estrongs.android.pop.view.utils;

import android.os.Message;
import com.estrongs.android.util.ab;
import com.estrongs.android.util.y;
import java.io.File;

class o
  implements ab
{
  o(n paramn) {}
  
  public void a(Object paramObject) {}
  
  public void a(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void a(Object paramObject, Throwable paramThrowable)
  {
    n.a(a, false);
    paramObject = new File(((y)paramObject).e());
    if (((File)paramObject).exists()) {
      ((File)paramObject).delete();
    }
    paramObject = new Message();
    arg1 = 123458;
    a.a((Message)paramObject, 1000L);
  }
  
  public void b(Object paramObject)
  {
    n.a(a, false);
    paramObject = (y)paramObject;
    int i = n.a(a, ((y)paramObject).e());
    if (i >= 0)
    {
      paramObject = new File(((y)paramObject).e());
      File localFile = new File(n.b);
      localFile.delete();
      ((File)paramObject).renameTo(localFile);
    }
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
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */