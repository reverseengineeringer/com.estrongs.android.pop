package com.baidu.mobstat;

import android.content.ContentValues;
import android.database.Cursor;
import java.io.Closeable;
import java.util.ArrayList;

abstract class w
  implements Closeable
{
  private ae a;
  
  public w(String paramString1, String paramString2)
  {
    ad localad = new ad();
    a = new ae(localad, paramString1);
    if (localad.getDatabasePath(".confd") != null) {
      a(paramString2);
    }
  }
  
  private void a(String paramString)
  {
    a.a(paramString);
  }
  
  protected long a(ContentValues paramContentValues)
  {
    return a.a(null, paramContentValues);
  }
  
  public abstract long a(String paramString1, String paramString2);
  
  protected Cursor a(String paramString, int paramInt1, int paramInt2)
  {
    return a.a(null, null, null, null, null, paramString + " desc", paramInt2 + ", " + paramInt1);
  }
  
  protected Cursor a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    paramString1 = paramString1 + "=? ";
    ae localae = a;
    paramString3 = paramString3 + " desc";
    String str = paramInt + "";
    return localae.a(null, paramString1, new String[] { paramString2 }, null, null, paramString3, str);
  }
  
  public abstract ArrayList<v> a(int paramInt1, int paramInt2);
  
  public boolean a()
  {
    try
    {
      bool = a.a();
      return bool;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        bb.b(localException);
        boolean bool = false;
      }
    }
    finally {}
  }
  
  protected boolean a(long paramLong)
  {
    String str = paramLong + "";
    return a.a("_id=? ", new String[] { str }) > 0;
  }
  
  protected int b()
  {
    return a.b();
  }
  
  public abstract boolean b(long paramLong);
  
  public void close()
  {
    try
    {
      a.close();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        bb.b(localException);
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */