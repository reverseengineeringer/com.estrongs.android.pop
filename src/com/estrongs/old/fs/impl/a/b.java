package com.estrongs.old.fs.impl.a;

import java.io.BufferedInputStream;
import java.io.InputStream;
import org.apache.commons.net.ftp.FTPClient;

public class b
  extends BufferedInputStream
{
  public FTPClient a;
  
  public b(InputStream paramInputStream, FTPClient paramFTPClient)
  {
    super(paramInputStream, 8192);
    a = paramFTPClient;
  }
  
  /* Error */
  public void close()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: invokespecial 20	java/io/BufferedInputStream:close	()V
    //   6: aload_0
    //   7: getfield 13	com/estrongs/old/fs/impl/a/b:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   10: ifnull +51 -> 61
    //   13: aload_0
    //   14: getfield 13	com/estrongs/old/fs/impl/a/b:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   17: invokevirtual 26	org/apache/commons/net/ftp/FTPClient:completePendingCommand	()Z
    //   20: pop
    //   21: aload_0
    //   22: getfield 13	com/estrongs/old/fs/impl/a/b:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   25: invokevirtual 29	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   28: pop
    //   29: iload_1
    //   30: ifeq +24 -> 54
    //   33: aload_0
    //   34: getfield 13	com/estrongs/old/fs/impl/a/b:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   37: instanceof 31
    //   40: ifeq +14 -> 54
    //   43: aload_0
    //   44: getfield 13	com/estrongs/old/fs/impl/a/b:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   47: checkcast 31	com/estrongs/old/fs/impl/a/d
    //   50: iconst_1
    //   51: putfield 34	com/estrongs/old/fs/impl/a/d:a	Z
    //   54: aload_0
    //   55: getfield 13	com/estrongs/old/fs/impl/a/b:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   58: invokevirtual 37	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   61: return
    //   62: astore_2
    //   63: aload_2
    //   64: athrow
    //   65: astore_2
    //   66: iconst_1
    //   67: istore_1
    //   68: aload_0
    //   69: getfield 13	com/estrongs/old/fs/impl/a/b:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   72: ifnull +51 -> 123
    //   75: aload_0
    //   76: getfield 13	com/estrongs/old/fs/impl/a/b:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   79: invokevirtual 26	org/apache/commons/net/ftp/FTPClient:completePendingCommand	()Z
    //   82: pop
    //   83: aload_0
    //   84: getfield 13	com/estrongs/old/fs/impl/a/b:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   87: invokevirtual 29	org/apache/commons/net/ftp/FTPClient:logout	()Z
    //   90: pop
    //   91: iload_1
    //   92: ifeq +24 -> 116
    //   95: aload_0
    //   96: getfield 13	com/estrongs/old/fs/impl/a/b:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   99: instanceof 31
    //   102: ifeq +14 -> 116
    //   105: aload_0
    //   106: getfield 13	com/estrongs/old/fs/impl/a/b:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   109: checkcast 31	com/estrongs/old/fs/impl/a/d
    //   112: iconst_1
    //   113: putfield 34	com/estrongs/old/fs/impl/a/d:a	Z
    //   116: aload_0
    //   117: getfield 13	com/estrongs/old/fs/impl/a/b:a	Lorg/apache/commons/net/ftp/FTPClient;
    //   120: invokevirtual 37	org/apache/commons/net/ftp/FTPClient:disconnect	()V
    //   123: aload_2
    //   124: athrow
    //   125: astore_3
    //   126: iconst_1
    //   127: istore_1
    //   128: goto -37 -> 91
    //   131: astore_2
    //   132: iconst_1
    //   133: istore_1
    //   134: goto -105 -> 29
    //   137: astore_2
    //   138: return
    //   139: astore_3
    //   140: goto -17 -> 123
    //   143: astore_2
    //   144: iconst_0
    //   145: istore_1
    //   146: goto -78 -> 68
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	149	0	this	b
    //   1	145	1	i	int
    //   62	2	2	localIOException1	java.io.IOException
    //   65	59	2	localObject1	Object
    //   131	1	2	localIOException2	java.io.IOException
    //   137	1	2	localIOException3	java.io.IOException
    //   143	1	2	localObject2	Object
    //   125	1	3	localIOException4	java.io.IOException
    //   139	1	3	localIOException5	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   2	6	62	java/io/IOException
    //   63	65	65	finally
    //   75	91	125	java/io/IOException
    //   13	29	131	java/io/IOException
    //   54	61	137	java/io/IOException
    //   116	123	139	java/io/IOException
    //   2	6	143	finally
  }
}

/* Location:
 * Qualified Name:     com.estrongs.old.fs.impl.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */