package com.estrongs.fs.impl.r;

import com.estrongs.android.util.am;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.m;

public class a
  extends com.estrongs.fs.a
{
  protected boolean a = true;
  protected boolean b = true;
  
  public a(String paramString, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    super(paramString);
    size = paramLong1;
    lastModified = paramLong2;
    if (paramBoolean) {}
    for (type = m.a;; type = m.b)
    {
      setName(am.d(paramString));
      return;
    }
  }
  
  /* Error */
  public a(String paramString, de.aflx.sardine.DavResource paramDavResource, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 12	com/estrongs/fs/a:<init>	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: iconst_1
    //   7: putfield 14	com/estrongs/fs/impl/r/a:a	Z
    //   10: aload_0
    //   11: iconst_1
    //   12: putfield 16	com/estrongs/fs/impl/r/a:b	Z
    //   15: aload_2
    //   16: invokevirtual 52	de/aflx/sardine/DavResource:getName	()Ljava/lang/String;
    //   19: astore 5
    //   21: aload 5
    //   23: astore_1
    //   24: iload 4
    //   26: ifeq +13 -> 39
    //   29: aload_2
    //   30: invokevirtual 52	de/aflx/sardine/DavResource:getName	()Ljava/lang/String;
    //   33: ldc 54
    //   35: invokestatic 60	java/net/URLDecoder:decode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   38: astore_1
    //   39: iload_3
    //   40: ifeq +113 -> 153
    //   43: aload_1
    //   44: invokevirtual 66	java/lang/String:length	()I
    //   47: ifle +106 -> 153
    //   50: aload_1
    //   51: ldc 68
    //   53: invokevirtual 72	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   56: ifeq +97 -> 153
    //   59: aload_1
    //   60: iconst_0
    //   61: aload_1
    //   62: invokevirtual 66	java/lang/String:length	()I
    //   65: iconst_1
    //   66: isub
    //   67: invokevirtual 76	java/lang/String:substring	(II)Ljava/lang/String;
    //   70: astore 5
    //   72: aload 5
    //   74: astore_1
    //   75: aload_0
    //   76: aload_2
    //   77: invokevirtual 80	de/aflx/sardine/DavResource:getModified	()Ljava/util/Date;
    //   80: invokevirtual 86	java/util/Date:getTime	()J
    //   83: putfield 23	com/estrongs/fs/impl/r/a:lastModified	J
    //   86: iload_3
    //   87: ifeq +21 -> 108
    //   90: aload_0
    //   91: getstatic 28	com/estrongs/fs/m:a	Lcom/estrongs/fs/m;
    //   94: putfield 31	com/estrongs/fs/impl/r/a:type	Lcom/estrongs/fs/m;
    //   97: aload_0
    //   98: lconst_0
    //   99: putfield 20	com/estrongs/fs/impl/r/a:size	J
    //   102: aload_0
    //   103: aload_1
    //   104: invokevirtual 40	com/estrongs/fs/impl/r/a:setName	(Ljava/lang/String;)V
    //   107: return
    //   108: aload_0
    //   109: getstatic 42	com/estrongs/fs/m:b	Lcom/estrongs/fs/m;
    //   112: putfield 31	com/estrongs/fs/impl/r/a:type	Lcom/estrongs/fs/m;
    //   115: aload_0
    //   116: aload_2
    //   117: invokevirtual 90	de/aflx/sardine/DavResource:getContentLength	()Ljava/lang/Long;
    //   120: invokevirtual 95	java/lang/Long:longValue	()J
    //   123: putfield 20	com/estrongs/fs/impl/r/a:size	J
    //   126: goto -24 -> 102
    //   129: astore_2
    //   130: aload_2
    //   131: invokevirtual 99	java/lang/Exception:printStackTrace	()V
    //   134: goto -32 -> 102
    //   137: astore_2
    //   138: goto -8 -> 130
    //   141: astore 5
    //   143: goto -57 -> 86
    //   146: astore_1
    //   147: aload 5
    //   149: astore_1
    //   150: goto -111 -> 39
    //   153: goto -78 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	this	a
    //   0	156	1	paramString	String
    //   0	156	2	paramDavResource	de.aflx.sardine.DavResource
    //   0	156	3	paramBoolean1	boolean
    //   0	156	4	paramBoolean2	boolean
    //   19	54	5	str	String
    //   141	7	5	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   90	102	129	java/lang/Exception
    //   108	126	129	java/lang/Exception
    //   43	72	137	java/lang/Exception
    //   75	86	141	java/lang/Exception
    //   29	39	146	java/lang/Exception
  }
  
  protected boolean canDelete()
  {
    return canWrite();
  }
  
  protected boolean canRead()
  {
    return b;
  }
  
  protected boolean canWrite()
  {
    return a;
  }
  
  public boolean exists()
  {
    try
    {
      boolean bool = b.d(getAbsolutePath());
      return bool;
    }
    catch (Exception localException)
    {
      throw new FileSystemException(localException);
    }
  }
  
  public void setName(String paramString)
  {
    int i = 0;
    if (name != null) {
      i = 1;
    }
    super.setName(paramString);
    if ((i != 0) && (getFileType().a()))
    {
      if (!path.endsWith("/")) {
        path += "/";
      }
      if (!absolutePath.endsWith("/")) {
        absolutePath += "/";
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.r.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */