package org.mozilla.universalchardet;

import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.CharsetProber.ProbingState;

public class UniversalDetector
{
  private UniversalDetector.InputState a;
  private boolean b;
  private boolean c;
  private boolean d;
  private byte e;
  private String f;
  private CharsetProber[] g;
  private CharsetProber h;
  private a i;
  
  public UniversalDetector(a parama)
  {
    i = parama;
    h = null;
    g = new CharsetProber[1];
    int j = 0;
    for (;;)
    {
      if (j >= g.length)
      {
        c();
        return;
      }
      g[j] = null;
      j += 1;
    }
  }
  
  public String a()
  {
    return f;
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int k = 0;
    if (b) {}
    for (;;)
    {
      return;
      if (paramInt2 > 0) {
        d = true;
      }
      int m;
      if (c)
      {
        c = false;
        if (paramInt2 > 3)
        {
          j = paramArrayOfByte[paramInt1];
          m = paramArrayOfByte[(paramInt1 + 1)] & 0xFF;
          int n = paramArrayOfByte[(paramInt1 + 2)] & 0xFF;
          int i1 = paramArrayOfByte[(paramInt1 + 3)] & 0xFF;
          switch (j & 0xFF)
          {
          }
          while (f != null)
          {
            b = true;
            return;
            if ((m == 187) && (n == 191))
            {
              f = b.u;
              continue;
              if ((m == 255) && (n == 0) && (i1 == 0))
              {
                f = b.A;
              }
              else if (m == 255)
              {
                f = b.v;
                continue;
                if ((m == 0) && (n == 254) && (i1 == 255))
                {
                  f = b.x;
                }
                else if ((m == 0) && (n == 255) && (i1 == 254))
                {
                  f = b.B;
                  continue;
                  if ((m == 254) && (n == 0) && (i1 == 0)) {
                    f = b.y;
                  } else if (m == 254) {
                    f = b.w;
                  }
                }
              }
            }
          }
        }
      }
      int j = paramInt1;
      if (j >= paramInt1 + paramInt2)
      {
        if (a == UniversalDetector.InputState.ESC_ASCII)
        {
          if (h.a(paramArrayOfByte, paramInt1, paramInt2) != CharsetProber.ProbingState.FOUND_IT) {
            continue;
          }
          b = true;
          f = h.a();
        }
      }
      else
      {
        m = paramArrayOfByte[j] & 0xFF;
        if (((m & 0x80) != 0) && (m != 160)) {
          if (a != UniversalDetector.InputState.HIGHBYTE)
          {
            a = UniversalDetector.InputState.HIGHBYTE;
            if (h != null) {
              h = null;
            }
            if (g[0] == null) {
              g[0] = new org.mozilla.universalchardet.prober.b();
            }
          }
        }
        for (;;)
        {
          j += 1;
          break;
          if ((a == UniversalDetector.InputState.PURE_ASCII) && ((m == 27) || ((m == 123) && (e == 126)))) {
            a = UniversalDetector.InputState.ESC_ASCII;
          }
          e = paramArrayOfByte[j];
        }
      }
      if (a == UniversalDetector.InputState.HIGHBYTE)
      {
        j = k;
        while (j < g.length)
        {
          if (g[j].a(paramArrayOfByte, paramInt1, paramInt2) == CharsetProber.ProbingState.FOUND_IT)
          {
            b = true;
            f = g[j].a();
            return;
          }
          j += 1;
        }
      }
    }
  }
  
  public void b()
  {
    int j = 0;
    if (!d) {}
    do
    {
      return;
      if (f == null) {
        break;
      }
      b = true;
    } while (i == null);
    i.a(f);
    return;
    if (a == UniversalDetector.InputState.HIGHBYTE)
    {
      float f1 = 0.0F;
      int k = 0;
      for (;;)
      {
        if (j >= g.length)
        {
          if (f1 <= 0.2F) {
            break;
          }
          f = g[k].a();
          if (i == null) {
            break;
          }
          i.a(f);
          return;
        }
        float f3 = g[j].b();
        float f2 = f1;
        if (f3 > f1)
        {
          k = j;
          f2 = f3;
        }
        j += 1;
        f1 = f2;
      }
    }
    UniversalDetector.InputState localInputState = UniversalDetector.InputState.ESC_ASCII;
  }
  
  public void c()
  {
    int k = 0;
    b = false;
    c = true;
    f = null;
    d = false;
    a = UniversalDetector.InputState.PURE_ASCII;
    e = 0;
    int j = k;
    if (h != null)
    {
      h.c();
      j = k;
    }
    for (;;)
    {
      if (j >= g.length) {
        return;
      }
      if (g[j] != null) {
        g[j].c();
      }
      j += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.mozilla.universalchardet.UniversalDetector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */