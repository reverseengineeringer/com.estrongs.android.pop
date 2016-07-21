package com.estrongs.android.pop.app.compress;

import com.estrongs.android.j.c;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class CompressionActivity
  extends ESResourceActivity
{
  private Map<String, File> a = new HashMap(10);
  private c b = null;
  
  /* Error */
  private String a(android.net.Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 30	com/estrongs/android/pop/app/compress/CompressionActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   4: aload_1
    //   5: aconst_null
    //   6: aconst_null
    //   7: aconst_null
    //   8: aconst_null
    //   9: invokevirtual 36	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   12: astore_1
    //   13: aload_1
    //   14: astore_3
    //   15: aload_1
    //   16: invokeinterface 42 1 0
    //   21: pop
    //   22: aload_1
    //   23: astore_3
    //   24: aload_1
    //   25: ldc 44
    //   27: invokeinterface 48 2 0
    //   32: istore_2
    //   33: iload_2
    //   34: iflt +87 -> 121
    //   37: aload_1
    //   38: astore_3
    //   39: aload_1
    //   40: invokeinterface 52 1 0
    //   45: pop
    //   46: aload_1
    //   47: astore_3
    //   48: aload_1
    //   49: iload_2
    //   50: invokeinterface 56 2 0
    //   55: astore 4
    //   57: aload 4
    //   59: astore_3
    //   60: aload_1
    //   61: ifnull +9 -> 70
    //   64: aload_1
    //   65: invokeinterface 59 1 0
    //   70: aload_3
    //   71: areturn
    //   72: astore 4
    //   74: aconst_null
    //   75: astore_1
    //   76: aload_1
    //   77: astore_3
    //   78: aload 4
    //   80: invokevirtual 62	java/lang/Exception:printStackTrace	()V
    //   83: aload_1
    //   84: ifnull +35 -> 119
    //   87: aload_1
    //   88: invokeinterface 59 1 0
    //   93: aconst_null
    //   94: areturn
    //   95: astore_1
    //   96: aconst_null
    //   97: astore_3
    //   98: aload_3
    //   99: ifnull +9 -> 108
    //   102: aload_3
    //   103: invokeinterface 59 1 0
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
    //   2: invokespecial 74	com/estrongs/android/pop/esclasses/ESResourceActivity:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: aload_0
    //   7: invokestatic 79	com/estrongs/android/j/c:a	(Landroid/content/Context;)Lcom/estrongs/android/j/c;
    //   10: putfield 22	com/estrongs/android/pop/app/compress/CompressionActivity:b	Lcom/estrongs/android/j/c;
    //   13: aload_0
    //   14: invokevirtual 83	com/estrongs/android/pop/app/compress/CompressionActivity:getIntent	()Landroid/content/Intent;
    //   17: ldc 85
    //   19: iconst_0
    //   20: invokevirtual 91	android/content/Intent:getBooleanExtra	(Ljava/lang/String;Z)Z
    //   23: ifne +23 -> 46
    //   26: aload_0
    //   27: getfield 22	com/estrongs/android/pop/app/compress/CompressionActivity:b	Lcom/estrongs/android/j/c;
    //   30: ldc 93
    //   32: invokevirtual 97	com/estrongs/android/j/c:d	(Ljava/lang/String;)V
    //   35: aload_0
    //   36: getfield 22	com/estrongs/android/pop/app/compress/CompressionActivity:b	Lcom/estrongs/android/j/c;
    //   39: ldc 93
    //   41: ldc 99
    //   43: invokevirtual 102	com/estrongs/android/j/c:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   46: aload_0
    //   47: invokevirtual 83	com/estrongs/android/pop/app/compress/CompressionActivity:getIntent	()Landroid/content/Intent;
    //   50: ldc 104
    //   52: invokevirtual 108	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   55: astore_2
    //   56: aload_2
    //   57: astore_1
    //   58: aload_2
    //   59: ifnonnull +195 -> 254
    //   62: aload_0
    //   63: invokevirtual 83	com/estrongs/android/pop/app/compress/CompressionActivity:getIntent	()Landroid/content/Intent;
    //   66: invokevirtual 112	android/content/Intent:getData	()Landroid/net/Uri;
    //   69: astore_3
    //   70: aload_3
    //   71: ifnonnull +23 -> 94
    //   74: aload_0
    //   75: ldc 113
    //   77: iconst_0
    //   78: invokestatic 118	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;II)V
    //   81: aload_0
    //   82: invokevirtual 121	com/estrongs/android/pop/app/compress/CompressionActivity:finish	()V
    //   85: return
    //   86: astore_1
    //   87: aload_1
    //   88: invokevirtual 62	java/lang/Exception:printStackTrace	()V
    //   91: goto -45 -> 46
    //   94: aload_3
    //   95: invokevirtual 127	android/net/Uri:toString	()Ljava/lang/String;
    //   98: invokestatic 130	android/net/Uri:decode	(Ljava/lang/String;)Ljava/lang/String;
    //   101: astore_2
    //   102: aload_2
    //   103: ldc -124
    //   105: invokevirtual 138	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   108: ifeq +226 -> 334
    //   111: aload_0
    //   112: getfield 20	com/estrongs/android/pop/app/compress/CompressionActivity:a	Ljava/util/Map;
    //   115: aload_3
    //   116: invokevirtual 127	android/net/Uri:toString	()Ljava/lang/String;
    //   119: invokeinterface 144 2 0
    //   124: checkcast 146	java/io/File
    //   127: astore_2
    //   128: aload_2
    //   129: astore_1
    //   130: aload_2
    //   131: ifnonnull +118 -> 249
    //   134: aconst_null
    //   135: astore_1
    //   136: ldc -108
    //   138: aload_0
    //   139: invokevirtual 83	com/estrongs/android/pop/app/compress/CompressionActivity:getIntent	()Landroid/content/Intent;
    //   142: invokevirtual 151	android/content/Intent:getType	()Ljava/lang/String;
    //   145: invokevirtual 154	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   148: ifeq +9 -> 157
    //   151: aload_0
    //   152: aload_3
    //   153: invokespecial 156	com/estrongs/android/pop/app/compress/CompressionActivity:a	(Landroid/net/Uri;)Ljava/lang/String;
    //   156: astore_1
    //   157: aload_1
    //   158: astore_2
    //   159: aload_1
    //   160: ifnonnull +35 -> 195
    //   163: aload_0
    //   164: invokevirtual 83	com/estrongs/android/pop/app/compress/CompressionActivity:getIntent	()Landroid/content/Intent;
    //   167: invokevirtual 151	android/content/Intent:getType	()Ljava/lang/String;
    //   170: invokestatic 161	com/estrongs/android/util/bg:T	(Ljava/lang/String;)Ljava/lang/String;
    //   173: astore_1
    //   174: new 163	java/lang/StringBuilder
    //   177: dup
    //   178: invokespecial 164	java/lang/StringBuilder:<init>	()V
    //   181: invokestatic 168	com/estrongs/fs/util/j:a	()Ljava/lang/String;
    //   184: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: aload_1
    //   188: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: astore_2
    //   195: aload_0
    //   196: invokevirtual 30	com/estrongs/android/pop/app/compress/CompressionActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   199: aload_3
    //   200: invokevirtual 177	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   203: astore 4
    //   205: new 163	java/lang/StringBuilder
    //   208: dup
    //   209: invokespecial 164	java/lang/StringBuilder:<init>	()V
    //   212: ldc -77
    //   214: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: aload_2
    //   218: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   224: invokestatic 183	com/estrongs/fs/util/j:h	(Ljava/lang/String;)Ljava/io/File;
    //   227: astore_1
    //   228: aload 4
    //   230: aload_1
    //   231: invokestatic 186	com/estrongs/fs/util/j:a	(Ljava/io/InputStream;Ljava/io/File;)V
    //   234: aload_0
    //   235: getfield 20	com/estrongs/android/pop/app/compress/CompressionActivity:a	Ljava/util/Map;
    //   238: aload_3
    //   239: invokevirtual 127	android/net/Uri:toString	()Ljava/lang/String;
    //   242: aload_1
    //   243: invokeinterface 190 3 0
    //   248: pop
    //   249: aload_1
    //   250: invokevirtual 193	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   253: astore_1
    //   254: aload_1
    //   255: invokestatic 196	com/estrongs/android/util/bg:N	(Ljava/lang/String;)Z
    //   258: ifne +114 -> 372
    //   261: aload_0
    //   262: aload_0
    //   263: invokevirtual 200	com/estrongs/android/pop/app/compress/CompressionActivity:getResources	()Landroid/content/res/Resources;
    //   266: ldc -55
    //   268: invokevirtual 204	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   271: iconst_1
    //   272: anewarray 206	java/lang/Object
    //   275: dup
    //   276: iconst_0
    //   277: aload_1
    //   278: invokestatic 210	com/estrongs/android/util/ap:d	(Ljava/lang/String;)Ljava/lang/String;
    //   281: aastore
    //   282: invokestatic 216	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   285: iconst_0
    //   286: invokestatic 219	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    //   289: ldc2_w 220
    //   292: invokestatic 227	java/lang/Thread:sleep	(J)V
    //   295: aload_0
    //   296: invokevirtual 121	com/estrongs/android/pop/app/compress/CompressionActivity:finish	()V
    //   299: return
    //   300: astore_1
    //   301: aload_1
    //   302: invokevirtual 228	java/io/IOException:printStackTrace	()V
    //   305: aload_0
    //   306: ldc -27
    //   308: iconst_0
    //   309: invokestatic 118	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;II)V
    //   312: aload_0
    //   313: invokevirtual 121	com/estrongs/android/pop/app/compress/CompressionActivity:finish	()V
    //   316: return
    //   317: astore_1
    //   318: aload_1
    //   319: invokevirtual 230	java/lang/SecurityException:printStackTrace	()V
    //   322: aload_0
    //   323: ldc -25
    //   325: iconst_0
    //   326: invokestatic 118	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;II)V
    //   329: aload_0
    //   330: invokevirtual 121	com/estrongs/android/pop/app/compress/CompressionActivity:finish	()V
    //   333: return
    //   334: aload_2
    //   335: ldc -23
    //   337: invokevirtual 138	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   340: ifne +14 -> 354
    //   343: aload_2
    //   344: astore_1
    //   345: aload_2
    //   346: ldc -21
    //   348: invokevirtual 138	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   351: ifeq -97 -> 254
    //   354: aload_2
    //   355: bipush 7
    //   357: invokevirtual 238	java/lang/String:substring	(I)Ljava/lang/String;
    //   360: astore_1
    //   361: goto -107 -> 254
    //   364: astore_1
    //   365: aload_1
    //   366: invokevirtual 239	java/lang/InterruptedException:printStackTrace	()V
    //   369: goto -74 -> 295
    //   372: new 87	android/content/Intent
    //   375: dup
    //   376: aload_0
    //   377: ldc -15
    //   379: invokespecial 244	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   382: astore_2
    //   383: aload_2
    //   384: ldc -11
    //   386: invokevirtual 249	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   389: pop
    //   390: aload_2
    //   391: ldc 104
    //   393: aload_1
    //   394: invokevirtual 253	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   397: pop
    //   398: aload_0
    //   399: aload_2
    //   400: invokevirtual 257	com/estrongs/android/pop/app/compress/CompressionActivity:startActivity	(Landroid/content/Intent;)V
    //   403: aload_0
    //   404: invokevirtual 121	com/estrongs/android/pop/app/compress/CompressionActivity:finish	()V
    //   407: return
    //   408: astore_1
    //   409: aload_0
    //   410: ldc_w 258
    //   413: iconst_0
    //   414: invokestatic 118	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;II)V
    //   417: goto -14 -> 403
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	420	0	this	CompressionActivity
    //   0	420	1	paramBundle	android.os.Bundle
    //   55	345	2	localObject	Object
    //   69	170	3	localUri	android.net.Uri
    //   203	26	4	localInputStream	java.io.InputStream
    // Exception table:
    //   from	to	target	type
    //   26	46	86	java/lang/Exception
    //   111	128	300	java/io/IOException
    //   136	157	300	java/io/IOException
    //   163	195	300	java/io/IOException
    //   195	249	300	java/io/IOException
    //   249	254	300	java/io/IOException
    //   111	128	317	java/lang/SecurityException
    //   136	157	317	java/lang/SecurityException
    //   163	195	317	java/lang/SecurityException
    //   195	249	317	java/lang/SecurityException
    //   249	254	317	java/lang/SecurityException
    //   289	295	364	java/lang/InterruptedException
    //   398	403	408	android/content/ActivityNotFoundException
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.CompressionActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */