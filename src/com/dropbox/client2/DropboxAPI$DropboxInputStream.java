package com.dropbox.client2;

import com.dropbox.client2.exception.DropboxException;
import com.dropbox.client2.exception.DropboxIOException;
import java.io.FilterInputStream;
import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;

public class DropboxAPI$DropboxInputStream
  extends FilterInputStream
{
  private final DropboxAPI.DropboxFileInfo info;
  private final HttpUriRequest request;
  
  public DropboxAPI$DropboxInputStream(HttpUriRequest paramHttpUriRequest, HttpResponse paramHttpResponse)
  {
    super(null);
    HttpEntity localHttpEntity = paramHttpResponse.getEntity();
    if (localHttpEntity == null) {
      throw new DropboxException("Didn't get entity from HttpResponse");
    }
    try
    {
      in = localHttpEntity.getContent();
      request = paramHttpUriRequest;
      info = new DropboxAPI.DropboxFileInfo(paramHttpResponse, null);
      return;
    }
    catch (IOException paramHttpUriRequest)
    {
      throw new DropboxIOException(paramHttpUriRequest);
    }
  }
  
  public void close()
  {
    request.abort();
  }
  
  /* Error */
  public void copyStreamToOutput(java.io.OutputStream paramOutputStream, ProgressListener paramProgressListener)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore 6
    //   3: aload_0
    //   4: getfield 47	com/dropbox/client2/DropboxAPI$DropboxInputStream:info	Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    //   7: invokevirtual 68	com/dropbox/client2/DropboxAPI$DropboxFileInfo:getFileSize	()J
    //   10: lstore 14
    //   12: new 70	java/io/BufferedOutputStream
    //   15: dup
    //   16: aload_1
    //   17: invokespecial 73	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   20: astore 17
    //   22: lload 6
    //   24: lstore 4
    //   26: aload 17
    //   28: astore 16
    //   30: sipush 4096
    //   33: newarray <illegal type>
    //   35: astore 18
    //   37: lconst_0
    //   38: lstore 8
    //   40: lload 6
    //   42: lstore 4
    //   44: aload 17
    //   46: astore 16
    //   48: aload_0
    //   49: aload 18
    //   51: invokevirtual 77	com/dropbox/client2/DropboxAPI$DropboxInputStream:read	([B)I
    //   54: istore_3
    //   55: iload_3
    //   56: ifge +109 -> 165
    //   59: lload 14
    //   61: lconst_0
    //   62: lcmp
    //   63: iflt +199 -> 262
    //   66: lload 6
    //   68: lload 14
    //   70: lcmp
    //   71: ifge +191 -> 262
    //   74: lload 6
    //   76: lstore 4
    //   78: aload 17
    //   80: astore 16
    //   82: new 79	com/dropbox/client2/exception/DropboxPartialFileException
    //   85: dup
    //   86: lload 6
    //   88: invokespecial 82	com/dropbox/client2/exception/DropboxPartialFileException:<init>	(J)V
    //   91: athrow
    //   92: astore 16
    //   94: aload 17
    //   96: astore_2
    //   97: aload 16
    //   99: astore 17
    //   101: aload_2
    //   102: astore 16
    //   104: aload 17
    //   106: invokevirtual 86	java/io/IOException:getMessage	()Ljava/lang/String;
    //   109: astore 17
    //   111: aload 17
    //   113: ifnull +230 -> 343
    //   116: aload_2
    //   117: astore 16
    //   119: aload 17
    //   121: ldc 88
    //   123: invokevirtual 94	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   126: ifeq +217 -> 343
    //   129: aload_2
    //   130: astore 16
    //   132: new 96	com/dropbox/client2/exception/DropboxLocalStorageFullException
    //   135: dup
    //   136: invokespecial 98	com/dropbox/client2/exception/DropboxLocalStorageFullException:<init>	()V
    //   139: athrow
    //   140: astore_2
    //   141: aload 16
    //   143: ifnull +8 -> 151
    //   146: aload 16
    //   148: invokevirtual 100	java/io/BufferedOutputStream:close	()V
    //   151: aload_1
    //   152: ifnull +7 -> 159
    //   155: aload_1
    //   156: invokevirtual 103	java/io/OutputStream:close	()V
    //   159: aload_0
    //   160: invokevirtual 104	com/dropbox/client2/DropboxAPI$DropboxInputStream:close	()V
    //   163: aload_2
    //   164: athrow
    //   165: lload 6
    //   167: lstore 4
    //   169: aload 17
    //   171: astore 16
    //   173: aload 17
    //   175: aload 18
    //   177: iconst_0
    //   178: iload_3
    //   179: invokevirtual 108	java/io/BufferedOutputStream:write	([BII)V
    //   182: lload 6
    //   184: iload_3
    //   185: i2l
    //   186: ladd
    //   187: lstore 10
    //   189: lload 10
    //   191: lstore 6
    //   193: aload_2
    //   194: ifnull -154 -> 40
    //   197: lload 10
    //   199: lstore 4
    //   201: aload 17
    //   203: astore 16
    //   205: invokestatic 113	java/lang/System:currentTimeMillis	()J
    //   208: lstore 12
    //   210: lload 10
    //   212: lstore 6
    //   214: lload 10
    //   216: lstore 4
    //   218: aload 17
    //   220: astore 16
    //   222: lload 12
    //   224: lload 8
    //   226: lsub
    //   227: aload_2
    //   228: invokevirtual 118	com/dropbox/client2/ProgressListener:progressInterval	()J
    //   231: lcmp
    //   232: ifle -192 -> 40
    //   235: lload 10
    //   237: lstore 4
    //   239: aload 17
    //   241: astore 16
    //   243: aload_2
    //   244: lload 10
    //   246: lload 14
    //   248: invokevirtual 122	com/dropbox/client2/ProgressListener:onProgress	(JJ)V
    //   251: lload 12
    //   253: lstore 8
    //   255: lload 10
    //   257: lstore 6
    //   259: goto -219 -> 40
    //   262: lload 6
    //   264: lstore 4
    //   266: aload 17
    //   268: astore 16
    //   270: aload 17
    //   272: invokevirtual 125	java/io/BufferedOutputStream:flush	()V
    //   275: lload 6
    //   277: lstore 4
    //   279: aload 17
    //   281: astore 16
    //   283: aload_1
    //   284: invokevirtual 126	java/io/OutputStream:flush	()V
    //   287: lload 6
    //   289: lstore 4
    //   291: aload 17
    //   293: astore 16
    //   295: aload_1
    //   296: instanceof 128
    //   299: ifeq +21 -> 320
    //   302: lload 6
    //   304: lstore 4
    //   306: aload 17
    //   308: astore 16
    //   310: aload_1
    //   311: checkcast 128	java/io/FileOutputStream
    //   314: invokevirtual 132	java/io/FileOutputStream:getFD	()Ljava/io/FileDescriptor;
    //   317: invokevirtual 137	java/io/FileDescriptor:sync	()V
    //   320: aload 17
    //   322: ifnull +8 -> 330
    //   325: aload 17
    //   327: invokevirtual 100	java/io/BufferedOutputStream:close	()V
    //   330: aload_1
    //   331: ifnull +7 -> 338
    //   334: aload_1
    //   335: invokevirtual 103	java/io/OutputStream:close	()V
    //   338: aload_0
    //   339: invokevirtual 104	com/dropbox/client2/DropboxAPI$DropboxInputStream:close	()V
    //   342: return
    //   343: aload_2
    //   344: astore 16
    //   346: new 79	com/dropbox/client2/exception/DropboxPartialFileException
    //   349: dup
    //   350: lload 4
    //   352: invokespecial 82	com/dropbox/client2/exception/DropboxPartialFileException:<init>	(J)V
    //   355: athrow
    //   356: astore 16
    //   358: goto -207 -> 151
    //   361: astore_1
    //   362: goto -203 -> 159
    //   365: astore_1
    //   366: goto -203 -> 163
    //   369: astore_2
    //   370: goto -40 -> 330
    //   373: astore_1
    //   374: goto -36 -> 338
    //   377: astore_1
    //   378: return
    //   379: astore_2
    //   380: aconst_null
    //   381: astore 16
    //   383: goto -242 -> 141
    //   386: astore 17
    //   388: aconst_null
    //   389: astore_2
    //   390: lload 6
    //   392: lstore 4
    //   394: goto -293 -> 101
    //   397: astore_2
    //   398: goto -78 -> 320
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	401	0	this	DropboxInputStream
    //   0	401	1	paramOutputStream	java.io.OutputStream
    //   0	401	2	paramProgressListener	ProgressListener
    //   54	131	3	i	int
    //   24	369	4	l1	long
    //   1	390	6	l2	long
    //   38	216	8	l3	long
    //   187	69	10	l4	long
    //   208	44	12	l5	long
    //   10	237	14	l6	long
    //   28	53	16	localObject1	Object
    //   92	6	16	localIOException1	IOException
    //   102	243	16	localObject2	Object
    //   356	1	16	localIOException2	IOException
    //   381	1	16	localObject3	Object
    //   20	306	17	localObject4	Object
    //   386	1	17	localIOException3	IOException
    //   35	141	18	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   30	37	92	java/io/IOException
    //   48	55	92	java/io/IOException
    //   82	92	92	java/io/IOException
    //   173	182	92	java/io/IOException
    //   205	210	92	java/io/IOException
    //   222	235	92	java/io/IOException
    //   243	251	92	java/io/IOException
    //   270	275	92	java/io/IOException
    //   283	287	92	java/io/IOException
    //   295	302	92	java/io/IOException
    //   310	320	92	java/io/IOException
    //   30	37	140	finally
    //   48	55	140	finally
    //   82	92	140	finally
    //   104	111	140	finally
    //   119	129	140	finally
    //   132	140	140	finally
    //   173	182	140	finally
    //   205	210	140	finally
    //   222	235	140	finally
    //   243	251	140	finally
    //   270	275	140	finally
    //   283	287	140	finally
    //   295	302	140	finally
    //   310	320	140	finally
    //   346	356	140	finally
    //   146	151	356	java/io/IOException
    //   155	159	361	java/io/IOException
    //   159	163	365	java/io/IOException
    //   325	330	369	java/io/IOException
    //   334	338	373	java/io/IOException
    //   338	342	377	java/io/IOException
    //   12	22	379	finally
    //   12	22	386	java/io/IOException
    //   295	302	397	java/io/SyncFailedException
    //   310	320	397	java/io/SyncFailedException
  }
  
  public DropboxAPI.DropboxFileInfo getFileInfo()
  {
    return info;
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.DropboxInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */