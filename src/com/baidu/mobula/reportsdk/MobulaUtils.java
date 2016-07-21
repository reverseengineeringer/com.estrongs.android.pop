package com.baidu.mobula.reportsdk;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

public class MobulaUtils
{
  public static final String TAG = "MobulaReport";
  private static String sLc = "";
  
  public static String bytesToHexString(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuilder.toString();
      }
      String str = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      if (str.length() == 1) {
        localStringBuilder.append('0');
      }
      localStringBuilder.append(str);
      i += 1;
    }
  }
  
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable == null) {
      return;
    }
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static String getLC()
  {
    return sLc;
  }
  
  public static void setLC(String paramString)
  {
    sLc = paramString;
  }
  
  public static byte[] zip(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return new byte[0];
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    localGZIPOutputStream.write(paramString.getBytes("UTF-8"));
    localGZIPOutputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobula.reportsdk.MobulaUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */