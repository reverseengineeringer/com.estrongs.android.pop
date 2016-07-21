package com.estrongs.io.archive.aeszip;

import com.estrongs.android.util.e;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;
import java.io.InputStream;
import java.util.Iterator;

public class h
  extends com.estrongs.io.archive.i
{
  a h = null;
  boolean i = false;
  
  public h(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
    if (paramString2.equalsIgnoreCase(e.a[0]))
    {
      i = true;
      c = e.a();
    }
  }
  
  public InputStream a(String paramString)
  {
    return null;
  }
  
  public boolean a()
  {
    return h != null;
  }
  
  public void b()
  {
    h = new a(new File(b), c, i, new i(this));
  }
  
  public void c()
  {
    if (h != null)
    {
      h.b();
      h = null;
    }
  }
  
  /* Error */
  public File d(ArchiveEntryFile paramArchiveEntryFile, com.estrongs.io.a.b paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: invokevirtual 66	com/estrongs/io/archive/aeszip/h:b	(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    //   6: invokevirtual 69	java/io/File:exists	()Z
    //   9: istore 4
    //   11: aload_0
    //   12: aload_1
    //   13: aload_2
    //   14: invokevirtual 71	com/estrongs/io/archive/aeszip/h:c	(Lcom/estrongs/io/model/ArchiveEntryFile;Lcom/estrongs/io/a/b;)Ljava/io/File;
    //   17: astore 9
    //   19: aload 9
    //   21: ifnonnull +5 -> 26
    //   24: aconst_null
    //   25: areturn
    //   26: aload_1
    //   27: checkcast 73	com/estrongs/io/archive/aeszip/AesZipArchiveEntryFile
    //   30: invokevirtual 77	com/estrongs/io/archive/aeszip/AesZipArchiveEntryFile:getArchiveEntry	()Lde/a/a/a/a/i;
    //   33: astore 6
    //   35: aload_0
    //   36: getfield 14	com/estrongs/io/archive/aeszip/h:h	Lcom/estrongs/io/archive/aeszip/a;
    //   39: ifnonnull +7 -> 46
    //   42: aload_0
    //   43: invokevirtual 78	com/estrongs/io/archive/aeszip/h:b	()V
    //   46: aload 6
    //   48: ifnonnull +76 -> 124
    //   51: new 64	java/io/IOException
    //   54: dup
    //   55: ldc 80
    //   57: invokespecial 81	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   60: athrow
    //   61: astore 7
    //   63: aconst_null
    //   64: astore 6
    //   66: aconst_null
    //   67: astore_1
    //   68: iload 4
    //   70: ifne +9 -> 79
    //   73: aload 9
    //   75: invokevirtual 84	java/io/File:delete	()Z
    //   78: pop
    //   79: aload 7
    //   81: athrow
    //   82: astore 8
    //   84: aload 6
    //   86: astore 7
    //   88: aload 8
    //   90: astore 6
    //   92: aload 7
    //   94: ifnull +8 -> 102
    //   97: aload 7
    //   99: invokevirtual 89	java/io/OutputStream:close	()V
    //   102: aload_2
    //   103: invokeinterface 93 1 0
    //   108: ifeq +13 -> 121
    //   111: aload_1
    //   112: ifnull +9 -> 121
    //   115: aload 9
    //   117: invokevirtual 84	java/io/File:delete	()Z
    //   120: pop
    //   121: aload 6
    //   123: athrow
    //   124: aload_0
    //   125: getfield 14	com/estrongs/io/archive/aeszip/h:h	Lcom/estrongs/io/archive/aeszip/a;
    //   128: aload 6
    //   130: invokevirtual 98	de/a/a/a/a/i:getName	()Ljava/lang/String;
    //   133: aload_2
    //   134: invokevirtual 101	com/estrongs/io/archive/aeszip/a:a	(Ljava/lang/String;Lcom/estrongs/io/a/b;)Ljava/io/InputStream;
    //   137: astore_1
    //   138: aload_1
    //   139: ifnull +175 -> 314
    //   142: aload_2
    //   143: invokeinterface 93 1 0
    //   148: ifne +166 -> 314
    //   151: aload 9
    //   153: invokevirtual 104	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   156: invokestatic 110	com/estrongs/fs/impl/local/i:f	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   159: astore 7
    //   161: aload 6
    //   163: invokevirtual 114	de/a/a/a/a/i:getSize	()J
    //   166: invokestatic 117	com/estrongs/io/archive/aeszip/a:a	(J)I
    //   169: newarray <illegal type>
    //   171: astore 8
    //   173: aload_1
    //   174: aload 8
    //   176: invokevirtual 123	java/io/InputStream:read	([B)I
    //   179: istore_3
    //   180: aload 7
    //   182: astore 6
    //   184: iload_3
    //   185: ifle +29 -> 214
    //   188: aload 7
    //   190: aload 8
    //   192: iconst_0
    //   193: iload_3
    //   194: invokevirtual 127	java/io/OutputStream:write	([BII)V
    //   197: aload_2
    //   198: invokeinterface 93 1 0
    //   203: istore 5
    //   205: iload 5
    //   207: ifeq +39 -> 246
    //   210: aload 7
    //   212: astore 6
    //   214: aload 6
    //   216: ifnull +8 -> 224
    //   219: aload 6
    //   221: invokevirtual 89	java/io/OutputStream:close	()V
    //   224: aload_2
    //   225: invokeinterface 93 1 0
    //   230: ifeq +13 -> 243
    //   233: aload_1
    //   234: ifnull +9 -> 243
    //   237: aload 9
    //   239: invokevirtual 84	java/io/File:delete	()Z
    //   242: pop
    //   243: aload 9
    //   245: areturn
    //   246: aload_0
    //   247: aload_0
    //   248: getfield 130	com/estrongs/io/archive/aeszip/h:a	J
    //   251: iload_3
    //   252: i2l
    //   253: ladd
    //   254: putfield 130	com/estrongs/io/archive/aeszip/h:a	J
    //   257: aload_2
    //   258: aload_0
    //   259: getfield 130	com/estrongs/io/archive/aeszip/h:a	J
    //   262: invokeinterface 133 3 0
    //   267: goto -94 -> 173
    //   270: astore 8
    //   272: aload 7
    //   274: astore 6
    //   276: aload 8
    //   278: astore 7
    //   280: goto -212 -> 68
    //   283: astore 6
    //   285: aconst_null
    //   286: astore_1
    //   287: aconst_null
    //   288: astore 7
    //   290: goto -198 -> 92
    //   293: astore 6
    //   295: aconst_null
    //   296: astore 7
    //   298: goto -206 -> 92
    //   301: astore 6
    //   303: goto -211 -> 92
    //   306: astore 7
    //   308: aconst_null
    //   309: astore 6
    //   311: goto -243 -> 68
    //   314: aconst_null
    //   315: astore 6
    //   317: goto -103 -> 214
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	320	0	this	h
    //   0	320	1	paramArchiveEntryFile	ArchiveEntryFile
    //   0	320	2	paramb	com.estrongs.io.a.b
    //   179	73	3	j	int
    //   9	60	4	bool1	boolean
    //   203	3	5	bool2	boolean
    //   33	242	6	localObject1	Object
    //   283	1	6	localObject2	Object
    //   293	1	6	localObject3	Object
    //   301	1	6	localObject4	Object
    //   309	7	6	localObject5	Object
    //   61	19	7	localIOException1	java.io.IOException
    //   86	211	7	localObject6	Object
    //   306	1	7	localIOException2	java.io.IOException
    //   82	7	8	localObject7	Object
    //   171	20	8	arrayOfByte	byte[]
    //   270	7	8	localIOException3	java.io.IOException
    //   17	227	9	localFile	File
    // Exception table:
    //   from	to	target	type
    //   35	46	61	java/io/IOException
    //   51	61	61	java/io/IOException
    //   124	138	61	java/io/IOException
    //   73	79	82	finally
    //   79	82	82	finally
    //   161	173	270	java/io/IOException
    //   173	180	270	java/io/IOException
    //   188	205	270	java/io/IOException
    //   246	267	270	java/io/IOException
    //   35	46	283	finally
    //   51	61	283	finally
    //   124	138	283	finally
    //   142	161	293	finally
    //   161	173	301	finally
    //   173	180	301	finally
    //   188	205	301	finally
    //   246	267	301	finally
    //   142	161	306	java/io/IOException
  }
  
  protected Iterator<ArchiveEntryFile> i()
  {
    return new j(this);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.aeszip.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */