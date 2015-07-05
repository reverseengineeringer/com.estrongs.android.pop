package com.estrongs.android.pop.app.editor;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

public class b
  extends Reader
{
  private a a;
  private boolean b = false;
  private CharsetDecoder c;
  private final ByteBuffer d = ByteBuffer.allocate(8192);
  
  public b(Context paramContext, File paramFile, String paramString)
  {
    super(paramFile);
    if (paramString == null) {
      throw new NullPointerException();
    }
    try
    {
      a = a.a(paramContext, paramFile, "r");
      c = Charset.forName(paramString).newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
      d.limit(0);
      return;
    }
    catch (IllegalArgumentException paramContext)
    {
      throw ((UnsupportedEncodingException)new UnsupportedEncodingException(paramString).initCause(paramContext));
    }
  }
  
  private boolean c()
  {
    return a != null;
  }
  
  public String a()
  {
    if (!c()) {
      return null;
    }
    return c.charset().name();
  }
  
  public void a(long paramLong)
  {
    synchronized (lock)
    {
      if (a == null) {
        throw new IOException("InputStreamReader is closed");
      }
    }
    a.a(paramLong);
    d.clear();
    d.limit(0);
  }
  
  public long b()
  {
    synchronized (lock)
    {
      if (a == null) {
        throw new IOException("InputStreamReader is closed");
      }
    }
    long l1 = a.a();
    long l2 = d.limit() - d.position();
    return l1 - l2;
  }
  
  public void close()
  {
    synchronized (lock)
    {
      if (c != null) {
        c.reset();
      }
      c = null;
      if (a != null)
      {
        a.c();
        a = null;
      }
      return;
    }
  }
  
  public int read()
  {
    int i = -1;
    synchronized (lock)
    {
      if (!c()) {
        throw new IOException("InputStreamReader is closed");
      }
    }
    char[] arrayOfChar = new char[1];
    if (read(arrayOfChar, 0, 1) != -1) {
      i = arrayOfChar[0];
    }
    return i;
  }
  
  public int read(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = 0;
    synchronized (lock)
    {
      if (!c()) {
        throw new IOException("InputStreamReader is closed");
      }
    }
    if (paramInt2 == 0) {
      return 0;
    }
    CharBuffer localCharBuffer = CharBuffer.wrap(paramArrayOfChar, paramInt1, paramInt2);
    Object localObject1 = CoderResult.UNDERFLOW;
    paramInt2 = i;
    if (!d.hasRemaining()) {
      paramInt2 = 1;
    }
    for (;;)
    {
      paramArrayOfChar = (char[])localObject1;
      if (localCharBuffer.hasRemaining())
      {
        if (paramInt2 == 0) {
          break label278;
        }
        paramInt2 = d.capacity();
        i = d.limit();
        int j = d.arrayOffset();
        int k = d.limit();
        paramInt2 = a.a(d.array(), j + k, paramInt2 - i);
        if (paramInt2 == -1)
        {
          b = true;
          paramArrayOfChar = (char[])localObject1;
        }
      }
      else
      {
        localObject1 = paramArrayOfChar;
        if (paramArrayOfChar == CoderResult.UNDERFLOW)
        {
          localObject1 = paramArrayOfChar;
          if (b)
          {
            localObject1 = c.decode(d, localCharBuffer, true);
            c.flush(localCharBuffer);
            c.reset();
          }
        }
        if ((((CoderResult)localObject1).isMalformed()) || (((CoderResult)localObject1).isUnmappable())) {
          ((CoderResult)localObject1).throwException();
        }
        if (localCharBuffer.position() - paramInt1 != 0) {
          break label357;
        }
      }
      for (paramInt1 = -1;; paramInt1 = paramInt2 - paramInt1)
      {
        return paramInt1;
        paramArrayOfChar = (char[])localObject1;
        if (paramInt2 == 0) {
          break;
        }
        d.limit(paramInt2 + d.limit());
        label278:
        localObject1 = c.decode(d, localCharBuffer, false);
        paramArrayOfChar = (char[])localObject1;
        if (!((CoderResult)localObject1).isUnderflow()) {
          break;
        }
        if (d.limit() != d.capacity()) {
          break label373;
        }
        d.compact();
        d.limit(d.position());
        d.position(0);
        break label373;
        label357:
        paramInt2 = localCharBuffer.position();
      }
      continue;
      label373:
      paramInt2 = 1;
    }
  }
  
  public boolean ready()
  {
    throw new IOException();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */