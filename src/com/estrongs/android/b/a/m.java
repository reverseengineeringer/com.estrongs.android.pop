package com.estrongs.android.b.a;

import android.os.ConditionVariable;
import com.estrongs.android.util.af;
import java.io.File;

class m
  implements af
{
  boolean a = false;
  String b;
  String c;
  ConditionVariable d;
  
  m(String paramString1, String paramString2, ConditionVariable paramConditionVariable)
  {
    b = paramString1;
    c = paramString2;
    d = paramConditionVariable;
  }
  
  public void downloadCompleted(Object paramObject)
  {
    boolean bool = true;
    paramObject = new File(b);
    if (((File)paramObject).exists())
    {
      if (((File)paramObject).length() <= 0L) {
        break label82;
      }
      File localFile = new File(c);
      if (((localFile.exists()) && (!localFile.delete())) || (!((File)paramObject).renameTo(localFile))) {
        break label77;
      }
    }
    label77:
    label82:
    for (a = bool;; a = true)
    {
      d.open();
      return;
      bool = false;
      break;
    }
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    d.open();
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */