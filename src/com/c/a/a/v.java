package com.c.a.a;

import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;

abstract class v
{
  static byte a(int paramInt)
  {
    return (byte)(paramInt >> 8 & 0xFF);
  }
  
  static int a(byte paramByte1, byte paramByte2)
  {
    return (paramByte1 << 8 & 0xFF00) + (paramByte2 & 0xFF);
  }
  
  public static String a(byte paramByte)
  {
    return c(paramByte & 0xFF);
  }
  
  static String a(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      localStringBuffer.append((char)a(paramArrayOfByte[i], paramArrayOfByte[(i + 1)]));
      i += 2;
    }
    return localStringBuffer.toString();
  }
  
  static void a(InputStream paramInputStream, i parami, byte[] paramArrayOfByte)
  {
    a(paramInputStream, parami, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  static void a(InputStream paramInputStream, i parami, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 < 0) {
      throw new IndexOutOfBoundsException();
    }
    int i = 0;
    int j;
    do
    {
      long l1;
      long l2;
      if (a)
      {
        l1 = System.currentTimeMillis();
        l2 = b;
      }
      for (;;)
      {
        j = paramInputStream.available();
        if (j == 0) {
          if (System.currentTimeMillis() > l1 + l2) {
            throw new InterruptedIOException("OBEX read timeout");
          }
        }
        try
        {
          Thread.sleep(100L);
          if (j != 0)
          {
            j = paramInputStream.read(paramArrayOfByte, paramInt1 + i, paramInt2 - i);
            if (j < 0) {
              throw new EOFException("EOF while reading OBEX packet");
            }
          }
        }
        catch (InterruptedException paramInputStream)
        {
          throw new InterruptedIOException();
        }
      }
      j = i + j;
      i = j;
    } while (j < paramInt2);
  }
  
  static byte[] a(String paramString)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int j = paramString.length();
    int i = 0;
    while (i < j)
    {
      int k = paramString.charAt(i);
      localByteArrayOutputStream.write(a(k));
      localByteArrayOutputStream.write(b(k));
      i += 1;
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  static byte b(int paramInt)
  {
    return (byte)(paramInt & 0xFF);
  }
  
  static String b(byte[] paramArrayOfByte)
  {
    try
    {
      String str = new String(paramArrayOfByte, "UTF-16BE");
      return str;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return a(paramArrayOfByte);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return a(paramArrayOfByte);
  }
  
  static byte[] b(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-16BE");
      return arrayOfByte;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return a(paramString);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return a(paramString);
  }
  
  public static String c(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "Unknown 0x" + Integer.toHexString(paramInt);
    case 128: 
      return "CONNECT";
    case 129: 
      return "DISCONNECT";
    case 255: 
      return "ABORT";
    case 7: 
      return "SESSION";
    case 135: 
      return "SESSION FINAL";
    case 2: 
      return "PUT";
    case 130: 
      return "PUT FINAL";
    case 3: 
      return "GET";
    case 131: 
      return "GET FINAL";
    case 5: 
      return "SETPATH";
    case 133: 
      return "SETPATH FINAL";
    case 144: 
      return "OBEX_RESPONSE_CONTINUE";
    case 160: 
      return "OBEX_HTTP_OK";
    case 161: 
      return "OBEX_HTTP_CREATED";
    case 162: 
      return "OBEX_HTTP_ACCEPTED";
    case 163: 
      return "OBEX_HTTP_NOT_AUTHORITATIVE";
    case 164: 
      return "OBEX_HTTP_NO_CONTENT";
    case 165: 
      return "OBEX_HTTP_RESET";
    case 166: 
      return "OBEX_HTTP_PARTIAL";
    case 176: 
      return "OBEX_HTTP_MULT_CHOICE";
    case 177: 
      return "OBEX_HTTP_MOVED_PERM";
    case 178: 
      return "OBEX_HTTP_MOVED_TEMP";
    case 179: 
      return "OBEX_HTTP_SEE_OTHER";
    case 180: 
      return "OBEX_HTTP_NOT_MODIFIED";
    case 181: 
      return "OBEX_HTTP_USE_PROXY";
    case 192: 
      return "OBEX_HTTP_BAD_REQUEST";
    case 193: 
      return "OBEX_HTTP_UNAUTHORIZED";
    case 194: 
      return "OBEX_HTTP_PAYMENT_REQUIRED";
    case 195: 
      return "OBEX_HTTP_FORBIDDEN";
    case 196: 
      return "OBEX_HTTP_NOT_FOUND";
    case 197: 
      return "OBEX_HTTP_BAD_METHOD";
    case 198: 
      return "OBEX_HTTP_NOT_ACCEPTABLE";
    case 199: 
      return "OBEX_HTTP_PROXY_AUTH";
    case 200: 
      return "OBEX_HTTP_TIMEOUT";
    case 201: 
      return "OBEX_HTTP_CONFLICT";
    case 202: 
      return "OBEX_HTTP_GONE";
    case 203: 
      return "OBEX_HTTP_LENGTH_REQUIRED";
    case 204: 
      return "OBEX_HTTP_PRECON_FAILED";
    case 205: 
      return "OBEX_HTTP_ENTITY_TOO_LARGE";
    case 206: 
      return "OBEX_HTTP_REQ_TOO_LARGE";
    case 207: 
      return "OBEX_HTTP_UNSUPPORTED_TYPE";
    case 208: 
      return "OBEX_HTTP_INTERNAL_ERROR";
    case 209: 
      return "OBEX_HTTP_NOT_IMPLEMENTED";
    case 210: 
      return "OBEX_HTTP_BAD_GATEWAY";
    case 211: 
      return "OBEX_HTTP_UNAVAILABLE";
    case 212: 
      return "OBEX_HTTP_GATEWAY_TIMEOUT";
    case 213: 
      return "OBEX_HTTP_VERSION";
    case 224: 
      return "OBEX_DATABASE_FULL";
    }
    return "OBEX_DATABASE_LOCKED";
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */