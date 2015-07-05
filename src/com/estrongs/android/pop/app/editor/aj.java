package com.estrongs.android.pop.app.editor;

import android.util.Log;
import android.widget.EditText;
import com.estrongs.android.util.am;
import com.estrongs.fs.impl.local.h;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

class aj
  extends com.estrongs.a.a
{
  private aj(PopNoteEditor paramPopNoteEditor) {}
  
  private int a(b paramb, OutputStream paramOutputStream, int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    char[] arrayOfChar = new char['က'];
    int k = 0;
    int i = 0;
    int i1 = 0;
    int m = 0;
    while (i1 != -1)
    {
      i1 = paramb.read(arrayOfChar, 0, arrayOfChar.length);
      long l = paramb.b();
      int n = k;
      int j = i1;
      if (l >= paramLong1)
      {
        n = k;
        j = i1;
        if (m == 0)
        {
          j = (int)(i1 - (l - paramLong1));
          n = 1;
        }
      }
      int i2 = i;
      String str;
      if (j > 0)
      {
        str = new String(arrayOfChar, 0, j);
        byte[] arrayOfByte = a(str, paramInt1, paramInt2).getBytes(PopNoteEditor.t(a));
        k = i;
        if (n == 0) {
          k = i + (arrayOfByte.length - str.getBytes(PopNoteEditor.t(a)).length);
        }
        paramOutputStream.write(arrayOfByte);
        i2 = k;
      }
      i = i2;
      k = n;
      i1 = j;
      if (n != 0)
      {
        i = i2;
        k = n;
        i1 = j;
        if (m == 0)
        {
          int i3 = 1;
          paramb.a(paramLong2);
          str = PopNoteEditor.c(a).getText().toString();
          i = i2;
          k = n;
          i1 = j;
          m = i3;
          if (str != null)
          {
            i = i2;
            k = n;
            i1 = j;
            m = i3;
            if (str.length() != 0)
            {
              paramOutputStream.write(a(str, paramInt2).getBytes(PopNoteEditor.t(a)));
              i = i2;
              k = n;
              i1 = j;
              m = i3;
            }
          }
        }
      }
    }
    paramOutputStream.flush();
    return i;
  }
  
  private String a(String paramString, int paramInt)
  {
    return paramString.replaceAll(as.a(0), as.a(1)).replaceAll(as.a(2), as.a(1)).replaceAll(as.a(1), as.a(paramInt));
  }
  
  private String a(String paramString, int paramInt1, int paramInt2)
  {
    return paramString.replaceAll(as.a(paramInt1), as.a(paramInt2));
  }
  
  private void a(a parama1, a parama2)
  {
    int i = 0;
    if (a.a(parama1.g()))
    {
      String[] arrayOfString = am.k(parama1.g(), "rw");
      parama2 = parama2.d();
      parama1 = parama1.e();
      byte[] arrayOfByte = new byte['က'];
      for (;;)
      {
        if (i != -1) {}
        try
        {
          int j = parama2.read(arrayOfByte, 0, arrayOfByte.length);
          i = j;
          if (j > 0)
          {
            parama1.write(arrayOfByte, 0, j);
            i = j;
          }
        }
        catch (IOException localIOException)
        {
          Log.e(PopNoteEditor.c(), "updateFile error!");
          if (parama2 != null) {}
          try
          {
            parama2.close();
            if (parama1 != null) {
              parama1.close();
            }
          }
          catch (Exception parama1)
          {
            for (;;)
            {
              Log.e(PopNoteEditor.c(), "updateFile file close error!");
            }
          }
          if (arrayOfString != null) {
            am.a(arrayOfString);
          }
          do
          {
            return;
            if (parama2 != null) {}
            try
            {
              parama2.close();
              if (parama1 != null) {
                parama1.close();
              }
            }
            catch (Exception parama1)
            {
              for (;;)
              {
                Log.e(PopNoteEditor.c(), "updateFile file close error!");
              }
            }
          } while (arrayOfString == null);
          am.a(arrayOfString);
          return;
        }
        finally
        {
          if (parama2 == null) {}
        }
      }
      try
      {
        parama2.close();
        if (parama1 != null) {
          parama1.close();
        }
      }
      catch (Exception parama1)
      {
        for (;;)
        {
          Log.e(PopNoteEditor.c(), "updateFile file close error!");
        }
      }
      if (arrayOfString != null) {
        am.a(arrayOfString);
      }
      throw ((Throwable)localObject);
    }
    parama1 = parama1.g();
    parama2 = parama2.g();
    h.a(a, parama1, null);
    h.a(parama2, parama1);
  }
  
  private void a(a parama, OutputStream paramOutputStream, long paramLong1, long paramLong2)
  {
    byte[] arrayOfByte = new byte['က'];
    int j = 0;
    int k = 0;
    int i = 0;
    if (j != -1)
    {
      j = parama.a(arrayOfByte, 0, arrayOfByte.length);
      long l = parama.a();
      if ((l < paramLong1) || (k != 0)) {
        break label194;
      }
      j = (int)(j - (l - paramLong1));
      i = 1;
    }
    label194:
    for (;;)
    {
      if (j > 0) {
        paramOutputStream.write(arrayOfByte, 0, j);
      }
      if ((i != 0) && (k == 0))
      {
        k = 1;
        parama.a(paramLong2);
        String str2 = PopNoteEditor.c(a).getText().toString();
        if ((str2 != null) && (str2.length() != 0))
        {
          String str1;
          if (PopNoteEditor.x(a) != 0)
          {
            str1 = str2;
            if (PopNoteEditor.x(a) != 2) {}
          }
          else
          {
            str1 = a(str2, PopNoteEditor.x(a));
          }
          paramOutputStream.write(str1.getBytes(PopNoteEditor.t(a)));
        }
        break;
        paramOutputStream.flush();
        return;
      }
      break;
    }
  }
  
  /* Error */
  public boolean task()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   4: invokestatic 169	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/Object;
    //   7: astore 19
    //   9: aload 19
    //   11: monitorenter
    //   12: aload_0
    //   13: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   16: invokestatic 172	com/estrongs/android/pop/app/editor/PopNoteEditor:w	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    //   19: aconst_null
    //   20: astore 18
    //   22: aconst_null
    //   23: astore 10
    //   25: aconst_null
    //   26: astore 16
    //   28: aconst_null
    //   29: astore 14
    //   31: aconst_null
    //   32: astore 17
    //   34: aconst_null
    //   35: astore 13
    //   37: aconst_null
    //   38: astore 15
    //   40: aload_0
    //   41: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   44: invokestatic 163	com/estrongs/android/pop/app/editor/PopNoteEditor:x	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   47: istore_1
    //   48: aload_0
    //   49: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   52: invokestatic 174	com/estrongs/android/pop/app/editor/PopNoteEditor:k	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   55: istore_2
    //   56: iload_1
    //   57: iload_2
    //   58: if_icmpeq +1856 -> 1914
    //   61: iconst_1
    //   62: istore_1
    //   63: aload 10
    //   65: astore 11
    //   67: aload 18
    //   69: astore 12
    //   71: aload_0
    //   72: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   75: invokestatic 178	com/estrongs/android/pop/app/editor/PopNoteEditor:v	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;
    //   78: invokevirtual 183	com/estrongs/android/pop/app/editor/c:d	()Ljava/io/File;
    //   81: astore 20
    //   83: aload 10
    //   85: astore 11
    //   87: aload 18
    //   89: astore 12
    //   91: aload 20
    //   93: invokevirtual 188	java/io/File:exists	()Z
    //   96: ifeq +17 -> 113
    //   99: aload 10
    //   101: astore 11
    //   103: aload 18
    //   105: astore 12
    //   107: aload 20
    //   109: invokevirtual 191	java/io/File:delete	()Z
    //   112: pop
    //   113: aload 10
    //   115: astore 11
    //   117: aload 18
    //   119: astore 12
    //   121: aload_0
    //   122: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   125: invokestatic 195	com/estrongs/android/pop/app/editor/PopNoteEditor:l	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;
    //   128: aload_0
    //   129: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   132: invokestatic 199	com/estrongs/android/pop/app/editor/PopNoteEditor:C	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;
    //   135: invokestatic 202	com/estrongs/android/pop/app/editor/a:a	(Landroid/content/Context;Ljava/io/File;)Lcom/estrongs/android/pop/app/editor/a;
    //   138: astore 10
    //   140: aload 10
    //   142: astore 11
    //   144: aload 10
    //   146: astore 12
    //   148: aload 10
    //   150: invokevirtual 203	com/estrongs/android/pop/app/editor/a:b	()J
    //   153: aload_0
    //   154: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   157: invokestatic 178	com/estrongs/android/pop/app/editor/PopNoteEditor:v	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;
    //   160: invokevirtual 204	com/estrongs/android/pop/app/editor/c:b	()J
    //   163: lcmp
    //   164: ifle +190 -> 354
    //   167: aload 10
    //   169: astore 11
    //   171: aload 10
    //   173: astore 12
    //   175: aload_0
    //   176: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   179: aload_0
    //   180: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   183: ldc -51
    //   185: invokevirtual 208	com/estrongs/android/pop/app/editor/PopNoteEditor:getString	(I)Ljava/lang/String;
    //   188: invokestatic 211	com/estrongs/android/pop/app/editor/PopNoteEditor:b	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;)Ljava/lang/String;
    //   191: pop
    //   192: aload 10
    //   194: astore 11
    //   196: aload 10
    //   198: astore 12
    //   200: aload_0
    //   201: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   204: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   207: iconst_5
    //   208: iconst_1
    //   209: iconst_0
    //   210: invokevirtual 221	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   213: astore 15
    //   215: aload 10
    //   217: astore 11
    //   219: aload 10
    //   221: astore 12
    //   223: aload_0
    //   224: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   227: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   230: aload 15
    //   232: invokevirtual 225	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   235: pop
    //   236: aload 10
    //   238: astore 11
    //   240: aload 10
    //   242: astore 12
    //   244: invokestatic 129	com/estrongs/android/pop/app/editor/PopNoteEditor:c	()Ljava/lang/String;
    //   247: ldc -29
    //   249: invokestatic 136	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   252: pop
    //   253: aload 10
    //   255: ifnull +8 -> 263
    //   258: aload 10
    //   260: invokevirtual 229	com/estrongs/android/pop/app/editor/a:c	()V
    //   263: iconst_0
    //   264: ifeq +11 -> 275
    //   267: new 231	java/lang/NullPointerException
    //   270: dup
    //   271: invokespecial 232	java/lang/NullPointerException:<init>	()V
    //   274: athrow
    //   275: iconst_0
    //   276: ifeq +11 -> 287
    //   279: new 231	java/lang/NullPointerException
    //   282: dup
    //   283: invokespecial 232	java/lang/NullPointerException:<init>	()V
    //   286: athrow
    //   287: aload_0
    //   288: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   291: invokestatic 235	com/estrongs/android/pop/app/editor/PopNoteEditor:H	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    //   294: aload_0
    //   295: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   298: aconst_null
    //   299: invokestatic 238	com/estrongs/android/pop/app/editor/PopNoteEditor:a	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/aj;)Lcom/estrongs/android/pop/app/editor/aj;
    //   302: pop
    //   303: aload 19
    //   305: monitorexit
    //   306: iconst_0
    //   307: ireturn
    //   308: astore 10
    //   310: aload 10
    //   312: invokevirtual 241	java/io/IOException:printStackTrace	()V
    //   315: aload_0
    //   316: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   319: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   322: iconst_5
    //   323: iconst_1
    //   324: iconst_0
    //   325: invokevirtual 221	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   328: astore 10
    //   330: aload_0
    //   331: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   334: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   337: aload 10
    //   339: invokevirtual 225	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   342: pop
    //   343: goto -56 -> 287
    //   346: astore 10
    //   348: aload 19
    //   350: monitorexit
    //   351: aload 10
    //   353: athrow
    //   354: aload 10
    //   356: astore 11
    //   358: aload 10
    //   360: astore 12
    //   362: aload_0
    //   363: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   366: invokestatic 195	com/estrongs/android/pop/app/editor/PopNoteEditor:l	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;
    //   369: aload 20
    //   371: invokestatic 202	com/estrongs/android/pop/app/editor/a:a	(Landroid/content/Context;Ljava/io/File;)Lcom/estrongs/android/pop/app/editor/a;
    //   374: astore 18
    //   376: aload 18
    //   378: astore 14
    //   380: aload 15
    //   382: astore 12
    //   384: aload 17
    //   386: astore 11
    //   388: invokestatic 245	com/estrongs/android/util/bd:l	()Z
    //   391: ifeq +797 -> 1188
    //   394: aload 15
    //   396: astore 12
    //   398: aload 17
    //   400: astore 11
    //   402: aload 20
    //   404: invokevirtual 248	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   407: invokestatic 251	com/estrongs/android/util/am:bs	(Ljava/lang/String;)Z
    //   410: ifeq +778 -> 1188
    //   413: aload 15
    //   415: astore 12
    //   417: aload 17
    //   419: astore 11
    //   421: aload 20
    //   423: invokevirtual 248	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   426: iconst_0
    //   427: invokestatic 256	com/estrongs/fs/impl/local/a:a	(Ljava/lang/String;Z)Ljava/io/OutputStream;
    //   430: astore 13
    //   432: aload 13
    //   434: astore 12
    //   436: aload 13
    //   438: astore 11
    //   440: aload_0
    //   441: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   444: invokestatic 260	com/estrongs/android/pop/app/editor/PopNoteEditor:F	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   447: invokevirtual 28	com/estrongs/android/pop/app/editor/b:b	()J
    //   450: lstore 8
    //   452: aload 13
    //   454: astore 12
    //   456: aload 13
    //   458: astore 11
    //   460: lload 8
    //   462: aload_0
    //   463: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   466: invokestatic 264	com/estrongs/android/pop/app/editor/PopNoteEditor:B	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    //   469: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   472: aload_0
    //   473: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   476: invokestatic 42	com/estrongs/android/pop/app/editor/PopNoteEditor:t	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;
    //   479: invokevirtual 46	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   482: arraylength
    //   483: i2l
    //   484: lsub
    //   485: lstore 6
    //   487: lload 6
    //   489: lstore 4
    //   491: lload 6
    //   493: lconst_0
    //   494: lcmp
    //   495: ifge +6 -> 501
    //   498: lconst_0
    //   499: lstore 4
    //   501: iload_1
    //   502: ifne +704 -> 1206
    //   505: aload 13
    //   507: astore 12
    //   509: aload 13
    //   511: astore 11
    //   513: aload_0
    //   514: aload 10
    //   516: aload 13
    //   518: lload 4
    //   520: lload 8
    //   522: invokespecial 269	com/estrongs/android/pop/app/editor/aj:a	(Lcom/estrongs/android/pop/app/editor/a;Ljava/io/OutputStream;JJ)V
    //   525: aload 13
    //   527: astore 12
    //   529: aload 13
    //   531: astore 11
    //   533: aload_0
    //   534: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   537: invokestatic 273	com/estrongs/android/pop/app/editor/PopNoteEditor:E	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/an;
    //   540: lload 4
    //   542: invokevirtual 277	com/estrongs/android/pop/app/editor/an:b	(J)V
    //   545: aload 13
    //   547: astore 12
    //   549: aload 13
    //   551: astore 11
    //   553: aload_0
    //   554: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   557: invokestatic 264	com/estrongs/android/pop/app/editor/PopNoteEditor:B	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    //   560: iconst_0
    //   561: aload_0
    //   562: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   565: invokestatic 264	com/estrongs/android/pop/app/editor/PopNoteEditor:B	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    //   568: invokevirtual 278	java/lang/StringBuilder:length	()I
    //   571: invokevirtual 281	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   574: pop
    //   575: aload 13
    //   577: astore 12
    //   579: aload 13
    //   581: astore 11
    //   583: aload_0
    //   584: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   587: invokestatic 260	com/estrongs/android/pop/app/editor/PopNoteEditor:F	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   590: invokevirtual 282	com/estrongs/android/pop/app/editor/b:close	()V
    //   593: aload 13
    //   595: astore 12
    //   597: aload 13
    //   599: astore 11
    //   601: aload 13
    //   603: invokevirtual 140	java/io/OutputStream:close	()V
    //   606: aconst_null
    //   607: astore 15
    //   609: aconst_null
    //   610: astore 13
    //   612: aload 13
    //   614: astore 12
    //   616: aload 15
    //   618: astore 11
    //   620: aload_0
    //   621: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   624: aload 14
    //   626: invokevirtual 203	com/estrongs/android/pop/app/editor/a:b	()J
    //   629: invokestatic 285	com/estrongs/android/pop/app/editor/PopNoteEditor:a	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;J)J
    //   632: pop2
    //   633: aload 13
    //   635: astore 12
    //   637: aload 15
    //   639: astore 11
    //   641: aload_0
    //   642: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   645: iconst_0
    //   646: invokestatic 288	com/estrongs/android/pop/app/editor/PopNoteEditor:d	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    //   649: pop
    //   650: aload 13
    //   652: astore 12
    //   654: aload 15
    //   656: astore 11
    //   658: aload_0
    //   659: aload 10
    //   661: aload 14
    //   663: invokespecial 290	com/estrongs/android/pop/app/editor/aj:a	(Lcom/estrongs/android/pop/app/editor/a;Lcom/estrongs/android/pop/app/editor/a;)V
    //   666: aload 13
    //   668: astore 12
    //   670: aload 15
    //   672: astore 11
    //   674: aload_0
    //   675: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   678: invokestatic 178	com/estrongs/android/pop/app/editor/PopNoteEditor:v	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;
    //   681: invokevirtual 292	com/estrongs/android/pop/app/editor/c:e	()V
    //   684: aload 13
    //   686: astore 12
    //   688: aload 15
    //   690: astore 11
    //   692: invokestatic 297	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   695: aload_0
    //   696: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   699: invokestatic 199	com/estrongs/android/pop/app/editor/PopNoteEditor:C	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;
    //   702: invokevirtual 248	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   705: invokevirtual 300	com/estrongs/fs/a/b:b	(Ljava/lang/String;)V
    //   708: aload 13
    //   710: astore 12
    //   712: aload 15
    //   714: astore 11
    //   716: sipush 4096
    //   719: newarray <illegal type>
    //   721: astore 16
    //   723: aload 13
    //   725: astore 12
    //   727: aload 15
    //   729: astore 11
    //   731: aload_0
    //   732: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   735: new 20	com/estrongs/android/pop/app/editor/b
    //   738: dup
    //   739: aload_0
    //   740: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   743: invokestatic 195	com/estrongs/android/pop/app/editor/PopNoteEditor:l	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;
    //   746: aload_0
    //   747: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   750: invokestatic 199	com/estrongs/android/pop/app/editor/PopNoteEditor:C	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;
    //   753: aload_0
    //   754: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   757: invokestatic 42	com/estrongs/android/pop/app/editor/PopNoteEditor:t	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;
    //   760: invokespecial 303	com/estrongs/android/pop/app/editor/b:<init>	(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    //   763: invokestatic 306	com/estrongs/android/pop/app/editor/PopNoteEditor:a	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/b;)Lcom/estrongs/android/pop/app/editor/b;
    //   766: pop
    //   767: aload 13
    //   769: astore 12
    //   771: aload 15
    //   773: astore 11
    //   775: aload_0
    //   776: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   779: invokestatic 273	com/estrongs/android/pop/app/editor/PopNoteEditor:E	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/an;
    //   782: lload 4
    //   784: invokevirtual 309	com/estrongs/android/pop/app/editor/an:a	(J)Lcom/estrongs/android/pop/app/editor/ao;
    //   787: astore 17
    //   789: aload 17
    //   791: ifnull +39 -> 830
    //   794: aload 15
    //   796: astore 11
    //   798: aload_0
    //   799: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   802: invokestatic 260	com/estrongs/android/pop/app/editor/PopNoteEditor:F	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   805: aload 17
    //   807: getfield 314	com/estrongs/android/pop/app/editor/ao:b	J
    //   810: invokevirtual 55	com/estrongs/android/pop/app/editor/b:a	(J)V
    //   813: aload 15
    //   815: astore 11
    //   817: aload_0
    //   818: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   821: aload 17
    //   823: getfield 317	com/estrongs/android/pop/app/editor/ao:a	I
    //   826: invokestatic 288	com/estrongs/android/pop/app/editor/PopNoteEditor:d	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    //   829: pop
    //   830: aload 13
    //   832: astore 12
    //   834: aload 15
    //   836: astore 11
    //   838: new 266	java/lang/StringBuilder
    //   841: dup
    //   842: invokespecial 318	java/lang/StringBuilder:<init>	()V
    //   845: astore 17
    //   847: aload 13
    //   849: astore 12
    //   851: aload 15
    //   853: astore 11
    //   855: aload_0
    //   856: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   859: invokestatic 260	com/estrongs/android/pop/app/editor/PopNoteEditor:F	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   862: invokevirtual 28	com/estrongs/android/pop/app/editor/b:b	()J
    //   865: lstore 6
    //   867: lload 6
    //   869: lload 4
    //   871: lcmp
    //   872: ifne +674 -> 1546
    //   875: iload_1
    //   876: ifeq +1033 -> 1909
    //   879: aload 13
    //   881: astore 12
    //   883: aload 15
    //   885: astore 11
    //   887: aload_0
    //   888: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   891: invokestatic 264	com/estrongs/android/pop/app/editor/PopNoteEditor:B	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    //   894: aload 17
    //   896: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   899: invokevirtual 322	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   902: pop
    //   903: aload 13
    //   905: astore 12
    //   907: aload 15
    //   909: astore 11
    //   911: iconst_3
    //   912: aload_0
    //   913: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   916: invokestatic 325	com/estrongs/android/pop/app/editor/PopNoteEditor:D	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   919: isub
    //   920: istore_1
    //   921: goto +998 -> 1919
    //   924: iload_2
    //   925: iload_1
    //   926: if_icmpge +28 -> 954
    //   929: aload 13
    //   931: astore 12
    //   933: aload 15
    //   935: astore 11
    //   937: aload_0
    //   938: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   941: invokestatic 260	com/estrongs/android/pop/app/editor/PopNoteEditor:F	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   944: aload 16
    //   946: invokevirtual 328	com/estrongs/android/pop/app/editor/b:read	([C)I
    //   949: istore_3
    //   950: iload_3
    //   951: ifge +756 -> 1707
    //   954: aload 13
    //   956: astore 12
    //   958: aload 15
    //   960: astore 11
    //   962: new 330	com/estrongs/android/pop/app/editor/am
    //   965: dup
    //   966: aload_0
    //   967: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   970: aload_0
    //   971: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   974: invokestatic 264	com/estrongs/android/pop/app/editor/PopNoteEditor:B	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    //   977: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   980: iconst_0
    //   981: aload_0
    //   982: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   985: invokestatic 333	com/estrongs/android/pop/app/editor/PopNoteEditor:d	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ObservableScrollView;
    //   988: invokevirtual 338	com/estrongs/android/pop/app/editor/ObservableScrollView:getScrollY	()I
    //   991: invokespecial 341	com/estrongs/android/pop/app/editor/am:<init>	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;II)V
    //   994: astore 16
    //   996: aload 13
    //   998: astore 12
    //   1000: aload 15
    //   1002: astore 11
    //   1004: aload_0
    //   1005: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1008: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1011: iconst_0
    //   1012: invokevirtual 344	android/os/Handler:obtainMessage	(I)Landroid/os/Message;
    //   1015: astore 17
    //   1017: aload 13
    //   1019: astore 12
    //   1021: aload 15
    //   1023: astore 11
    //   1025: aload 17
    //   1027: aload 16
    //   1029: putfield 350	android/os/Message:obj	Ljava/lang/Object;
    //   1032: aload 13
    //   1034: astore 12
    //   1036: aload 15
    //   1038: astore 11
    //   1040: aload_0
    //   1041: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1044: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1047: aload 17
    //   1049: invokevirtual 225	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1052: pop
    //   1053: aload 13
    //   1055: astore 12
    //   1057: aload 15
    //   1059: astore 11
    //   1061: aload_0
    //   1062: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1065: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1068: iconst_4
    //   1069: invokevirtual 344	android/os/Handler:obtainMessage	(I)Landroid/os/Message;
    //   1072: astore 16
    //   1074: aload 13
    //   1076: astore 12
    //   1078: aload 15
    //   1080: astore 11
    //   1082: aload 16
    //   1084: iconst_1
    //   1085: invokestatic 356	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   1088: putfield 350	android/os/Message:obj	Ljava/lang/Object;
    //   1091: aload 13
    //   1093: astore 12
    //   1095: aload 15
    //   1097: astore 11
    //   1099: aload_0
    //   1100: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1103: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1106: aload 16
    //   1108: invokevirtual 225	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1111: pop
    //   1112: aload 13
    //   1114: astore 12
    //   1116: aload 15
    //   1118: astore 11
    //   1120: aload_0
    //   1121: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1124: aload_0
    //   1125: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1128: invokestatic 174	com/estrongs/android/pop/app/editor/PopNoteEditor:k	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   1131: invokestatic 358	com/estrongs/android/pop/app/editor/PopNoteEditor:e	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    //   1134: pop
    //   1135: aload 10
    //   1137: ifnull +8 -> 1145
    //   1140: aload 10
    //   1142: invokevirtual 229	com/estrongs/android/pop/app/editor/a:c	()V
    //   1145: iconst_0
    //   1146: ifeq +11 -> 1157
    //   1149: new 231	java/lang/NullPointerException
    //   1152: dup
    //   1153: invokespecial 232	java/lang/NullPointerException:<init>	()V
    //   1156: athrow
    //   1157: aload 14
    //   1159: ifnull +8 -> 1167
    //   1162: aload 14
    //   1164: invokevirtual 229	com/estrongs/android/pop/app/editor/a:c	()V
    //   1167: aload_0
    //   1168: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1171: invokestatic 235	com/estrongs/android/pop/app/editor/PopNoteEditor:H	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    //   1174: aload_0
    //   1175: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1178: aconst_null
    //   1179: invokestatic 238	com/estrongs/android/pop/app/editor/PopNoteEditor:a	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/aj;)Lcom/estrongs/android/pop/app/editor/aj;
    //   1182: pop
    //   1183: aload 19
    //   1185: monitorexit
    //   1186: iconst_1
    //   1187: ireturn
    //   1188: aload 15
    //   1190: astore 12
    //   1192: aload 17
    //   1194: astore 11
    //   1196: aload 14
    //   1198: invokevirtual 119	com/estrongs/android/pop/app/editor/a:e	()Ljava/io/OutputStream;
    //   1201: astore 13
    //   1203: goto -771 -> 432
    //   1206: aload 13
    //   1208: astore 12
    //   1210: aload 13
    //   1212: astore 11
    //   1214: new 20	com/estrongs/android/pop/app/editor/b
    //   1217: dup
    //   1218: aload_0
    //   1219: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1222: invokestatic 195	com/estrongs/android/pop/app/editor/PopNoteEditor:l	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;
    //   1225: aload_0
    //   1226: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1229: invokestatic 199	com/estrongs/android/pop/app/editor/PopNoteEditor:C	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;
    //   1232: aload_0
    //   1233: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1236: invokestatic 42	com/estrongs/android/pop/app/editor/PopNoteEditor:t	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;
    //   1239: invokespecial 303	com/estrongs/android/pop/app/editor/b:<init>	(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    //   1242: astore 15
    //   1244: aload 13
    //   1246: astore 12
    //   1248: aload 13
    //   1250: astore 11
    //   1252: aload_0
    //   1253: aload 15
    //   1255: aload 13
    //   1257: aload_0
    //   1258: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1261: invokestatic 163	com/estrongs/android/pop/app/editor/PopNoteEditor:x	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   1264: aload_0
    //   1265: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1268: invokestatic 174	com/estrongs/android/pop/app/editor/PopNoteEditor:k	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   1271: lload 4
    //   1273: lload 8
    //   1275: invokespecial 360	com/estrongs/android/pop/app/editor/aj:a	(Lcom/estrongs/android/pop/app/editor/b;Ljava/io/OutputStream;IIJJ)I
    //   1278: istore_2
    //   1279: aload 13
    //   1281: astore 12
    //   1283: aload 13
    //   1285: astore 11
    //   1287: aload 15
    //   1289: invokevirtual 282	com/estrongs/android/pop/app/editor/b:close	()V
    //   1292: lload 4
    //   1294: iload_2
    //   1295: i2l
    //   1296: ladd
    //   1297: lstore 6
    //   1299: lload 6
    //   1301: lstore 4
    //   1303: lload 6
    //   1305: lconst_0
    //   1306: lcmp
    //   1307: ifge +6 -> 1313
    //   1310: lconst_0
    //   1311: lstore 4
    //   1313: aload 13
    //   1315: astore 12
    //   1317: aload 13
    //   1319: astore 11
    //   1321: aload_0
    //   1322: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1325: invokestatic 273	com/estrongs/android/pop/app/editor/PopNoteEditor:E	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/an;
    //   1328: lconst_0
    //   1329: invokevirtual 277	com/estrongs/android/pop/app/editor/an:b	(J)V
    //   1332: goto -787 -> 545
    //   1335: astore 13
    //   1337: aload 10
    //   1339: astore 11
    //   1341: aload 14
    //   1343: astore 10
    //   1345: aload 13
    //   1347: invokevirtual 361	java/lang/Exception:printStackTrace	()V
    //   1350: aload_0
    //   1351: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1354: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1357: iconst_5
    //   1358: iconst_1
    //   1359: iconst_0
    //   1360: invokevirtual 221	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   1363: astore 13
    //   1365: aload_0
    //   1366: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1369: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1372: aload 13
    //   1374: invokevirtual 225	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1377: pop
    //   1378: aload 11
    //   1380: ifnull +8 -> 1388
    //   1383: aload 11
    //   1385: invokevirtual 229	com/estrongs/android/pop/app/editor/a:c	()V
    //   1388: aload 12
    //   1390: ifnull +8 -> 1398
    //   1393: aload 12
    //   1395: invokevirtual 140	java/io/OutputStream:close	()V
    //   1398: aload 10
    //   1400: ifnull +8 -> 1408
    //   1403: aload 10
    //   1405: invokevirtual 229	com/estrongs/android/pop/app/editor/a:c	()V
    //   1408: aload_0
    //   1409: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1412: invokestatic 235	com/estrongs/android/pop/app/editor/PopNoteEditor:H	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    //   1415: aload_0
    //   1416: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1419: aconst_null
    //   1420: invokestatic 238	com/estrongs/android/pop/app/editor/PopNoteEditor:a	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/aj;)Lcom/estrongs/android/pop/app/editor/aj;
    //   1423: pop
    //   1424: aload 19
    //   1426: monitorexit
    //   1427: iconst_0
    //   1428: ireturn
    //   1429: astore 17
    //   1431: aload 13
    //   1433: astore 12
    //   1435: aload 15
    //   1437: astore 11
    //   1439: aload 17
    //   1441: invokevirtual 361	java/lang/Exception:printStackTrace	()V
    //   1444: aload 13
    //   1446: astore 12
    //   1448: aload 15
    //   1450: astore 11
    //   1452: aload_0
    //   1453: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1456: invokestatic 260	com/estrongs/android/pop/app/editor/PopNoteEditor:F	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   1459: invokevirtual 282	com/estrongs/android/pop/app/editor/b:close	()V
    //   1462: goto -632 -> 830
    //   1465: astore 17
    //   1467: aload 13
    //   1469: astore 12
    //   1471: aload 15
    //   1473: astore 11
    //   1475: aload 17
    //   1477: invokevirtual 241	java/io/IOException:printStackTrace	()V
    //   1480: goto -650 -> 830
    //   1483: astore 13
    //   1485: aload 11
    //   1487: astore 12
    //   1489: aload 10
    //   1491: astore 11
    //   1493: aload 13
    //   1495: astore 10
    //   1497: aload 11
    //   1499: ifnull +8 -> 1507
    //   1502: aload 11
    //   1504: invokevirtual 229	com/estrongs/android/pop/app/editor/a:c	()V
    //   1507: aload 12
    //   1509: ifnull +8 -> 1517
    //   1512: aload 12
    //   1514: invokevirtual 140	java/io/OutputStream:close	()V
    //   1517: aload 14
    //   1519: ifnull +8 -> 1527
    //   1522: aload 14
    //   1524: invokevirtual 229	com/estrongs/android/pop/app/editor/a:c	()V
    //   1527: aload_0
    //   1528: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1531: invokestatic 235	com/estrongs/android/pop/app/editor/PopNoteEditor:H	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    //   1534: aload_0
    //   1535: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1538: aconst_null
    //   1539: invokestatic 238	com/estrongs/android/pop/app/editor/PopNoteEditor:a	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/aj;)Lcom/estrongs/android/pop/app/editor/aj;
    //   1542: pop
    //   1543: aload 10
    //   1545: athrow
    //   1546: aload 13
    //   1548: astore 12
    //   1550: aload 15
    //   1552: astore 11
    //   1554: aload_0
    //   1555: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1558: invokestatic 260	com/estrongs/android/pop/app/editor/PopNoteEditor:F	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   1561: aload 16
    //   1563: invokevirtual 328	com/estrongs/android/pop/app/editor/b:read	([C)I
    //   1566: istore_2
    //   1567: iload_2
    //   1568: iflt -693 -> 875
    //   1571: lload 6
    //   1573: lload 4
    //   1575: lcmp
    //   1576: ifgt -701 -> 875
    //   1579: aload 13
    //   1581: astore 12
    //   1583: aload 15
    //   1585: astore 11
    //   1587: aload_0
    //   1588: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1591: invokestatic 363	com/estrongs/android/pop/app/editor/PopNoteEditor:I	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   1594: pop
    //   1595: aload 13
    //   1597: astore 12
    //   1599: aload 15
    //   1601: astore 11
    //   1603: iload_2
    //   1604: aload 16
    //   1606: arraylength
    //   1607: if_icmpne +38 -> 1645
    //   1610: aload 13
    //   1612: astore 12
    //   1614: aload 15
    //   1616: astore 11
    //   1618: aload_0
    //   1619: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1622: invokestatic 273	com/estrongs/android/pop/app/editor/PopNoteEditor:E	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/an;
    //   1625: aload_0
    //   1626: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1629: invokestatic 325	com/estrongs/android/pop/app/editor/PopNoteEditor:D	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   1632: aload_0
    //   1633: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1636: invokestatic 260	com/estrongs/android/pop/app/editor/PopNoteEditor:F	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   1639: invokevirtual 28	com/estrongs/android/pop/app/editor/b:b	()J
    //   1642: invokevirtual 366	com/estrongs/android/pop/app/editor/an:a	(IJ)V
    //   1645: iload_1
    //   1646: ifeq -799 -> 847
    //   1649: aload 13
    //   1651: astore 12
    //   1653: aload 15
    //   1655: astore 11
    //   1657: aload 17
    //   1659: aload 16
    //   1661: iconst_0
    //   1662: iload_2
    //   1663: invokevirtual 369	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   1666: pop
    //   1667: aload 13
    //   1669: astore 12
    //   1671: aload 15
    //   1673: astore 11
    //   1675: aload 17
    //   1677: invokevirtual 278	java/lang/StringBuilder:length	()I
    //   1680: sipush 12288
    //   1683: if_icmple -836 -> 847
    //   1686: aload 13
    //   1688: astore 12
    //   1690: aload 15
    //   1692: astore 11
    //   1694: aload 17
    //   1696: iconst_0
    //   1697: sipush 4096
    //   1700: invokevirtual 281	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   1703: pop
    //   1704: goto -857 -> 847
    //   1707: aload 13
    //   1709: astore 12
    //   1711: aload 15
    //   1713: astore 11
    //   1715: aload_0
    //   1716: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1719: invokestatic 264	com/estrongs/android/pop/app/editor/PopNoteEditor:B	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    //   1722: aload 16
    //   1724: iconst_0
    //   1725: iload_3
    //   1726: invokevirtual 369	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   1729: pop
    //   1730: aload 13
    //   1732: astore 12
    //   1734: aload 15
    //   1736: astore 11
    //   1738: aload_0
    //   1739: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1742: invokestatic 363	com/estrongs/android/pop/app/editor/PopNoteEditor:I	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   1745: pop
    //   1746: iload_2
    //   1747: iconst_1
    //   1748: iadd
    //   1749: istore_2
    //   1750: goto -826 -> 924
    //   1753: astore 10
    //   1755: aload 10
    //   1757: invokevirtual 241	java/io/IOException:printStackTrace	()V
    //   1760: aload_0
    //   1761: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1764: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1767: iconst_5
    //   1768: iconst_1
    //   1769: iconst_0
    //   1770: invokevirtual 221	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   1773: astore 10
    //   1775: aload_0
    //   1776: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1779: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1782: aload 10
    //   1784: invokevirtual 225	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1787: pop
    //   1788: goto -621 -> 1167
    //   1791: astore 10
    //   1793: aload 10
    //   1795: invokevirtual 241	java/io/IOException:printStackTrace	()V
    //   1798: aload_0
    //   1799: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1802: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1805: iconst_5
    //   1806: iconst_1
    //   1807: iconst_0
    //   1808: invokevirtual 221	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   1811: astore 10
    //   1813: aload_0
    //   1814: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1817: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1820: aload 10
    //   1822: invokevirtual 225	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1825: pop
    //   1826: goto -418 -> 1408
    //   1829: astore 11
    //   1831: aload 11
    //   1833: invokevirtual 241	java/io/IOException:printStackTrace	()V
    //   1836: aload_0
    //   1837: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1840: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1843: iconst_5
    //   1844: iconst_1
    //   1845: iconst_0
    //   1846: invokevirtual 221	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   1849: astore 11
    //   1851: aload_0
    //   1852: getfield 10	com/estrongs/android/pop/app/editor/aj:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1855: invokestatic 215	com/estrongs/android/pop/app/editor/PopNoteEditor:s	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1858: aload 11
    //   1860: invokevirtual 225	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1863: pop
    //   1864: goto -337 -> 1527
    //   1867: astore 10
    //   1869: aconst_null
    //   1870: astore 14
    //   1872: aload 13
    //   1874: astore 12
    //   1876: goto -379 -> 1497
    //   1879: astore 13
    //   1881: aload 10
    //   1883: astore 14
    //   1885: aload 13
    //   1887: astore 10
    //   1889: goto -392 -> 1497
    //   1892: astore 13
    //   1894: aload 16
    //   1896: astore 10
    //   1898: aload 12
    //   1900: astore 11
    //   1902: aload 14
    //   1904: astore 12
    //   1906: goto -561 -> 1345
    //   1909: iconst_3
    //   1910: istore_1
    //   1911: goto +8 -> 1919
    //   1914: iconst_0
    //   1915: istore_1
    //   1916: goto -1853 -> 63
    //   1919: iconst_0
    //   1920: istore_2
    //   1921: goto -997 -> 924
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1924	0	this	aj
    //   47	1869	1	i	int
    //   55	1866	2	j	int
    //   949	777	3	k	int
    //   489	1085	4	l1	long
    //   485	1087	6	l2	long
    //   450	824	8	l3	long
    //   23	236	10	locala1	a
    //   308	3	10	localIOException1	IOException
    //   328	10	10	localMessage1	android.os.Message
    //   346	992	10	locala2	a
    //   1343	201	10	localObject1	Object
    //   1753	3	10	localIOException2	IOException
    //   1773	10	10	localMessage2	android.os.Message
    //   1791	3	10	localIOException3	IOException
    //   1811	10	10	localMessage3	android.os.Message
    //   1867	15	10	localObject2	Object
    //   1887	10	10	localObject3	Object
    //   65	1672	11	localObject4	Object
    //   1829	3	11	localIOException4	IOException
    //   1849	52	11	localObject5	Object
    //   69	1836	12	localObject6	Object
    //   35	1283	13	localOutputStream	OutputStream
    //   1335	11	13	localException1	Exception
    //   1363	105	13	localMessage4	android.os.Message
    //   1483	390	13	localObject7	Object
    //   1879	7	13	localObject8	Object
    //   1892	1	13	localException2	Exception
    //   29	1874	14	localObject9	Object
    //   38	1697	15	localObject10	Object
    //   26	1869	16	localObject11	Object
    //   32	1161	17	localObject12	Object
    //   1429	11	17	localException3	Exception
    //   1465	230	17	localIOException5	IOException
    //   20	357	18	locala3	a
    //   7	1418	19	localObject13	Object
    //   81	341	20	localFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   258	263	308	java/io/IOException
    //   267	275	308	java/io/IOException
    //   279	287	308	java/io/IOException
    //   12	19	346	finally
    //   40	56	346	finally
    //   258	263	346	finally
    //   267	275	346	finally
    //   279	287	346	finally
    //   287	306	346	finally
    //   310	343	346	finally
    //   348	351	346	finally
    //   1140	1145	346	finally
    //   1149	1157	346	finally
    //   1162	1167	346	finally
    //   1167	1186	346	finally
    //   1383	1388	346	finally
    //   1393	1398	346	finally
    //   1403	1408	346	finally
    //   1408	1427	346	finally
    //   1502	1507	346	finally
    //   1512	1517	346	finally
    //   1522	1527	346	finally
    //   1527	1546	346	finally
    //   1755	1788	346	finally
    //   1793	1826	346	finally
    //   1831	1864	346	finally
    //   388	394	1335	java/lang/Exception
    //   402	413	1335	java/lang/Exception
    //   421	432	1335	java/lang/Exception
    //   440	452	1335	java/lang/Exception
    //   460	487	1335	java/lang/Exception
    //   513	525	1335	java/lang/Exception
    //   533	545	1335	java/lang/Exception
    //   553	575	1335	java/lang/Exception
    //   583	593	1335	java/lang/Exception
    //   601	606	1335	java/lang/Exception
    //   620	633	1335	java/lang/Exception
    //   641	650	1335	java/lang/Exception
    //   658	666	1335	java/lang/Exception
    //   674	684	1335	java/lang/Exception
    //   692	708	1335	java/lang/Exception
    //   716	723	1335	java/lang/Exception
    //   731	767	1335	java/lang/Exception
    //   775	789	1335	java/lang/Exception
    //   838	847	1335	java/lang/Exception
    //   855	867	1335	java/lang/Exception
    //   887	903	1335	java/lang/Exception
    //   911	921	1335	java/lang/Exception
    //   937	950	1335	java/lang/Exception
    //   962	996	1335	java/lang/Exception
    //   1004	1017	1335	java/lang/Exception
    //   1025	1032	1335	java/lang/Exception
    //   1040	1053	1335	java/lang/Exception
    //   1061	1074	1335	java/lang/Exception
    //   1082	1091	1335	java/lang/Exception
    //   1099	1112	1335	java/lang/Exception
    //   1120	1135	1335	java/lang/Exception
    //   1196	1203	1335	java/lang/Exception
    //   1214	1244	1335	java/lang/Exception
    //   1252	1279	1335	java/lang/Exception
    //   1287	1292	1335	java/lang/Exception
    //   1321	1332	1335	java/lang/Exception
    //   1439	1444	1335	java/lang/Exception
    //   1452	1462	1335	java/lang/Exception
    //   1475	1480	1335	java/lang/Exception
    //   1554	1567	1335	java/lang/Exception
    //   1587	1595	1335	java/lang/Exception
    //   1603	1610	1335	java/lang/Exception
    //   1618	1645	1335	java/lang/Exception
    //   1657	1667	1335	java/lang/Exception
    //   1675	1686	1335	java/lang/Exception
    //   1694	1704	1335	java/lang/Exception
    //   1715	1730	1335	java/lang/Exception
    //   1738	1746	1335	java/lang/Exception
    //   798	813	1429	java/lang/Exception
    //   817	830	1429	java/lang/Exception
    //   1452	1462	1465	java/io/IOException
    //   388	394	1483	finally
    //   402	413	1483	finally
    //   421	432	1483	finally
    //   440	452	1483	finally
    //   460	487	1483	finally
    //   513	525	1483	finally
    //   533	545	1483	finally
    //   553	575	1483	finally
    //   583	593	1483	finally
    //   601	606	1483	finally
    //   620	633	1483	finally
    //   641	650	1483	finally
    //   658	666	1483	finally
    //   674	684	1483	finally
    //   692	708	1483	finally
    //   716	723	1483	finally
    //   731	767	1483	finally
    //   775	789	1483	finally
    //   798	813	1483	finally
    //   817	830	1483	finally
    //   838	847	1483	finally
    //   855	867	1483	finally
    //   887	903	1483	finally
    //   911	921	1483	finally
    //   937	950	1483	finally
    //   962	996	1483	finally
    //   1004	1017	1483	finally
    //   1025	1032	1483	finally
    //   1040	1053	1483	finally
    //   1061	1074	1483	finally
    //   1082	1091	1483	finally
    //   1099	1112	1483	finally
    //   1120	1135	1483	finally
    //   1196	1203	1483	finally
    //   1214	1244	1483	finally
    //   1252	1279	1483	finally
    //   1287	1292	1483	finally
    //   1321	1332	1483	finally
    //   1439	1444	1483	finally
    //   1452	1462	1483	finally
    //   1475	1480	1483	finally
    //   1554	1567	1483	finally
    //   1587	1595	1483	finally
    //   1603	1610	1483	finally
    //   1618	1645	1483	finally
    //   1657	1667	1483	finally
    //   1675	1686	1483	finally
    //   1694	1704	1483	finally
    //   1715	1730	1483	finally
    //   1738	1746	1483	finally
    //   1140	1145	1753	java/io/IOException
    //   1149	1157	1753	java/io/IOException
    //   1162	1167	1753	java/io/IOException
    //   1383	1388	1791	java/io/IOException
    //   1393	1398	1791	java/io/IOException
    //   1403	1408	1791	java/io/IOException
    //   1502	1507	1829	java/io/IOException
    //   1512	1517	1829	java/io/IOException
    //   1522	1527	1829	java/io/IOException
    //   71	83	1867	finally
    //   91	99	1867	finally
    //   107	113	1867	finally
    //   121	140	1867	finally
    //   148	167	1867	finally
    //   175	192	1867	finally
    //   200	215	1867	finally
    //   223	236	1867	finally
    //   244	253	1867	finally
    //   362	376	1867	finally
    //   1345	1378	1879	finally
    //   71	83	1892	java/lang/Exception
    //   91	99	1892	java/lang/Exception
    //   107	113	1892	java/lang/Exception
    //   121	140	1892	java/lang/Exception
    //   148	167	1892	java/lang/Exception
    //   175	192	1892	java/lang/Exception
    //   200	215	1892	java/lang/Exception
    //   223	236	1892	java/lang/Exception
    //   244	253	1892	java/lang/Exception
    //   362	376	1892	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */