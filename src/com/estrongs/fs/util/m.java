package com.estrongs.fs.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;

public class m
{
  public static final char a = File.separatorChar;
  public static final String b;
  
  static
  {
    StringWriter localStringWriter = new StringWriter(4);
    new PrintWriter(localStringWriter).println();
    b = localStringWriter.toString();
  }
  
  public static int a(Reader paramReader, Writer paramWriter)
  {
    long l = b(paramReader, paramWriter);
    if (l > 2147483647L) {
      return -1;
    }
    return (int)l;
  }
  
  public static String a(InputStream paramInputStream, String paramString)
  {
    StringWriter localStringWriter = new StringWriter();
    a(paramInputStream, localStringWriter, paramString);
    return localStringWriter.toString();
  }
  
  public static void a(InputStream paramInputStream)
  {
    if (paramInputStream != null) {}
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException paramInputStream) {}
  }
  
  public static void a(InputStream paramInputStream, Writer paramWriter)
  {
    a(new InputStreamReader(paramInputStream), paramWriter);
  }
  
  public static void a(InputStream paramInputStream, Writer paramWriter, String paramString)
  {
    if (paramString == null)
    {
      a(paramInputStream, paramWriter);
      return;
    }
    a(new InputStreamReader(paramInputStream, paramString), paramWriter);
  }
  
  public static void a(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null) {}
    try
    {
      paramOutputStream.close();
      return;
    }
    catch (IOException paramOutputStream) {}
  }
  
  public static void a(String paramString, OutputStream paramOutputStream)
  {
    if (paramString != null) {
      paramOutputStream.write(paramString.getBytes());
    }
  }
  
  public static void a(String paramString1, OutputStream paramOutputStream, String paramString2)
  {
    if (paramString1 != null)
    {
      if (paramString2 == null) {
        a(paramString1, paramOutputStream);
      }
    }
    else {
      return;
    }
    paramOutputStream.write(paramString1.getBytes(paramString2));
  }
  
  public static long b(Reader paramReader, Writer paramWriter)
  {
    char[] arrayOfChar = new char['က'];
    int i;
    for (long l = 0L;; l += i)
    {
      i = paramReader.read(arrayOfChar);
      if (-1 == i) {
        break;
      }
      paramWriter.write(arrayOfChar, 0, i);
    }
    return l;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */