package org.mozilla.universalchardet.prober;

import java.util.Arrays;
import org.mozilla.universalchardet.prober.b.d;

public class a
  extends CharsetProber
{
  private static final d e = new org.mozilla.universalchardet.prober.b.a();
  private org.mozilla.universalchardet.prober.b.b a = new org.mozilla.universalchardet.prober.b.b(e);
  private CharsetProber.ProbingState b;
  private org.mozilla.universalchardet.prober.a.a c = new org.mozilla.universalchardet.prober.a.a();
  private byte[] d = new byte[2];
  
  public a()
  {
    c();
  }
  
  public String a()
  {
    return org.mozilla.universalchardet.b.g;
  }
  
  public CharsetProber.ProbingState a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + paramInt2;
    paramInt2 = paramInt1;
    if (paramInt2 >= i) {}
    int j;
    for (;;)
    {
      d[0] = paramArrayOfByte[(i - 1)];
      if ((b == CharsetProber.ProbingState.DETECTING) && (c.c()) && (b() > 0.95F)) {
        b = CharsetProber.ProbingState.FOUND_IT;
      }
      return b;
      j = a.a(paramArrayOfByte[paramInt2]);
      if (j == 1)
      {
        b = CharsetProber.ProbingState.NOT_ME;
      }
      else
      {
        if (j != 2) {
          break;
        }
        b = CharsetProber.ProbingState.FOUND_IT;
      }
    }
    if (j == 0)
    {
      j = a.a();
      if (paramInt2 != paramInt1) {
        break label160;
      }
      d[1] = paramArrayOfByte[paramInt1];
      c.a(d, 0, j);
    }
    for (;;)
    {
      paramInt2 += 1;
      break;
      label160:
      c.a(paramArrayOfByte, paramInt2 - 1, j);
    }
  }
  
  public float b()
  {
    return c.a();
  }
  
  public void c()
  {
    a.b();
    b = CharsetProber.ProbingState.DETECTING;
    c.b();
    Arrays.fill(d, (byte)0);
  }
}

/* Location:
 * Qualified Name:     org.mozilla.universalchardet.prober.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */