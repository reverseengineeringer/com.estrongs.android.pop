package org.mozilla.universalchardet.prober.a;

public abstract class b
{
  protected int[] a;
  protected float b;
  protected boolean c;
  private int d;
  private int e;
  
  public b()
  {
    b();
  }
  
  public float a()
  {
    float f1;
    if ((e <= 0) || (d <= 4)) {
      f1 = 0.01F;
    }
    float f2;
    do
    {
      return f1;
      if (e == d) {
        break;
      }
      f2 = d / (e - d) * b;
      f1 = f2;
    } while (f2 < 0.99F);
    return 0.99F;
  }
  
  protected abstract int a(byte[] paramArrayOfByte, int paramInt);
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = -1;
    if (paramInt2 == 2) {
      i = a(paramArrayOfByte, paramInt1);
    }
    if (i >= 0)
    {
      e += 1;
      if ((i < a.length) && (512 > a[i])) {
        d += 1;
      }
    }
  }
  
  public void b()
  {
    c = false;
    e = 0;
    d = 0;
  }
  
  public boolean c()
  {
    return e > 1024;
  }
}

/* Location:
 * Qualified Name:     org.mozilla.universalchardet.prober.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */