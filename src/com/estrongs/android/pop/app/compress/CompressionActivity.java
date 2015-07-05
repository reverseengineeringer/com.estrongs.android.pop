package com.estrongs.android.pop.app.compress;

import com.estrongs.android.pop.esclasses.ESActivity;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class CompressionActivity
  extends ESActivity
{
  private Map<String, File> a = new HashMap(10);
  
  /* Error */
  private String a(android.net.Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 26	com/estrongs/android/pop/app/compress/CompressionActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   4: aload_1
    //   5: aconst_null
    //   6: aconst_null
    //   7: aconst_null
    //   8: aconst_null
    //   9: invokevirtual 32	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   12: astore_1
    //   13: aload_1
    //   14: astore_3
    //   15: aload_1
    //   16: invokeinterface 38 1 0
    //   21: pop
    //   22: aload_1
    //   23: astore_3
    //   24: aload_1
    //   25: ldc 40
    //   27: invokeinterface 44 2 0
    //   32: istore_2
    //   33: iload_2
    //   34: iflt +87 -> 121
    //   37: aload_1
    //   38: astore_3
    //   39: aload_1
    //   40: invokeinterface 48 1 0
    //   45: pop
    //   46: aload_1
    //   47: astore_3
    //   48: aload_1
    //   49: iload_2
    //   50: invokeinterface 52 2 0
    //   55: astore 4
    //   57: aload 4
    //   59: astore_3
    //   60: aload_1
    //   61: ifnull +9 -> 70
    //   64: aload_1
    //   65: invokeinterface 55 1 0
    //   70: aload_3
    //   71: areturn
    //   72: astore 4
    //   74: aconst_null
    //   75: astore_1
    //   76: aload_1
    //   77: astore_3
    //   78: aload 4
    //   80: invokevirtual 58	java/lang/Exception:printStackTrace	()V
    //   83: aload_1
    //   84: ifnull +35 -> 119
    //   87: aload_1
    //   88: invokeinterface 55 1 0
    //   93: aconst_null
    //   94: areturn
    //   95: astore_1
    //   96: aconst_null
    //   97: astore_3
    //   98: aload_3
    //   99: ifnull +9 -> 108
    //   102: aload_3
    //   103: invokeinterface 55 1 0
    //   108: aload_1
    //   109: athrow
    //   110: astore_1
    //   111: goto -13 -> 98
    //   114: astore 4
    //   116: goto -40 -> 76
    //   119: aconst_null
    //   120: areturn
    //   121: aconst_null
    //   122: astore_3
    //   123: goto -63 -> 60
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	CompressionActivity
    //   0	126	1	paramUri	android.net.Uri
    //   32	18	2	i	int
    //   14	109	3	localObject	Object
    //   55	3	4	str	String
    //   72	7	4	localException1	Exception
    //   114	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	13	72	java/lang/Exception
    //   0	13	95	finally
    //   15	22	110	finally
    //   24	33	110	finally
    //   39	46	110	finally
    //   48	57	110	finally
    //   78	83	110	finally
    //   15	22	114	java/lang/Exception
    //   24	33	114	java/lang/Exception
    //   39	46	114	java/lang/Exception
    //   48	57	114	java/lang/Exception
  }
  
  /* Error */
  protected void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 70	com/estrongs/android/pop/esclasses/ESActivity:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: invokevirtual 74	com/estrongs/android/pop/app/compress/CompressionActivity:getIntent	()Landroid/content/Intent;
    //   9: ldc 76
    //   11: invokevirtual 82	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   14: astore_2
    //   15: aload_2
    //   16: astore_1
    //   17: aload_2
    //   18: ifnonnull +187 -> 205
    //   21: aload_0
    //   22: invokevirtual 74	com/estrongs/android/pop/app/compress/CompressionActivity:getIntent	()Landroid/content/Intent;
    //   25: invokevirtual 86	android/content/Intent:getData	()Landroid/net/Uri;
    //   28: astore_3
    //   29: aload_3
    //   30: ifnonnull +15 -> 45
    //   33: aload_0
    //   34: ldc 87
    //   36: iconst_0
    //   37: invokestatic 92	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;II)V
    //   40: aload_0
    //   41: invokevirtual 95	com/estrongs/android/pop/app/compress/CompressionActivity:finish	()V
    //   44: return
    //   45: aload_3
    //   46: invokevirtual 101	android/net/Uri:toString	()Ljava/lang/String;
    //   49: invokestatic 104	android/net/Uri:decode	(Ljava/lang/String;)Ljava/lang/String;
    //   52: astore_2
    //   53: aload_2
    //   54: ldc 106
    //   56: invokevirtual 112	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   59: ifeq +226 -> 285
    //   62: aload_0
    //   63: getfield 18	com/estrongs/android/pop/app/compress/CompressionActivity:a	Ljava/util/Map;
    //   66: aload_3
    //   67: invokevirtual 101	android/net/Uri:toString	()Ljava/lang/String;
    //   70: invokeinterface 118 2 0
    //   75: checkcast 120	java/io/File
    //   78: astore_2
    //   79: aload_2
    //   80: astore_1
    //   81: aload_2
    //   82: ifnonnull +118 -> 200
    //   85: aconst_null
    //   86: astore_1
    //   87: ldc 122
    //   89: aload_0
    //   90: invokevirtual 74	com/estrongs/android/pop/app/compress/CompressionActivity:getIntent	()Landroid/content/Intent;
    //   93: invokevirtual 125	android/content/Intent:getType	()Ljava/lang/String;
    //   96: invokevirtual 128	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   99: ifeq +9 -> 108
    //   102: aload_0
    //   103: aload_3
    //   104: invokespecial 130	com/estrongs/android/pop/app/compress/CompressionActivity:a	(Landroid/net/Uri;)Ljava/lang/String;
    //   107: astore_1
    //   108: aload_1
    //   109: astore_2
    //   110: aload_1
    //   111: ifnonnull +35 -> 146
    //   114: aload_0
    //   115: invokevirtual 74	com/estrongs/android/pop/app/compress/CompressionActivity:getIntent	()Landroid/content/Intent;
    //   118: invokevirtual 125	android/content/Intent:getType	()Ljava/lang/String;
    //   121: invokestatic 135	com/estrongs/android/util/bc:R	(Ljava/lang/String;)Ljava/lang/String;
    //   124: astore_1
    //   125: new 137	java/lang/StringBuilder
    //   128: dup
    //   129: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   132: invokestatic 142	com/estrongs/fs/util/j:a	()Ljava/lang/String;
    //   135: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: aload_1
    //   139: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: invokevirtual 147	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: astore_2
    //   146: aload_0
    //   147: invokevirtual 26	com/estrongs/android/pop/app/compress/CompressionActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   150: aload_3
    //   151: invokevirtual 151	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   154: astore 4
    //   156: new 137	java/lang/StringBuilder
    //   159: dup
    //   160: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   163: ldc -103
    //   165: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: aload_2
    //   169: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: invokevirtual 147	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   175: invokestatic 157	com/estrongs/fs/util/j:h	(Ljava/lang/String;)Ljava/io/File;
    //   178: astore_1
    //   179: aload 4
    //   181: aload_1
    //   182: invokestatic 160	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;Ljava/io/File;)V
    //   185: aload_0
    //   186: getfield 18	com/estrongs/android/pop/app/compress/CompressionActivity:a	Ljava/util/Map;
    //   189: aload_3
    //   190: invokevirtual 101	android/net/Uri:toString	()Ljava/lang/String;
    //   193: aload_1
    //   194: invokeinterface 164 3 0
    //   199: pop
    //   200: aload_1
    //   201: invokevirtual 167	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   204: astore_1
    //   205: aload_1
    //   206: invokestatic 170	com/estrongs/android/util/bc:N	(Ljava/lang/String;)Z
    //   209: ifne +114 -> 323
    //   212: aload_0
    //   213: aload_0
    //   214: invokevirtual 174	com/estrongs/android/pop/app/compress/CompressionActivity:getResources	()Landroid/content/res/Resources;
    //   217: ldc -81
    //   219: invokevirtual 178	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   222: iconst_1
    //   223: anewarray 180	java/lang/Object
    //   226: dup
    //   227: iconst_0
    //   228: aload_1
    //   229: invokestatic 185	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   232: aastore
    //   233: invokestatic 191	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   236: iconst_0
    //   237: invokestatic 194	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    //   240: ldc2_w 195
    //   243: invokestatic 202	java/lang/Thread:sleep	(J)V
    //   246: aload_0
    //   247: invokevirtual 95	com/estrongs/android/pop/app/compress/CompressionActivity:finish	()V
    //   250: return
    //   251: astore_1
    //   252: aload_1
    //   253: invokevirtual 203	java/io/IOException:printStackTrace	()V
    //   256: aload_0
    //   257: ldc -52
    //   259: iconst_0
    //   260: invokestatic 92	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;II)V
    //   263: aload_0
    //   264: invokevirtual 95	com/estrongs/android/pop/app/compress/CompressionActivity:finish	()V
    //   267: return
    //   268: astore_1
    //   269: aload_1
    //   270: invokevirtual 205	java/lang/SecurityException:printStackTrace	()V
    //   273: aload_0
    //   274: ldc -50
    //   276: iconst_0
    //   277: invokestatic 92	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;II)V
    //   280: aload_0
    //   281: invokevirtual 95	com/estrongs/android/pop/app/compress/CompressionActivity:finish	()V
    //   284: return
    //   285: aload_2
    //   286: ldc -48
    //   288: invokevirtual 112	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   291: ifne +14 -> 305
    //   294: aload_2
    //   295: astore_1
    //   296: aload_2
    //   297: ldc -46
    //   299: invokevirtual 112	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   302: ifeq -97 -> 205
    //   305: aload_2
    //   306: bipush 7
    //   308: invokevirtual 213	java/lang/String:substring	(I)Ljava/lang/String;
    //   311: astore_1
    //   312: goto -107 -> 205
    //   315: astore_1
    //   316: aload_1
    //   317: invokevirtual 214	java/lang/InterruptedException:printStackTrace	()V
    //   320: goto -74 -> 246
    //   323: new 78	android/content/Intent
    //   326: dup
    //   327: aload_0
    //   328: ldc -40
    //   330: invokespecial 219	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   333: astore_2
    //   334: aload_2
    //   335: ldc -36
    //   337: invokevirtual 224	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   340: pop
    //   341: aload_2
    //   342: ldc 76
    //   344: aload_1
    //   345: invokevirtual 228	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   348: pop
    //   349: aload_0
    //   350: aload_2
    //   351: invokevirtual 232	com/estrongs/android/pop/app/compress/CompressionActivity:startActivity	(Landroid/content/Intent;)V
    //   354: aload_0
    //   355: invokevirtual 95	com/estrongs/android/pop/app/compress/CompressionActivity:finish	()V
    //   358: return
    //   359: astore_1
    //   360: aload_0
    //   361: ldc -23
    //   363: iconst_0
    //   364: invokestatic 92	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;II)V
    //   367: goto -13 -> 354
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	370	0	this	CompressionActivity
    //   0	370	1	paramBundle	android.os.Bundle
    //   14	337	2	localObject	Object
    //   28	162	3	localUri	android.net.Uri
    //   154	26	4	localInputStream	java.io.InputStream
    // Exception table:
    //   from	to	target	type
    //   62	79	251	java/io/IOException
    //   87	108	251	java/io/IOException
    //   114	146	251	java/io/IOException
    //   146	200	251	java/io/IOException
    //   200	205	251	java/io/IOException
    //   62	79	268	java/lang/SecurityException
    //   87	108	268	java/lang/SecurityException
    //   114	146	268	java/lang/SecurityException
    //   146	200	268	java/lang/SecurityException
    //   200	205	268	java/lang/SecurityException
    //   240	246	315	java/lang/InterruptedException
    //   349	354	359	android/content/ActivityNotFoundException
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.CompressionActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */