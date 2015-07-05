package com.baidu.cloudsdk.common.http;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

class MultipartEntity
  implements HttpEntity
{
  private static final char[] MULTIPART_CHARS = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  private String mBoundary;
  private byte[] mBoundaryLineBytes;
  private boolean mIsSetFirst = false;
  private boolean mIsSetLast = false;
  private ByteArrayOutputStream mOut = new ByteArrayOutputStream();
  
  public MultipartEntity()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Random localRandom = new Random();
    while (i < 30)
    {
      localStringBuilder.append(MULTIPART_CHARS[localRandom.nextInt(MULTIPART_CHARS.length)]);
      i += 1;
    }
    mBoundary = localStringBuilder.toString();
    mBoundaryLineBytes = ("\r\n--" + mBoundary + "\r\n").getBytes();
  }
  
  private void writeBoundaryLine()
  {
    if (!mIsSetFirst)
    {
      mIsSetFirst = true;
      mOut.write(("--" + mBoundary + "\r\n").getBytes());
      return;
    }
    mOut.write(mBoundaryLineBytes);
  }
  
  private void writeLastBoundaryIfNeeds()
  {
    if (!mIsSetLast) {}
    try
    {
      mOut.write(("\r\n--" + mBoundary + "--\r\n").getBytes());
      mIsSetLast = true;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  protected void addPart(String paramString1, String paramString2)
  {
    try
    {
      writeBoundaryLine();
      mOut.write(("Content-Disposition: form-data; name=\"" + paramString1 + "\"\r\n\r\n").getBytes());
      mOut.write(paramString2.getBytes());
      return;
    }
    catch (IOException paramString1)
    {
      paramString1.printStackTrace();
    }
  }
  
  /* Error */
  protected void addPart(String paramString1, String paramString2, InputStream paramInputStream, String paramString3, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 94	com/baidu/cloudsdk/common/http/MultipartEntity:writeBoundaryLine	()V
    //   4: aload_0
    //   5: getfield 38	com/baidu/cloudsdk/common/http/MultipartEntity:mOut	Ljava/io/ByteArrayOutputStream;
    //   8: new 44	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   15: ldc 96
    //   17: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: aload_1
    //   21: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: ldc 101
    //   26: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: aload_2
    //   30: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: ldc 103
    //   35: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokevirtual 73	java/lang/String:getBytes	()[B
    //   44: invokevirtual 82	java/io/ByteArrayOutputStream:write	([B)V
    //   47: aload 4
    //   49: ifnull +81 -> 130
    //   52: aload_0
    //   53: getfield 38	com/baidu/cloudsdk/common/http/MultipartEntity:mOut	Ljava/io/ByteArrayOutputStream;
    //   56: new 44	java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial 45	java/lang/StringBuilder:<init>	()V
    //   63: ldc 105
    //   65: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: aload 4
    //   70: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: ldc 107
    //   75: invokevirtual 67	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokevirtual 73	java/lang/String:getBytes	()[B
    //   84: invokevirtual 82	java/io/ByteArrayOutputStream:write	([B)V
    //   87: sipush 4096
    //   90: newarray <illegal type>
    //   92: astore_1
    //   93: aload_3
    //   94: aload_1
    //   95: invokevirtual 113	java/io/InputStream:read	([B)I
    //   98: istore 6
    //   100: iload 6
    //   102: iconst_m1
    //   103: if_icmpeq +49 -> 152
    //   106: aload_0
    //   107: getfield 38	com/baidu/cloudsdk/common/http/MultipartEntity:mOut	Ljava/io/ByteArrayOutputStream;
    //   110: aload_1
    //   111: iconst_0
    //   112: iload 6
    //   114: invokevirtual 116	java/io/ByteArrayOutputStream:write	([BII)V
    //   117: goto -24 -> 93
    //   120: astore_1
    //   121: aload_1
    //   122: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   125: aload_3
    //   126: invokevirtual 119	java/io/InputStream:close	()V
    //   129: return
    //   130: aload_0
    //   131: getfield 38	com/baidu/cloudsdk/common/http/MultipartEntity:mOut	Ljava/io/ByteArrayOutputStream;
    //   134: ldc 121
    //   136: invokevirtual 73	java/lang/String:getBytes	()[B
    //   139: invokevirtual 82	java/io/ByteArrayOutputStream:write	([B)V
    //   142: goto -55 -> 87
    //   145: astore_1
    //   146: aload_3
    //   147: invokevirtual 119	java/io/InputStream:close	()V
    //   150: aload_1
    //   151: athrow
    //   152: aload_0
    //   153: getfield 38	com/baidu/cloudsdk/common/http/MultipartEntity:mOut	Ljava/io/ByteArrayOutputStream;
    //   156: invokevirtual 124	java/io/ByteArrayOutputStream:flush	()V
    //   159: aload_3
    //   160: invokevirtual 119	java/io/InputStream:close	()V
    //   163: return
    //   164: astore_1
    //   165: aload_1
    //   166: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   169: return
    //   170: astore_1
    //   171: aload_1
    //   172: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   175: return
    //   176: astore_2
    //   177: aload_2
    //   178: invokevirtual 90	java/io/IOException:printStackTrace	()V
    //   181: goto -31 -> 150
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	184	0	this	MultipartEntity
    //   0	184	1	paramString1	String
    //   0	184	2	paramString2	String
    //   0	184	3	paramInputStream	InputStream
    //   0	184	4	paramString3	String
    //   0	184	5	paramBoolean	boolean
    //   98	15	6	i	int
    // Exception table:
    //   from	to	target	type
    //   0	47	120	java/io/IOException
    //   52	87	120	java/io/IOException
    //   87	93	120	java/io/IOException
    //   93	100	120	java/io/IOException
    //   106	117	120	java/io/IOException
    //   130	142	120	java/io/IOException
    //   152	159	120	java/io/IOException
    //   0	47	145	finally
    //   52	87	145	finally
    //   87	93	145	finally
    //   93	100	145	finally
    //   106	117	145	finally
    //   121	125	145	finally
    //   130	142	145	finally
    //   152	159	145	finally
    //   159	163	164	java/io/IOException
    //   125	129	170	java/io/IOException
    //   146	150	176	java/io/IOException
  }
  
  public void consumeContent()
  {
    if (isStreaming()) {
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
    }
  }
  
  public InputStream getContent()
  {
    return new ByteArrayInputStream(mOut.toByteArray());
  }
  
  public Header getContentEncoding()
  {
    return null;
  }
  
  public long getContentLength()
  {
    writeLastBoundaryIfNeeds();
    return mOut.toByteArray().length;
  }
  
  public Header getContentType()
  {
    return new BasicHeader("Content-Type", "multipart/form-data; boundary=" + mBoundary);
  }
  
  public boolean isChunked()
  {
    return false;
  }
  
  public boolean isRepeatable()
  {
    return false;
  }
  
  public boolean isStreaming()
  {
    return false;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    paramOutputStream.write(mOut.toByteArray());
  }
}

/* Location:
 * Qualified Name:     com.baidu.cloudsdk.common.http.MultipartEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */