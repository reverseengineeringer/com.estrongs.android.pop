package org.apache.commons.net.io;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.net.Socket;

public final class Util
{
  public static final int DEFAULT_COPY_BUFFER_SIZE = 1024;
  
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  public static void closeQuietly(Socket paramSocket)
  {
    if (paramSocket != null) {}
    try
    {
      paramSocket.close();
      return;
    }
    catch (IOException paramSocket) {}
  }
  
  public static final long copyReader(Reader paramReader, Writer paramWriter)
  {
    return copyReader(paramReader, paramWriter, 1024);
  }
  
  public static final long copyReader(Reader paramReader, Writer paramWriter, int paramInt)
  {
    return copyReader(paramReader, paramWriter, paramInt, -1L, null);
  }
  
  public static final long copyReader(Reader paramReader, Writer paramWriter, int paramInt, long paramLong, CopyStreamListener paramCopyStreamListener)
  {
    char[] arrayOfChar = new char[paramInt];
    long l1 = 0L;
    for (;;)
    {
      long l2 = l1;
      try
      {
        paramInt = paramReader.read(arrayOfChar);
        if (paramInt == -1) {
          return l1;
        }
        if (paramInt == 0)
        {
          l2 = l1;
          paramInt = paramReader.read();
          if (paramInt < 0) {
            break;
          }
          l2 = l1;
          paramWriter.write(paramInt);
          l2 = l1;
          paramWriter.flush();
          l3 = l1 + 1L;
          l1 = l3;
          if (paramCopyStreamListener == null) {
            continue;
          }
          l2 = l3;
          paramCopyStreamListener.bytesTransferred(l3, paramInt, paramLong);
          l1 = l3;
        }
      }
      catch (IOException paramReader)
      {
        throw new CopyStreamException("IOException caught while copying.", l2, paramReader);
      }
      l2 = l1;
      paramWriter.write(arrayOfChar, 0, paramInt);
      l2 = l1;
      paramWriter.flush();
      long l3 = l1 + paramInt;
      l1 = l3;
      if (paramCopyStreamListener != null)
      {
        l2 = l3;
        paramCopyStreamListener.bytesTransferred(l3, paramInt, paramLong);
        l1 = l3;
      }
    }
    return l1;
  }
  
  public static final long copyStream(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    return copyStream(paramInputStream, paramOutputStream, 1024);
  }
  
  public static final long copyStream(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt)
  {
    return copyStream(paramInputStream, paramOutputStream, paramInt, -1L, null);
  }
  
  public static final long copyStream(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt, long paramLong, CopyStreamListener paramCopyStreamListener)
  {
    return copyStream(paramInputStream, paramOutputStream, paramInt, paramLong, paramCopyStreamListener, true);
  }
  
  public static final long copyStream(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt, long paramLong, CopyStreamListener paramCopyStreamListener, boolean paramBoolean)
  {
    byte[] arrayOfByte = new byte[paramInt];
    long l1 = 0L;
    for (;;)
    {
      long l2 = l1;
      try
      {
        paramInt = paramInputStream.read(arrayOfByte);
        if (paramInt == -1) {
          return l1;
        }
        if (paramInt == 0)
        {
          l2 = l1;
          paramInt = paramInputStream.read();
          if (paramInt < 0) {
            break;
          }
          l2 = l1;
          paramOutputStream.write(paramInt);
          if (paramBoolean)
          {
            l2 = l1;
            paramOutputStream.flush();
          }
          l3 = l1 + 1L;
          l1 = l3;
          if (paramCopyStreamListener == null) {
            continue;
          }
          l2 = l3;
          paramCopyStreamListener.bytesTransferred(l3, 1, paramLong);
          l1 = l3;
        }
      }
      catch (IOException paramInputStream)
      {
        throw new CopyStreamException("IOException caught while copying.", l2, paramInputStream);
      }
      l2 = l1;
      paramOutputStream.write(arrayOfByte, 0, paramInt);
      if (paramBoolean)
      {
        l2 = l1;
        paramOutputStream.flush();
      }
      long l3 = l1 + paramInt;
      l1 = l3;
      if (paramCopyStreamListener != null)
      {
        l2 = l3;
        paramCopyStreamListener.bytesTransferred(l3, paramInt, paramLong);
        l1 = l3;
      }
    }
    return l1;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */