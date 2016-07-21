package com.estrongs.android.pop.bt;

import android.content.Context;
import android.os.Build.VERSION;
import b.b.g;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
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
    h = ad.a(paramContext).z();
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
    String str = ap.bB(paramString);
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
    //   42: ifne +66 -> 108
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
    //   64: invokestatic 244	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   67: aload 4
    //   69: aload_0
    //   70: getfield 231	com/estrongs/android/pop/bt/a:c	Lb/b/g;
    //   73: aload 4
    //   75: invokeinterface 249 2 0
    //   80: iload_1
    //   81: invokevirtual 252	com/estrongs/android/pop/bt/c:a	(Lb/a/a/a;I)V
    //   84: iconst_0
    //   85: istore_2
    //   86: goto -48 -> 38
    //   89: astore 4
    //   91: ldc -18
    //   93: ldc -2
    //   95: invokestatic 256	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   98: aload 4
    //   100: athrow
    //   101: astore 4
    //   103: aload_0
    //   104: iconst_1
    //   105: putfield 59	com/estrongs/android/pop/bt/a:d	Z
    //   108: aload_0
    //   109: invokevirtual 258	com/estrongs/android/pop/bt/a:c	()V
    //   112: ldc -18
    //   114: ldc_w 260
    //   117: invokestatic 244	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   120: aload_0
    //   121: iconst_0
    //   122: putfield 61	com/estrongs/android/pop/bt/a:e	Z
    //   125: return
    //   126: astore 4
    //   128: ldc_w 262
    //   131: aload 4
    //   133: invokevirtual 265	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   136: invokevirtual 268	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   139: ifeq +8 -> 147
    //   142: aload_0
    //   143: iconst_1
    //   144: putfield 59	com/estrongs/android/pop/bt/a:d	Z
    //   147: aload_0
    //   148: getfield 59	com/estrongs/android/pop/bt/a:d	Z
    //   151: istore_3
    //   152: iload_3
    //   153: ifeq +21 -> 174
    //   156: aload_0
    //   157: invokevirtual 258	com/estrongs/android/pop/bt/a:c	()V
    //   160: ldc -18
    //   162: ldc_w 260
    //   165: invokestatic 244	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   168: aload_0
    //   169: iconst_0
    //   170: putfield 61	com/estrongs/android/pop/bt/a:e	Z
    //   173: return
    //   174: iload_2
    //   175: iconst_1
    //   176: iadd
    //   177: istore_2
    //   178: ldc -18
    //   180: ldc_w 270
    //   183: aload 4
    //   185: invokestatic 273	com/estrongs/android/util/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   188: goto -150 -> 38
    //   191: astore 4
    //   193: aload_0
    //   194: invokevirtual 258	com/estrongs/android/pop/bt/a:c	()V
    //   197: ldc -18
    //   199: ldc_w 260
    //   202: invokestatic 244	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   205: aload_0
    //   206: iconst_0
    //   207: putfield 61	com/estrongs/android/pop/bt/a:e	Z
    //   210: aload 4
    //   212: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	213	0	this	a
    //   35	46	1	k	int
    //   37	141	2	m	int
    //   151	2	3	bool	boolean
    //   54	20	4	localc	c
    //   89	10	4	localIOException	java.io.IOException
    //   101	1	4	localInterruptedIOException	java.io.InterruptedIOException
    //   126	58	4	localThrowable	Throwable
    //   191	20	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   5	29	89	java/io/IOException
    //   60	84	101	java/io/InterruptedIOException
    //   60	84	126	java/lang/Throwable
    //   29	34	191	finally
    //   38	56	191	finally
    //   60	84	191	finally
    //   103	108	191	finally
    //   128	147	191	finally
    //   147	152	191	finally
    //   178	188	191	finally
  }
  
  public boolean b()
  {
    return e;
  }
  
  public void c()
  {
    l.b("xxxxxxxxxx", "close");
    d = true;
    try
    {
      if (c != null)
      {
        c.e();
        if (e()) {}
      }
      e = false;
      l.b("OBEXFtpServer", "OBEX ServerConnection closed");
      return;
    }
    catch (Throwable localThrowable)
    {
      l.a("OBEXFtpServer", "OBEX Server stop error", localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.bt.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */