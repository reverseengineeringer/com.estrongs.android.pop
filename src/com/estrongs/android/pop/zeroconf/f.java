package com.estrongs.android.pop.zeroconf;

import com.estrongs.android.pop.zeroconf.constants.DNSRecordClass;
import com.estrongs.android.pop.zeroconf.constants.DNSRecordType;
import java.io.ByteArrayOutputStream;
import java.util.Map;

public class f
  extends ByteArrayOutputStream
{
  private final e a;
  private final int b;
  
  f(int paramInt, e parame)
  {
    this(paramInt, parame, 0);
  }
  
  f(int paramInt1, e parame, int paramInt2)
  {
    super(paramInt1);
    a = parame;
    b = paramInt2;
  }
  
  void a(int paramInt)
  {
    write(paramInt & 0xFF);
  }
  
  void a(g paramg)
  {
    a(paramg.a());
    b(paramg.c().indexValue());
    b(paramg.d().indexValue());
  }
  
  void a(n paramn, long paramLong)
  {
    a(paramn.a());
    b(paramn.c().indexValue());
    int j = paramn.d().indexValue();
    if ((paramn.e()) && (a.c()))
    {
      i = 32768;
      b(i | j);
      if (paramLong != 0L) {
        break label136;
      }
    }
    label136:
    for (int i = paramn.f();; i = paramn.a(paramLong))
    {
      c(i);
      f localf = new f(512, a, b + size() + 2);
      paramn.a(localf);
      paramn = localf.toByteArray();
      b(paramn.length);
      write(paramn, 0, paramn.length);
      return;
      i = 0;
      break;
    }
  }
  
  void a(String paramString)
  {
    a(paramString, true);
  }
  
  void a(String paramString, int paramInt1, int paramInt2)
  {
    int j = 0;
    int i = 0;
    if (j < paramInt2)
    {
      int k = paramString.charAt(paramInt1 + j);
      if ((k >= 1) && (k <= 127)) {
        i += 1;
      }
      for (;;)
      {
        j += 1;
        break;
        if (k > 2047) {
          i += 3;
        } else {
          i += 2;
        }
      }
    }
    a(i);
    i = 0;
    if (i < paramInt2)
    {
      j = paramString.charAt(paramInt1 + i);
      if ((j >= 1) && (j <= 127)) {
        a(j);
      }
      for (;;)
      {
        i += 1;
        break;
        if (j > 2047)
        {
          a(j >> 12 & 0xF | 0xE0);
          a(j >> 6 & 0x3F | 0x80);
          a(j >> 0 & 0x3F | 0x80);
        }
        else
        {
          a(j >> 6 & 0x1F | 0xC0);
          a(j >> 0 & 0x3F | 0x80);
        }
      }
    }
  }
  
  void a(String paramString, boolean paramBoolean)
  {
    int i = paramString.indexOf('.');
    if (i < 0) {
      i = paramString.length();
    }
    for (;;)
    {
      if (i <= 0)
      {
        a(0);
        return;
      }
      String str = paramString.substring(0, i);
      if ((paramBoolean) && (e.f))
      {
        Integer localInteger = (Integer)a.g.get(paramString);
        if (localInteger != null)
        {
          i = localInteger.intValue();
          a(i >> 8 | 0xC0);
          a(i & 0xFF);
          return;
        }
        a.g.put(paramString, Integer.valueOf(size() + b));
        a(str, 0, str.length());
      }
      for (;;)
      {
        str = paramString.substring(i);
        paramString = str;
        if (!str.startsWith(".")) {
          break;
        }
        paramString = str.substring(1);
        break;
        a(str, 0, str.length());
      }
    }
  }
  
  void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    while (i < paramInt2)
    {
      a(paramArrayOfByte[(paramInt1 + i)]);
      i += 1;
    }
  }
  
  void b(int paramInt)
  {
    a(paramInt >> 8);
    a(paramInt);
  }
  
  void c(int paramInt)
  {
    b(paramInt >> 16);
    b(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.zeroconf.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */