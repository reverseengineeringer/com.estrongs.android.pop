package org.mozilla.universalchardet.prober;

public class b
  extends CharsetProber
{
  private CharsetProber.ProbingState a;
  private CharsetProber[] b = new CharsetProber[1];
  private boolean[] c = new boolean[1];
  private int d;
  private int e;
  
  public b()
  {
    b[0] = new a();
    c();
  }
  
  public String a()
  {
    if (d == -1)
    {
      b();
      if (d == -1) {
        d = 0;
      }
    }
    return b[d].a();
  }
  
  public CharsetProber.ProbingState a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    int i = 0;
    int j = 1;
    int k = paramInt1;
    label33:
    int m;
    if (k >= paramInt1 + paramInt2)
    {
      paramInt1 = 0;
      if (paramInt1 >= b.length) {
        return a;
      }
    }
    else if ((paramArrayOfByte[k] & 0x80) != 0)
    {
      m = i + 1;
      arrayOfByte[i] = paramArrayOfByte[k];
      j = 1;
      i = m;
    }
    for (;;)
    {
      k += 1;
      break;
      if (j != 0)
      {
        j = i + 1;
        arrayOfByte[i] = paramArrayOfByte[k];
        m = 0;
        i = j;
        j = m;
        continue;
        if (c[paramInt1] == 0) {}
        do
        {
          do
          {
            paramInt1 += 1;
            break;
            paramArrayOfByte = b[paramInt1].a(arrayOfByte, 0, i);
            if (paramArrayOfByte == CharsetProber.ProbingState.FOUND_IT)
            {
              d = paramInt1;
              a = CharsetProber.ProbingState.FOUND_IT;
              break label33;
            }
          } while (paramArrayOfByte != CharsetProber.ProbingState.NOT_ME);
          c[paramInt1] = false;
          e -= 1;
        } while (e > 0);
        a = CharsetProber.ProbingState.NOT_ME;
        break label33;
      }
    }
  }
  
  public float b()
  {
    float f1 = 0.0F;
    float f2;
    if (a == CharsetProber.ProbingState.FOUND_IT) {
      f2 = 0.99F;
    }
    int i;
    do
    {
      return f2;
      if (a == CharsetProber.ProbingState.NOT_ME) {
        return 0.01F;
      }
      i = 0;
      f2 = f1;
    } while (i >= b.length);
    if (c[i] == 0) {
      f2 = f1;
    }
    for (;;)
    {
      i += 1;
      f1 = f2;
      break;
      float f3 = b[i].b();
      f2 = f1;
      if (f1 < f3)
      {
        d = i;
        f2 = f3;
      }
    }
  }
  
  public void c()
  {
    int i = 0;
    e = 0;
    for (;;)
    {
      if (i >= b.length)
      {
        d = -1;
        a = CharsetProber.ProbingState.DETECTING;
        return;
      }
      b[i].c();
      c[i] = true;
      e += 1;
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.mozilla.universalchardet.prober.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */