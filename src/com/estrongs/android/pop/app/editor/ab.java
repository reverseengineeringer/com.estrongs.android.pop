package com.estrongs.android.pop.app.editor;

import android.widget.EditText;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.local.i;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

class ab
  extends com.estrongs.a.a
{
  private ab(PopNoteEditor paramPopNoteEditor) {}
  
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
        byte[] arrayOfByte = a(str, paramInt1, paramInt2).getBytes(PopNoteEditor.m(a));
        k = i;
        if (n == 0) {
          k = i + (arrayOfByte.length - str.getBytes(PopNoteEditor.m(a)).length);
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
              paramOutputStream.write(a(str, paramInt2).getBytes(PopNoteEditor.m(a)));
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
    return paramString.replaceAll(ak.a(0), ak.a(1)).replaceAll(ak.a(2), ak.a(1)).replaceAll(ak.a(1), ak.a(paramInt));
  }
  
  private String a(String paramString, int paramInt1, int paramInt2)
  {
    return paramString.replaceAll(ak.a(paramInt1), ak.a(paramInt2));
  }
  
  private void a(a parama1, a parama2)
  {
    int i = 0;
    if (a.a(parama1.g()))
    {
      String[] arrayOfString = ap.k(parama1.g(), "rw");
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
          com.estrongs.android.util.l.e(PopNoteEditor.e(), "updateFile error!");
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
              com.estrongs.android.util.l.e(PopNoteEditor.e(), "updateFile file close error!");
            }
          }
          if (arrayOfString != null) {
            ap.a(arrayOfString);
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
                com.estrongs.android.util.l.e(PopNoteEditor.e(), "updateFile file close error!");
              }
            }
          } while (arrayOfString == null);
          ap.a(arrayOfString);
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
          com.estrongs.android.util.l.e(PopNoteEditor.e(), "updateFile file close error!");
        }
      }
      if (arrayOfString != null) {
        ap.a(arrayOfString);
      }
      throw ((Throwable)localObject);
    }
    parama1 = parama1.g();
    parama2 = parama2.g();
    i.a(a, parama1, null);
    i.a(parama2, parama1);
    com.estrongs.android.scanner.l.a().a(parama1);
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
          if (PopNoteEditor.q(a) != 0)
          {
            str1 = str2;
            if (PopNoteEditor.q(a) != 2) {}
          }
          else
          {
            str1 = a(str2, PopNoteEditor.q(a));
          }
          paramOutputStream.write(str1.getBytes(PopNoteEditor.m(a)));
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
    //   1: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   4: invokestatic 177	com/estrongs/android/pop/app/editor/PopNoteEditor:t	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/Object;
    //   7: astore 19
    //   9: aload 19
    //   11: monitorenter
    //   12: aload_0
    //   13: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   16: invokestatic 180	com/estrongs/android/pop/app/editor/PopNoteEditor:o	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    //   19: aconst_null
    //   20: astore 18
    //   22: aconst_null
    //   23: astore 10
    //   25: aconst_null
    //   26: astore 17
    //   28: aconst_null
    //   29: astore 14
    //   31: aconst_null
    //   32: astore 15
    //   34: aconst_null
    //   35: astore 13
    //   37: aconst_null
    //   38: astore 16
    //   40: aload_0
    //   41: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   44: invokestatic 171	com/estrongs/android/pop/app/editor/PopNoteEditor:q	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   47: istore_2
    //   48: aload_0
    //   49: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   52: invokestatic 183	com/estrongs/android/pop/app/editor/PopNoteEditor:C	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   55: istore_1
    //   56: iload_2
    //   57: iload_1
    //   58: if_icmpeq +1855 -> 1913
    //   61: iconst_1
    //   62: istore_1
    //   63: aload 10
    //   65: astore 11
    //   67: aload 18
    //   69: astore 12
    //   71: aload_0
    //   72: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   75: invokestatic 187	com/estrongs/android/pop/app/editor/PopNoteEditor:p	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;
    //   78: invokevirtual 192	com/estrongs/android/pop/app/editor/c:d	()Ljava/io/File;
    //   81: astore 20
    //   83: aload 10
    //   85: astore 11
    //   87: aload 18
    //   89: astore 12
    //   91: aload 20
    //   93: invokevirtual 197	java/io/File:exists	()Z
    //   96: ifeq +17 -> 113
    //   99: aload 10
    //   101: astore 11
    //   103: aload 18
    //   105: astore 12
    //   107: aload 20
    //   109: invokevirtual 200	java/io/File:delete	()Z
    //   112: pop
    //   113: aload 10
    //   115: astore 11
    //   117: aload 18
    //   119: astore 12
    //   121: aload_0
    //   122: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   125: invokestatic 204	com/estrongs/android/pop/app/editor/PopNoteEditor:i	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;
    //   128: aload_0
    //   129: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   132: invokestatic 208	com/estrongs/android/pop/app/editor/PopNoteEditor:v	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;
    //   135: invokestatic 211	com/estrongs/android/pop/app/editor/a:a	(Landroid/content/Context;Ljava/io/File;)Lcom/estrongs/android/pop/app/editor/a;
    //   138: astore 10
    //   140: aload 10
    //   142: astore 11
    //   144: aload 10
    //   146: astore 12
    //   148: aload 10
    //   150: invokevirtual 212	com/estrongs/android/pop/app/editor/a:b	()J
    //   153: aload_0
    //   154: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   157: invokestatic 187	com/estrongs/android/pop/app/editor/PopNoteEditor:p	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;
    //   160: invokevirtual 213	com/estrongs/android/pop/app/editor/c:b	()J
    //   163: lcmp
    //   164: ifle +189 -> 353
    //   167: aload 10
    //   169: astore 11
    //   171: aload 10
    //   173: astore 12
    //   175: aload_0
    //   176: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   179: aload_0
    //   180: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   183: ldc -42
    //   185: invokevirtual 217	com/estrongs/android/pop/app/editor/PopNoteEditor:getString	(I)Ljava/lang/String;
    //   188: invokestatic 220	com/estrongs/android/pop/app/editor/PopNoteEditor:b	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;)Ljava/lang/String;
    //   191: pop
    //   192: aload 10
    //   194: astore 11
    //   196: aload 10
    //   198: astore 12
    //   200: aload_0
    //   201: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   204: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   207: iconst_5
    //   208: iconst_1
    //   209: iconst_0
    //   210: invokevirtual 230	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   213: astore 15
    //   215: aload 10
    //   217: astore 11
    //   219: aload 10
    //   221: astore 12
    //   223: aload_0
    //   224: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   227: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   230: aload 15
    //   232: invokevirtual 234	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   235: pop
    //   236: aload 10
    //   238: astore 11
    //   240: aload 10
    //   242: astore 12
    //   244: invokestatic 129	com/estrongs/android/pop/app/editor/PopNoteEditor:e	()Ljava/lang/String;
    //   247: ldc -20
    //   249: invokestatic 136	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   252: aload 10
    //   254: ifnull +8 -> 262
    //   257: aload 10
    //   259: invokevirtual 238	com/estrongs/android/pop/app/editor/a:c	()V
    //   262: iconst_0
    //   263: ifeq +11 -> 274
    //   266: new 240	java/lang/NullPointerException
    //   269: dup
    //   270: invokespecial 241	java/lang/NullPointerException:<init>	()V
    //   273: athrow
    //   274: iconst_0
    //   275: ifeq +11 -> 286
    //   278: new 240	java/lang/NullPointerException
    //   281: dup
    //   282: invokespecial 241	java/lang/NullPointerException:<init>	()V
    //   285: athrow
    //   286: aload_0
    //   287: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   290: invokestatic 244	com/estrongs/android/pop/app/editor/PopNoteEditor:B	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    //   293: aload_0
    //   294: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   297: aconst_null
    //   298: invokestatic 247	com/estrongs/android/pop/app/editor/PopNoteEditor:a	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/ab;)Lcom/estrongs/android/pop/app/editor/ab;
    //   301: pop
    //   302: aload 19
    //   304: monitorexit
    //   305: iconst_0
    //   306: ireturn
    //   307: astore 10
    //   309: aload 10
    //   311: invokevirtual 250	java/io/IOException:printStackTrace	()V
    //   314: aload_0
    //   315: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   318: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   321: iconst_5
    //   322: iconst_1
    //   323: iconst_0
    //   324: invokevirtual 230	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   327: astore 10
    //   329: aload_0
    //   330: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   333: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   336: aload 10
    //   338: invokevirtual 234	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   341: pop
    //   342: goto -56 -> 286
    //   345: astore 10
    //   347: aload 19
    //   349: monitorexit
    //   350: aload 10
    //   352: athrow
    //   353: aload 10
    //   355: astore 11
    //   357: aload 10
    //   359: astore 12
    //   361: aload_0
    //   362: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   365: invokestatic 204	com/estrongs/android/pop/app/editor/PopNoteEditor:i	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;
    //   368: aload 20
    //   370: invokestatic 211	com/estrongs/android/pop/app/editor/a:a	(Landroid/content/Context;Ljava/io/File;)Lcom/estrongs/android/pop/app/editor/a;
    //   373: astore 18
    //   375: aload 18
    //   377: astore 14
    //   379: aload 16
    //   381: astore 12
    //   383: aload 15
    //   385: astore 11
    //   387: invokestatic 255	com/estrongs/android/util/bk:l	()Z
    //   390: ifeq +797 -> 1187
    //   393: aload 16
    //   395: astore 12
    //   397: aload 15
    //   399: astore 11
    //   401: aload 20
    //   403: invokevirtual 258	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   406: invokestatic 261	com/estrongs/android/util/ap:bJ	(Ljava/lang/String;)Z
    //   409: ifeq +778 -> 1187
    //   412: aload 16
    //   414: astore 12
    //   416: aload 15
    //   418: astore 11
    //   420: aload 20
    //   422: invokevirtual 258	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   425: iconst_0
    //   426: invokestatic 266	com/estrongs/fs/impl/local/a:a	(Ljava/lang/String;Z)Ljava/io/OutputStream;
    //   429: astore 13
    //   431: aload 13
    //   433: astore 12
    //   435: aload 13
    //   437: astore 11
    //   439: aload_0
    //   440: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   443: invokestatic 270	com/estrongs/android/pop/app/editor/PopNoteEditor:y	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   446: invokevirtual 28	com/estrongs/android/pop/app/editor/b:b	()J
    //   449: lstore 8
    //   451: aload 13
    //   453: astore 12
    //   455: aload 13
    //   457: astore 11
    //   459: lload 8
    //   461: aload_0
    //   462: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   465: invokestatic 274	com/estrongs/android/pop/app/editor/PopNoteEditor:u	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    //   468: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   471: aload_0
    //   472: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   475: invokestatic 42	com/estrongs/android/pop/app/editor/PopNoteEditor:m	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;
    //   478: invokevirtual 46	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   481: arraylength
    //   482: i2l
    //   483: lsub
    //   484: lstore 6
    //   486: lload 6
    //   488: lstore 4
    //   490: lload 6
    //   492: lconst_0
    //   493: lcmp
    //   494: ifge +6 -> 500
    //   497: lconst_0
    //   498: lstore 4
    //   500: iload_1
    //   501: ifne +704 -> 1205
    //   504: aload 13
    //   506: astore 12
    //   508: aload 13
    //   510: astore 11
    //   512: aload_0
    //   513: aload 10
    //   515: aload 13
    //   517: lload 4
    //   519: lload 8
    //   521: invokespecial 279	com/estrongs/android/pop/app/editor/ab:a	(Lcom/estrongs/android/pop/app/editor/a;Ljava/io/OutputStream;JJ)V
    //   524: aload 13
    //   526: astore 12
    //   528: aload 13
    //   530: astore 11
    //   532: aload_0
    //   533: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   536: invokestatic 283	com/estrongs/android/pop/app/editor/PopNoteEditor:x	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/af;
    //   539: lload 4
    //   541: invokevirtual 287	com/estrongs/android/pop/app/editor/af:b	(J)V
    //   544: aload 13
    //   546: astore 12
    //   548: aload 13
    //   550: astore 11
    //   552: aload_0
    //   553: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   556: invokestatic 274	com/estrongs/android/pop/app/editor/PopNoteEditor:u	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    //   559: iconst_0
    //   560: aload_0
    //   561: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   564: invokestatic 274	com/estrongs/android/pop/app/editor/PopNoteEditor:u	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    //   567: invokevirtual 288	java/lang/StringBuilder:length	()I
    //   570: invokevirtual 291	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   573: pop
    //   574: aload 13
    //   576: astore 12
    //   578: aload 13
    //   580: astore 11
    //   582: aload_0
    //   583: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   586: invokestatic 270	com/estrongs/android/pop/app/editor/PopNoteEditor:y	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   589: invokevirtual 292	com/estrongs/android/pop/app/editor/b:close	()V
    //   592: aload 13
    //   594: astore 12
    //   596: aload 13
    //   598: astore 11
    //   600: aload 13
    //   602: invokevirtual 140	java/io/OutputStream:close	()V
    //   605: aconst_null
    //   606: astore 13
    //   608: aconst_null
    //   609: astore 15
    //   611: aload 15
    //   613: astore 12
    //   615: aload 13
    //   617: astore 11
    //   619: aload_0
    //   620: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   623: aload 14
    //   625: invokevirtual 212	com/estrongs/android/pop/app/editor/a:b	()J
    //   628: invokestatic 295	com/estrongs/android/pop/app/editor/PopNoteEditor:a	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;J)J
    //   631: pop2
    //   632: aload 15
    //   634: astore 12
    //   636: aload 13
    //   638: astore 11
    //   640: aload_0
    //   641: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   644: iconst_0
    //   645: invokestatic 298	com/estrongs/android/pop/app/editor/PopNoteEditor:d	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    //   648: pop
    //   649: aload 15
    //   651: astore 12
    //   653: aload 13
    //   655: astore 11
    //   657: aload_0
    //   658: aload 10
    //   660: aload 14
    //   662: invokespecial 300	com/estrongs/android/pop/app/editor/ab:a	(Lcom/estrongs/android/pop/app/editor/a;Lcom/estrongs/android/pop/app/editor/a;)V
    //   665: aload 15
    //   667: astore 12
    //   669: aload 13
    //   671: astore 11
    //   673: aload_0
    //   674: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   677: invokestatic 187	com/estrongs/android/pop/app/editor/PopNoteEditor:p	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;
    //   680: invokevirtual 302	com/estrongs/android/pop/app/editor/c:e	()V
    //   683: aload 15
    //   685: astore 12
    //   687: aload 13
    //   689: astore 11
    //   691: invokestatic 307	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   694: aload_0
    //   695: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   698: invokestatic 208	com/estrongs/android/pop/app/editor/PopNoteEditor:v	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;
    //   701: invokevirtual 258	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   704: invokevirtual 309	com/estrongs/fs/a/b:b	(Ljava/lang/String;)V
    //   707: aload 15
    //   709: astore 12
    //   711: aload 13
    //   713: astore 11
    //   715: sipush 4096
    //   718: newarray <illegal type>
    //   720: astore 16
    //   722: aload 15
    //   724: astore 12
    //   726: aload 13
    //   728: astore 11
    //   730: aload_0
    //   731: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   734: new 20	com/estrongs/android/pop/app/editor/b
    //   737: dup
    //   738: aload_0
    //   739: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   742: invokestatic 204	com/estrongs/android/pop/app/editor/PopNoteEditor:i	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;
    //   745: aload_0
    //   746: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   749: invokestatic 208	com/estrongs/android/pop/app/editor/PopNoteEditor:v	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;
    //   752: aload_0
    //   753: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   756: invokestatic 42	com/estrongs/android/pop/app/editor/PopNoteEditor:m	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;
    //   759: invokespecial 312	com/estrongs/android/pop/app/editor/b:<init>	(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    //   762: invokestatic 315	com/estrongs/android/pop/app/editor/PopNoteEditor:a	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/b;)Lcom/estrongs/android/pop/app/editor/b;
    //   765: pop
    //   766: aload 15
    //   768: astore 12
    //   770: aload 13
    //   772: astore 11
    //   774: aload_0
    //   775: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   778: invokestatic 283	com/estrongs/android/pop/app/editor/PopNoteEditor:x	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/af;
    //   781: lload 4
    //   783: invokevirtual 318	com/estrongs/android/pop/app/editor/af:a	(J)Lcom/estrongs/android/pop/app/editor/ag;
    //   786: astore 17
    //   788: aload 17
    //   790: ifnull +39 -> 829
    //   793: aload 13
    //   795: astore 11
    //   797: aload_0
    //   798: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   801: invokestatic 270	com/estrongs/android/pop/app/editor/PopNoteEditor:y	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   804: aload 17
    //   806: getfield 323	com/estrongs/android/pop/app/editor/ag:b	J
    //   809: invokevirtual 55	com/estrongs/android/pop/app/editor/b:a	(J)V
    //   812: aload 13
    //   814: astore 11
    //   816: aload_0
    //   817: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   820: aload 17
    //   822: getfield 326	com/estrongs/android/pop/app/editor/ag:a	I
    //   825: invokestatic 298	com/estrongs/android/pop/app/editor/PopNoteEditor:d	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    //   828: pop
    //   829: aload 15
    //   831: astore 12
    //   833: aload 13
    //   835: astore 11
    //   837: new 276	java/lang/StringBuilder
    //   840: dup
    //   841: invokespecial 327	java/lang/StringBuilder:<init>	()V
    //   844: astore 17
    //   846: aload 15
    //   848: astore 12
    //   850: aload 13
    //   852: astore 11
    //   854: aload_0
    //   855: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   858: invokestatic 270	com/estrongs/android/pop/app/editor/PopNoteEditor:y	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   861: invokevirtual 28	com/estrongs/android/pop/app/editor/b:b	()J
    //   864: lstore 6
    //   866: lload 6
    //   868: lload 4
    //   870: lcmp
    //   871: ifne +674 -> 1545
    //   874: iload_1
    //   875: ifeq +1033 -> 1908
    //   878: aload 15
    //   880: astore 12
    //   882: aload 13
    //   884: astore 11
    //   886: aload_0
    //   887: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   890: invokestatic 274	com/estrongs/android/pop/app/editor/PopNoteEditor:u	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    //   893: aload 17
    //   895: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   898: invokevirtual 331	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   901: pop
    //   902: aload 15
    //   904: astore 12
    //   906: aload 13
    //   908: astore 11
    //   910: iconst_3
    //   911: aload_0
    //   912: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   915: invokestatic 334	com/estrongs/android/pop/app/editor/PopNoteEditor:w	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   918: isub
    //   919: istore_1
    //   920: goto +998 -> 1918
    //   923: iload_2
    //   924: iload_1
    //   925: if_icmpge +28 -> 953
    //   928: aload 15
    //   930: astore 12
    //   932: aload 13
    //   934: astore 11
    //   936: aload_0
    //   937: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   940: invokestatic 270	com/estrongs/android/pop/app/editor/PopNoteEditor:y	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   943: aload 16
    //   945: invokevirtual 337	com/estrongs/android/pop/app/editor/b:read	([C)I
    //   948: istore_3
    //   949: iload_3
    //   950: ifge +756 -> 1706
    //   953: aload 15
    //   955: astore 12
    //   957: aload 13
    //   959: astore 11
    //   961: new 339	com/estrongs/android/pop/app/editor/ae
    //   964: dup
    //   965: aload_0
    //   966: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   969: aload_0
    //   970: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   973: invokestatic 274	com/estrongs/android/pop/app/editor/PopNoteEditor:u	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    //   976: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   979: iconst_0
    //   980: aload_0
    //   981: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   984: invokestatic 342	com/estrongs/android/pop/app/editor/PopNoteEditor:d	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ObservableScrollView;
    //   987: invokevirtual 347	com/estrongs/android/pop/app/editor/ObservableScrollView:getScrollY	()I
    //   990: invokespecial 350	com/estrongs/android/pop/app/editor/ae:<init>	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;II)V
    //   993: astore 17
    //   995: aload 15
    //   997: astore 12
    //   999: aload 13
    //   1001: astore 11
    //   1003: aload_0
    //   1004: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1007: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1010: iconst_0
    //   1011: invokevirtual 353	android/os/Handler:obtainMessage	(I)Landroid/os/Message;
    //   1014: astore 16
    //   1016: aload 15
    //   1018: astore 12
    //   1020: aload 13
    //   1022: astore 11
    //   1024: aload 16
    //   1026: aload 17
    //   1028: putfield 359	android/os/Message:obj	Ljava/lang/Object;
    //   1031: aload 15
    //   1033: astore 12
    //   1035: aload 13
    //   1037: astore 11
    //   1039: aload_0
    //   1040: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1043: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1046: aload 16
    //   1048: invokevirtual 234	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1051: pop
    //   1052: aload 15
    //   1054: astore 12
    //   1056: aload 13
    //   1058: astore 11
    //   1060: aload_0
    //   1061: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1064: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1067: iconst_4
    //   1068: invokevirtual 353	android/os/Handler:obtainMessage	(I)Landroid/os/Message;
    //   1071: astore 16
    //   1073: aload 15
    //   1075: astore 12
    //   1077: aload 13
    //   1079: astore 11
    //   1081: aload 16
    //   1083: iconst_1
    //   1084: invokestatic 365	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   1087: putfield 359	android/os/Message:obj	Ljava/lang/Object;
    //   1090: aload 15
    //   1092: astore 12
    //   1094: aload 13
    //   1096: astore 11
    //   1098: aload_0
    //   1099: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1102: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1105: aload 16
    //   1107: invokevirtual 234	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1110: pop
    //   1111: aload 15
    //   1113: astore 12
    //   1115: aload 13
    //   1117: astore 11
    //   1119: aload_0
    //   1120: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1123: aload_0
    //   1124: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1127: invokestatic 183	com/estrongs/android/pop/app/editor/PopNoteEditor:C	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   1130: invokestatic 367	com/estrongs/android/pop/app/editor/PopNoteEditor:e	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    //   1133: pop
    //   1134: aload 10
    //   1136: ifnull +8 -> 1144
    //   1139: aload 10
    //   1141: invokevirtual 238	com/estrongs/android/pop/app/editor/a:c	()V
    //   1144: iconst_0
    //   1145: ifeq +11 -> 1156
    //   1148: new 240	java/lang/NullPointerException
    //   1151: dup
    //   1152: invokespecial 241	java/lang/NullPointerException:<init>	()V
    //   1155: athrow
    //   1156: aload 14
    //   1158: ifnull +8 -> 1166
    //   1161: aload 14
    //   1163: invokevirtual 238	com/estrongs/android/pop/app/editor/a:c	()V
    //   1166: aload_0
    //   1167: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1170: invokestatic 244	com/estrongs/android/pop/app/editor/PopNoteEditor:B	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    //   1173: aload_0
    //   1174: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1177: aconst_null
    //   1178: invokestatic 247	com/estrongs/android/pop/app/editor/PopNoteEditor:a	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/ab;)Lcom/estrongs/android/pop/app/editor/ab;
    //   1181: pop
    //   1182: aload 19
    //   1184: monitorexit
    //   1185: iconst_1
    //   1186: ireturn
    //   1187: aload 16
    //   1189: astore 12
    //   1191: aload 15
    //   1193: astore 11
    //   1195: aload 14
    //   1197: invokevirtual 119	com/estrongs/android/pop/app/editor/a:e	()Ljava/io/OutputStream;
    //   1200: astore 13
    //   1202: goto -771 -> 431
    //   1205: aload 13
    //   1207: astore 12
    //   1209: aload 13
    //   1211: astore 11
    //   1213: new 20	com/estrongs/android/pop/app/editor/b
    //   1216: dup
    //   1217: aload_0
    //   1218: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1221: invokestatic 204	com/estrongs/android/pop/app/editor/PopNoteEditor:i	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;
    //   1224: aload_0
    //   1225: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1228: invokestatic 208	com/estrongs/android/pop/app/editor/PopNoteEditor:v	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;
    //   1231: aload_0
    //   1232: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1235: invokestatic 42	com/estrongs/android/pop/app/editor/PopNoteEditor:m	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;
    //   1238: invokespecial 312	com/estrongs/android/pop/app/editor/b:<init>	(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    //   1241: astore 15
    //   1243: aload 13
    //   1245: astore 12
    //   1247: aload 13
    //   1249: astore 11
    //   1251: aload_0
    //   1252: aload 15
    //   1254: aload 13
    //   1256: aload_0
    //   1257: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1260: invokestatic 171	com/estrongs/android/pop/app/editor/PopNoteEditor:q	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   1263: aload_0
    //   1264: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1267: invokestatic 183	com/estrongs/android/pop/app/editor/PopNoteEditor:C	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   1270: lload 4
    //   1272: lload 8
    //   1274: invokespecial 369	com/estrongs/android/pop/app/editor/ab:a	(Lcom/estrongs/android/pop/app/editor/b;Ljava/io/OutputStream;IIJJ)I
    //   1277: istore_2
    //   1278: aload 13
    //   1280: astore 12
    //   1282: aload 13
    //   1284: astore 11
    //   1286: aload 15
    //   1288: invokevirtual 292	com/estrongs/android/pop/app/editor/b:close	()V
    //   1291: lload 4
    //   1293: iload_2
    //   1294: i2l
    //   1295: ladd
    //   1296: lstore 6
    //   1298: lload 6
    //   1300: lstore 4
    //   1302: lload 6
    //   1304: lconst_0
    //   1305: lcmp
    //   1306: ifge +6 -> 1312
    //   1309: lconst_0
    //   1310: lstore 4
    //   1312: aload 13
    //   1314: astore 12
    //   1316: aload 13
    //   1318: astore 11
    //   1320: aload_0
    //   1321: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1324: invokestatic 283	com/estrongs/android/pop/app/editor/PopNoteEditor:x	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/af;
    //   1327: lconst_0
    //   1328: invokevirtual 287	com/estrongs/android/pop/app/editor/af:b	(J)V
    //   1331: goto -787 -> 544
    //   1334: astore 13
    //   1336: aload 10
    //   1338: astore 11
    //   1340: aload 14
    //   1342: astore 10
    //   1344: aload 13
    //   1346: invokevirtual 370	java/lang/Exception:printStackTrace	()V
    //   1349: aload_0
    //   1350: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1353: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1356: iconst_5
    //   1357: iconst_1
    //   1358: iconst_0
    //   1359: invokevirtual 230	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   1362: astore 13
    //   1364: aload_0
    //   1365: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1368: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1371: aload 13
    //   1373: invokevirtual 234	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1376: pop
    //   1377: aload 11
    //   1379: ifnull +8 -> 1387
    //   1382: aload 11
    //   1384: invokevirtual 238	com/estrongs/android/pop/app/editor/a:c	()V
    //   1387: aload 12
    //   1389: ifnull +8 -> 1397
    //   1392: aload 12
    //   1394: invokevirtual 140	java/io/OutputStream:close	()V
    //   1397: aload 10
    //   1399: ifnull +8 -> 1407
    //   1402: aload 10
    //   1404: invokevirtual 238	com/estrongs/android/pop/app/editor/a:c	()V
    //   1407: aload_0
    //   1408: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1411: invokestatic 244	com/estrongs/android/pop/app/editor/PopNoteEditor:B	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    //   1414: aload_0
    //   1415: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1418: aconst_null
    //   1419: invokestatic 247	com/estrongs/android/pop/app/editor/PopNoteEditor:a	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/ab;)Lcom/estrongs/android/pop/app/editor/ab;
    //   1422: pop
    //   1423: aload 19
    //   1425: monitorexit
    //   1426: iconst_0
    //   1427: ireturn
    //   1428: astore 17
    //   1430: aload 15
    //   1432: astore 12
    //   1434: aload 13
    //   1436: astore 11
    //   1438: aload 17
    //   1440: invokevirtual 370	java/lang/Exception:printStackTrace	()V
    //   1443: aload 15
    //   1445: astore 12
    //   1447: aload 13
    //   1449: astore 11
    //   1451: aload_0
    //   1452: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1455: invokestatic 270	com/estrongs/android/pop/app/editor/PopNoteEditor:y	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   1458: invokevirtual 292	com/estrongs/android/pop/app/editor/b:close	()V
    //   1461: goto -632 -> 829
    //   1464: astore 17
    //   1466: aload 15
    //   1468: astore 12
    //   1470: aload 13
    //   1472: astore 11
    //   1474: aload 17
    //   1476: invokevirtual 250	java/io/IOException:printStackTrace	()V
    //   1479: goto -650 -> 829
    //   1482: astore 13
    //   1484: aload 11
    //   1486: astore 12
    //   1488: aload 10
    //   1490: astore 11
    //   1492: aload 13
    //   1494: astore 10
    //   1496: aload 11
    //   1498: ifnull +8 -> 1506
    //   1501: aload 11
    //   1503: invokevirtual 238	com/estrongs/android/pop/app/editor/a:c	()V
    //   1506: aload 12
    //   1508: ifnull +8 -> 1516
    //   1511: aload 12
    //   1513: invokevirtual 140	java/io/OutputStream:close	()V
    //   1516: aload 14
    //   1518: ifnull +8 -> 1526
    //   1521: aload 14
    //   1523: invokevirtual 238	com/estrongs/android/pop/app/editor/a:c	()V
    //   1526: aload_0
    //   1527: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1530: invokestatic 244	com/estrongs/android/pop/app/editor/PopNoteEditor:B	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    //   1533: aload_0
    //   1534: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1537: aconst_null
    //   1538: invokestatic 247	com/estrongs/android/pop/app/editor/PopNoteEditor:a	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/ab;)Lcom/estrongs/android/pop/app/editor/ab;
    //   1541: pop
    //   1542: aload 10
    //   1544: athrow
    //   1545: aload 15
    //   1547: astore 12
    //   1549: aload 13
    //   1551: astore 11
    //   1553: aload_0
    //   1554: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1557: invokestatic 270	com/estrongs/android/pop/app/editor/PopNoteEditor:y	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   1560: aload 16
    //   1562: invokevirtual 337	com/estrongs/android/pop/app/editor/b:read	([C)I
    //   1565: istore_2
    //   1566: iload_2
    //   1567: iflt -693 -> 874
    //   1570: lload 6
    //   1572: lload 4
    //   1574: lcmp
    //   1575: ifgt -701 -> 874
    //   1578: aload 15
    //   1580: astore 12
    //   1582: aload 13
    //   1584: astore 11
    //   1586: aload_0
    //   1587: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1590: invokestatic 373	com/estrongs/android/pop/app/editor/PopNoteEditor:D	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   1593: pop
    //   1594: aload 15
    //   1596: astore 12
    //   1598: aload 13
    //   1600: astore 11
    //   1602: iload_2
    //   1603: aload 16
    //   1605: arraylength
    //   1606: if_icmpne +38 -> 1644
    //   1609: aload 15
    //   1611: astore 12
    //   1613: aload 13
    //   1615: astore 11
    //   1617: aload_0
    //   1618: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1621: invokestatic 283	com/estrongs/android/pop/app/editor/PopNoteEditor:x	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/af;
    //   1624: aload_0
    //   1625: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1628: invokestatic 334	com/estrongs/android/pop/app/editor/PopNoteEditor:w	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   1631: aload_0
    //   1632: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1635: invokestatic 270	com/estrongs/android/pop/app/editor/PopNoteEditor:y	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    //   1638: invokevirtual 28	com/estrongs/android/pop/app/editor/b:b	()J
    //   1641: invokevirtual 376	com/estrongs/android/pop/app/editor/af:a	(IJ)V
    //   1644: iload_1
    //   1645: ifeq -799 -> 846
    //   1648: aload 15
    //   1650: astore 12
    //   1652: aload 13
    //   1654: astore 11
    //   1656: aload 17
    //   1658: aload 16
    //   1660: iconst_0
    //   1661: iload_2
    //   1662: invokevirtual 379	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   1665: pop
    //   1666: aload 15
    //   1668: astore 12
    //   1670: aload 13
    //   1672: astore 11
    //   1674: aload 17
    //   1676: invokevirtual 288	java/lang/StringBuilder:length	()I
    //   1679: sipush 12288
    //   1682: if_icmple -836 -> 846
    //   1685: aload 15
    //   1687: astore 12
    //   1689: aload 13
    //   1691: astore 11
    //   1693: aload 17
    //   1695: iconst_0
    //   1696: sipush 4096
    //   1699: invokevirtual 291	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   1702: pop
    //   1703: goto -857 -> 846
    //   1706: aload 15
    //   1708: astore 12
    //   1710: aload 13
    //   1712: astore 11
    //   1714: aload_0
    //   1715: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1718: invokestatic 274	com/estrongs/android/pop/app/editor/PopNoteEditor:u	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    //   1721: aload 16
    //   1723: iconst_0
    //   1724: iload_3
    //   1725: invokevirtual 379	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   1728: pop
    //   1729: aload 15
    //   1731: astore 12
    //   1733: aload 13
    //   1735: astore 11
    //   1737: aload_0
    //   1738: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1741: invokestatic 373	com/estrongs/android/pop/app/editor/PopNoteEditor:D	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    //   1744: pop
    //   1745: iload_2
    //   1746: iconst_1
    //   1747: iadd
    //   1748: istore_2
    //   1749: goto -826 -> 923
    //   1752: astore 10
    //   1754: aload 10
    //   1756: invokevirtual 250	java/io/IOException:printStackTrace	()V
    //   1759: aload_0
    //   1760: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1763: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1766: iconst_5
    //   1767: iconst_1
    //   1768: iconst_0
    //   1769: invokevirtual 230	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   1772: astore 10
    //   1774: aload_0
    //   1775: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1778: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1781: aload 10
    //   1783: invokevirtual 234	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1786: pop
    //   1787: goto -621 -> 1166
    //   1790: astore 10
    //   1792: aload 10
    //   1794: invokevirtual 250	java/io/IOException:printStackTrace	()V
    //   1797: aload_0
    //   1798: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1801: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1804: iconst_5
    //   1805: iconst_1
    //   1806: iconst_0
    //   1807: invokevirtual 230	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   1810: astore 10
    //   1812: aload_0
    //   1813: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1816: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1819: aload 10
    //   1821: invokevirtual 234	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1824: pop
    //   1825: goto -418 -> 1407
    //   1828: astore 11
    //   1830: aload 11
    //   1832: invokevirtual 250	java/io/IOException:printStackTrace	()V
    //   1835: aload_0
    //   1836: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1839: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1842: iconst_5
    //   1843: iconst_1
    //   1844: iconst_0
    //   1845: invokevirtual 230	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   1848: astore 11
    //   1850: aload_0
    //   1851: getfield 10	com/estrongs/android/pop/app/editor/ab:a	Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
    //   1854: invokestatic 224	com/estrongs/android/pop/app/editor/PopNoteEditor:A	(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    //   1857: aload 11
    //   1859: invokevirtual 234	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   1862: pop
    //   1863: goto -337 -> 1526
    //   1866: astore 10
    //   1868: aconst_null
    //   1869: astore 14
    //   1871: aload 13
    //   1873: astore 12
    //   1875: goto -379 -> 1496
    //   1878: astore 13
    //   1880: aload 10
    //   1882: astore 14
    //   1884: aload 13
    //   1886: astore 10
    //   1888: goto -392 -> 1496
    //   1891: astore 13
    //   1893: aload 17
    //   1895: astore 10
    //   1897: aload 12
    //   1899: astore 11
    //   1901: aload 14
    //   1903: astore 12
    //   1905: goto -561 -> 1344
    //   1908: iconst_3
    //   1909: istore_1
    //   1910: goto +8 -> 1918
    //   1913: iconst_0
    //   1914: istore_1
    //   1915: goto -1852 -> 63
    //   1918: iconst_0
    //   1919: istore_2
    //   1920: goto -997 -> 923
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1923	0	this	ab
    //   55	1860	1	i	int
    //   47	1873	2	j	int
    //   948	777	3	k	int
    //   488	1085	4	l1	long
    //   484	1087	6	l2	long
    //   449	824	8	l3	long
    //   23	235	10	locala1	a
    //   307	3	10	localIOException1	IOException
    //   327	10	10	localMessage1	android.os.Message
    //   345	992	10	locala2	a
    //   1342	201	10	localObject1	Object
    //   1752	3	10	localIOException2	IOException
    //   1772	10	10	localMessage2	android.os.Message
    //   1790	3	10	localIOException3	IOException
    //   1810	10	10	localMessage3	android.os.Message
    //   1866	15	10	localObject2	Object
    //   1886	10	10	localObject3	Object
    //   65	1671	11	localObject4	Object
    //   1828	3	11	localIOException4	IOException
    //   1848	52	11	localObject5	Object
    //   69	1835	12	localObject6	Object
    //   35	1282	13	localOutputStream	OutputStream
    //   1334	11	13	localException1	Exception
    //   1362	109	13	localMessage4	android.os.Message
    //   1482	390	13	localObject7	Object
    //   1878	7	13	localObject8	Object
    //   1891	1	13	localException2	Exception
    //   29	1873	14	localObject9	Object
    //   32	1698	15	localObject10	Object
    //   38	1684	16	localObject11	Object
    //   26	1001	17	localObject12	Object
    //   1428	11	17	localException3	Exception
    //   1464	430	17	localIOException5	IOException
    //   20	356	18	locala3	a
    //   7	1417	19	localObject13	Object
    //   81	340	20	localFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   257	262	307	java/io/IOException
    //   266	274	307	java/io/IOException
    //   278	286	307	java/io/IOException
    //   12	19	345	finally
    //   40	56	345	finally
    //   257	262	345	finally
    //   266	274	345	finally
    //   278	286	345	finally
    //   286	305	345	finally
    //   309	342	345	finally
    //   347	350	345	finally
    //   1139	1144	345	finally
    //   1148	1156	345	finally
    //   1161	1166	345	finally
    //   1166	1185	345	finally
    //   1382	1387	345	finally
    //   1392	1397	345	finally
    //   1402	1407	345	finally
    //   1407	1426	345	finally
    //   1501	1506	345	finally
    //   1511	1516	345	finally
    //   1521	1526	345	finally
    //   1526	1545	345	finally
    //   1754	1787	345	finally
    //   1792	1825	345	finally
    //   1830	1863	345	finally
    //   387	393	1334	java/lang/Exception
    //   401	412	1334	java/lang/Exception
    //   420	431	1334	java/lang/Exception
    //   439	451	1334	java/lang/Exception
    //   459	486	1334	java/lang/Exception
    //   512	524	1334	java/lang/Exception
    //   532	544	1334	java/lang/Exception
    //   552	574	1334	java/lang/Exception
    //   582	592	1334	java/lang/Exception
    //   600	605	1334	java/lang/Exception
    //   619	632	1334	java/lang/Exception
    //   640	649	1334	java/lang/Exception
    //   657	665	1334	java/lang/Exception
    //   673	683	1334	java/lang/Exception
    //   691	707	1334	java/lang/Exception
    //   715	722	1334	java/lang/Exception
    //   730	766	1334	java/lang/Exception
    //   774	788	1334	java/lang/Exception
    //   837	846	1334	java/lang/Exception
    //   854	866	1334	java/lang/Exception
    //   886	902	1334	java/lang/Exception
    //   910	920	1334	java/lang/Exception
    //   936	949	1334	java/lang/Exception
    //   961	995	1334	java/lang/Exception
    //   1003	1016	1334	java/lang/Exception
    //   1024	1031	1334	java/lang/Exception
    //   1039	1052	1334	java/lang/Exception
    //   1060	1073	1334	java/lang/Exception
    //   1081	1090	1334	java/lang/Exception
    //   1098	1111	1334	java/lang/Exception
    //   1119	1134	1334	java/lang/Exception
    //   1195	1202	1334	java/lang/Exception
    //   1213	1243	1334	java/lang/Exception
    //   1251	1278	1334	java/lang/Exception
    //   1286	1291	1334	java/lang/Exception
    //   1320	1331	1334	java/lang/Exception
    //   1438	1443	1334	java/lang/Exception
    //   1451	1461	1334	java/lang/Exception
    //   1474	1479	1334	java/lang/Exception
    //   1553	1566	1334	java/lang/Exception
    //   1586	1594	1334	java/lang/Exception
    //   1602	1609	1334	java/lang/Exception
    //   1617	1644	1334	java/lang/Exception
    //   1656	1666	1334	java/lang/Exception
    //   1674	1685	1334	java/lang/Exception
    //   1693	1703	1334	java/lang/Exception
    //   1714	1729	1334	java/lang/Exception
    //   1737	1745	1334	java/lang/Exception
    //   797	812	1428	java/lang/Exception
    //   816	829	1428	java/lang/Exception
    //   1451	1461	1464	java/io/IOException
    //   387	393	1482	finally
    //   401	412	1482	finally
    //   420	431	1482	finally
    //   439	451	1482	finally
    //   459	486	1482	finally
    //   512	524	1482	finally
    //   532	544	1482	finally
    //   552	574	1482	finally
    //   582	592	1482	finally
    //   600	605	1482	finally
    //   619	632	1482	finally
    //   640	649	1482	finally
    //   657	665	1482	finally
    //   673	683	1482	finally
    //   691	707	1482	finally
    //   715	722	1482	finally
    //   730	766	1482	finally
    //   774	788	1482	finally
    //   797	812	1482	finally
    //   816	829	1482	finally
    //   837	846	1482	finally
    //   854	866	1482	finally
    //   886	902	1482	finally
    //   910	920	1482	finally
    //   936	949	1482	finally
    //   961	995	1482	finally
    //   1003	1016	1482	finally
    //   1024	1031	1482	finally
    //   1039	1052	1482	finally
    //   1060	1073	1482	finally
    //   1081	1090	1482	finally
    //   1098	1111	1482	finally
    //   1119	1134	1482	finally
    //   1195	1202	1482	finally
    //   1213	1243	1482	finally
    //   1251	1278	1482	finally
    //   1286	1291	1482	finally
    //   1320	1331	1482	finally
    //   1438	1443	1482	finally
    //   1451	1461	1482	finally
    //   1474	1479	1482	finally
    //   1553	1566	1482	finally
    //   1586	1594	1482	finally
    //   1602	1609	1482	finally
    //   1617	1644	1482	finally
    //   1656	1666	1482	finally
    //   1674	1685	1482	finally
    //   1693	1703	1482	finally
    //   1714	1729	1482	finally
    //   1737	1745	1482	finally
    //   1139	1144	1752	java/io/IOException
    //   1148	1156	1752	java/io/IOException
    //   1161	1166	1752	java/io/IOException
    //   1382	1387	1790	java/io/IOException
    //   1392	1397	1790	java/io/IOException
    //   1402	1407	1790	java/io/IOException
    //   1501	1506	1828	java/io/IOException
    //   1511	1516	1828	java/io/IOException
    //   1521	1526	1828	java/io/IOException
    //   71	83	1866	finally
    //   91	99	1866	finally
    //   107	113	1866	finally
    //   121	140	1866	finally
    //   148	167	1866	finally
    //   175	192	1866	finally
    //   200	215	1866	finally
    //   223	236	1866	finally
    //   244	252	1866	finally
    //   361	375	1866	finally
    //   1344	1377	1878	finally
    //   71	83	1891	java/lang/Exception
    //   91	99	1891	java/lang/Exception
    //   107	113	1891	java/lang/Exception
    //   121	140	1891	java/lang/Exception
    //   148	167	1891	java/lang/Exception
    //   175	192	1891	java/lang/Exception
    //   200	215	1891	java/lang/Exception
    //   223	236	1891	java/lang/Exception
    //   244	252	1891	java/lang/Exception
    //   361	375	1891	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */