package com.estrongs.android.pop.bt;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import b.b.g;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.am;
import com.estrongs.bluetooth.parser.OBEXElement;
import com.estrongs.bluetooth.parser.OBEXElement.OBEXElementType;
import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

public class a
{
  public static final UUID a = UUID.fromString("00001106-0000-1000-8000-00805F9B34FB");
  private static final byte[] j = { -7, -20, 123, -60, -107, 60, 17, -46, -104, 78, 82, 84, 0, -36, -98, 9 };
  private com.estrongs.bluetooth.parser.a b = new com.estrongs.bluetooth.parser.a();
  private g c;
  private boolean d = false;
  private boolean e = false;
  private Context f;
  private boolean g = false;
  private final String h;
  private k i = new b(this);
  
  public a(Context paramContext)
  {
    f = paramContext;
    h = ad.a(paramContext).y();
  }
  
  private ArrayList<OBEXElement> a(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramString2 != null) && (paramString2.length() > 0)) {}
    for (paramString1 = new File(paramString1, paramString2); (!paramString1.exists()) || (!paramString1.isDirectory()); paramString1 = new File(paramString1)) {
      return null;
    }
    paramString2 = paramString1.listFiles();
    if (localArrayList != null)
    {
      int m = paramString2.length;
      int k = 0;
      while (k < m)
      {
        Object localObject = paramString2[k];
        if (localObject == null)
        {
          k += 1;
        }
        else
        {
          OBEXElement localOBEXElement = new OBEXElement();
          localOBEXElement.a(((File)localObject).getName());
          if (((File)localObject).isDirectory()) {}
          for (paramString1 = OBEXElement.OBEXElementType.FOLDER;; paramString1 = OBEXElement.OBEXElementType.FILE)
          {
            localOBEXElement.a(paramString1);
            localOBEXElement.a(((File)localObject).length());
            localOBEXElement.b(((File)localObject).lastModified());
            localArrayList.add(localOBEXElement);
            break;
          }
        }
      }
    }
    return localArrayList;
  }
  
  private void a(String paramString)
  {
    i.a(paramString);
  }
  
  private boolean a(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length != j.length)) {
      return false;
    }
    int k = 0;
    for (;;)
    {
      if (k >= j.length) {
        break label43;
      }
      if (j[k] != paramArrayOfByte[k]) {
        break;
      }
      k += 1;
    }
    label43:
    return true;
  }
  
  private String b(String paramString)
  {
    String str = am.bk(paramString);
    paramString = str;
    if (!str.startsWith(h)) {
      paramString = h;
    }
    return paramString;
  }
  
  private boolean c(String paramString)
  {
    paramString = new File(paramString);
    if (!paramString.exists()) {
      return false;
    }
    if (paramString.isDirectory())
    {
      File[] arrayOfFile = paramString.listFiles();
      if (arrayOfFile != null)
      {
        int m = arrayOfFile.length;
        int k = 0;
        for (;;)
        {
          if (k >= m) {
            break label68;
          }
          if (!c(arrayOfFile[k].getAbsolutePath())) {
            break;
          }
          k += 1;
        }
      }
      label68:
      return paramString.delete();
    }
    return paramString.delete();
  }
  
  private boolean d(String paramString)
  {
    return new File(paramString).exists();
  }
  
  private boolean e()
  {
    boolean bool = false;
    try
    {
      int k = Integer.parseInt(Build.VERSION.SDK);
      if (k >= 5) {
        bool = true;
      }
      return bool;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return false;
  }
  
  private boolean e(String paramString)
  {
    return new File(paramString).mkdirs();
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: putfield 59	com/estrongs/android/pop/bt/a:d	Z
    //   5: aload_0
    //   6: invokespecial 222	com/estrongs/android/pop/bt/a:e	()Z
    //   9: ifeq +20 -> 29
    //   12: aload_0
    //   13: ldc -32
    //   15: getstatic 34	com/estrongs/android/pop/bt/a:a	Ljava/util/UUID;
    //   18: invokestatic 229	com/estrongs/bluetooth/c:a	(Ljava/lang/String;Ljava/util/UUID;)Lb/b/g;
    //   21: putfield 231	com/estrongs/android/pop/bt/a:c	Lb/b/g;
    //   24: aload_0
    //   25: iconst_1
    //   26: putfield 63	com/estrongs/android/pop/bt/a:g	Z
    //   29: aload_0
    //   30: iconst_1
    //   31: putfield 61	com/estrongs/android/pop/bt/a:e	Z
    //   34: iconst_0
    //   35: istore_1
    //   36: iconst_0
    //   37: istore_2
    //   38: aload_0
    //   39: getfield 59	com/estrongs/android/pop/bt/a:d	Z
    //   42: ifne +68 -> 110
    //   45: new 233	com/estrongs/android/pop/bt/c
    //   48: dup
    //   49: aload_0
    //   50: aconst_null
    //   51: invokespecial 236	com/estrongs/android/pop/bt/c:<init>	(Lcom/estrongs/android/pop/bt/a;Lcom/estrongs/android/pop/bt/b;)V
    //   54: astore 4
    //   56: iload_1
    //   57: iconst_1
    //   58: iadd
    //   59: istore_1
    //   60: ldc -18
    //   62: ldc -16
    //   64: invokestatic 245	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   67: pop
    //   68: aload 4
    //   70: aload_0
    //   71: getfield 231	com/estrongs/android/pop/bt/a:c	Lb/b/g;
    //   74: aload 4
    //   76: invokeinterface 250 2 0
    //   81: iload_1
    //   82: invokevirtual 253	com/estrongs/android/pop/bt/c:a	(Lb/a/a/a;I)V
    //   85: iconst_0
    //   86: istore_2
    //   87: goto -49 -> 38
    //   90: astore 4
    //   92: ldc -18
    //   94: ldc -1
    //   96: invokestatic 257	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   99: pop
    //   100: aload 4
    //   102: athrow
    //   103: astore 4
    //   105: aload_0
    //   106: iconst_1
    //   107: putfield 59	com/estrongs/android/pop/bt/a:d	Z
    //   110: aload_0
    //   111: invokevirtual 259	com/estrongs/android/pop/bt/a:c	()V
    //   114: ldc -18
    //   116: ldc_w 261
    //   119: invokestatic 245	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   122: pop
    //   123: aload_0
    //   124: iconst_0
    //   125: putfield 61	com/estrongs/android/pop/bt/a:e	Z
    //   128: return
    //   129: astore 4
    //   131: ldc_w 263
    //   134: aload 4
    //   136: invokevirtual 266	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   139: invokevirtual 269	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   142: ifeq +8 -> 150
    //   145: aload_0
    //   146: iconst_1
    //   147: putfield 59	com/estrongs/android/pop/bt/a:d	Z
    //   150: aload_0
    //   151: getfield 59	com/estrongs/android/pop/bt/a:d	Z
    //   154: istore_3
    //   155: iload_3
    //   156: ifeq +22 -> 178
    //   159: aload_0
    //   160: invokevirtual 259	com/estrongs/android/pop/bt/a:c	()V
    //   163: ldc -18
    //   165: ldc_w 261
    //   168: invokestatic 245	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   171: pop
    //   172: aload_0
    //   173: iconst_0
    //   174: putfield 61	com/estrongs/android/pop/bt/a:e	Z
    //   177: return
    //   178: iload_2
    //   179: iconst_1
    //   180: iadd
    //   181: istore_2
    //   182: ldc -18
    //   184: ldc_w 271
    //   187: aload 4
    //   189: invokestatic 274	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   192: pop
    //   193: goto -155 -> 38
    //   196: astore 4
    //   198: aload_0
    //   199: invokevirtual 259	com/estrongs/android/pop/bt/a:c	()V
    //   202: ldc -18
    //   204: ldc_w 261
    //   207: invokestatic 245	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   210: pop
    //   211: aload_0
    //   212: iconst_0
    //   213: putfield 61	com/estrongs/android/pop/bt/a:e	Z
    //   216: aload 4
    //   218: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	this	a
    //   35	47	1	k	int
    //   37	145	2	m	int
    //   154	2	3	bool	boolean
    //   54	21	4	localc	c
    //   90	11	4	localIOException	java.io.IOException
    //   103	1	4	localInterruptedIOException	java.io.InterruptedIOException
    //   129	59	4	localThrowable	Throwable
    //   196	21	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   5	29	90	java/io/IOException
    //   60	85	103	java/io/InterruptedIOException
    //   60	85	129	java/lang/Throwable
    //   29	34	196	finally
    //   38	56	196	finally
    //   60	85	196	finally
    //   105	110	196	finally
    //   131	150	196	finally
    //   150	155	196	finally
    //   182	193	196	finally
  }
  
  public boolean b()
  {
    return e;
  }
  
  public void c()
  {
    Log.d("xxxxxxxxxx", "close");
    d = true;
    try
    {
      if (c != null)
      {
        c.e();
        if (e()) {}
      }
      e = false;
      Log.d("OBEXFtpServer", "OBEX ServerConnection closed");
      return;
    }
    catch (Throwable localThrowable)
    {
      Log.d("OBEXFtpServer", "OBEX Server stop error", localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.bt.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */