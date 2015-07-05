package org.mozilla.a.a;

public class k
{
  int a = 0;
  int b = 200;
  int c = 0;
  public int[] d = new int[94];
  public int[] e = new int[94];
  public float[] f = new float[94];
  public float[] g = new float[94];
  
  public k()
  {
    a();
  }
  
  float a(float[] paramArrayOfFloat1, float paramFloat1, float[] paramArrayOfFloat2, float paramFloat2)
  {
    return a(paramArrayOfFloat1, f) * paramFloat1 + a(paramArrayOfFloat2, g) * paramFloat2;
  }
  
  float a(float[] paramArrayOfFloat1, float[] paramArrayOfFloat2)
  {
    float f1 = 0.0F;
    int i = 0;
    while (i < 94)
    {
      float f2 = paramArrayOfFloat1[i] - paramArrayOfFloat2[i];
      f1 += f2 * f2;
      i += 1;
    }
    return (float)Math.sqrt(f1) / 94.0F;
  }
  
  public void a()
  {
    a = 0;
    c = 0;
    int i = 0;
    while (i < 94)
    {
      int[] arrayOfInt = d;
      e[i] = 0;
      arrayOfInt[i] = 0;
      i += 1;
    }
  }
  
  boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    boolean bool = true;
    if (c == 1) {
      return false;
    }
    int j = 0;
    int i = 0;
    if ((j < paramInt) && (1 != c))
    {
      switch (c)
      {
      default: 
        c = 1;
      }
      for (;;)
      {
        j += 1;
        i += 1;
        break;
        if ((paramArrayOfByte[i] & 0x80) != 0) {
          if ((255 == (paramArrayOfByte[i] & 0xFF)) || (161 > (paramArrayOfByte[i] & 0xFF)))
          {
            c = 1;
          }
          else
          {
            a += 1;
            int[] arrayOfInt = d;
            int k = (paramArrayOfByte[i] & 0xFF) - 161;
            arrayOfInt[k] += 1;
            c = 2;
            continue;
            if ((paramArrayOfByte[i] & 0x80) != 0)
            {
              if ((255 == (paramArrayOfByte[i] & 0xFF)) || (161 > (paramArrayOfByte[i] & 0xFF)))
              {
                c = 1;
              }
              else
              {
                a += 1;
                arrayOfInt = e;
                k = (paramArrayOfByte[i] & 0xFF) - 161;
                arrayOfInt[k] += 1;
                c = 0;
              }
            }
            else {
              c = 1;
            }
          }
        }
      }
    }
    if (1 != c) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  boolean b()
  {
    return a > b;
  }
  
  boolean c()
  {
    return a > 1;
  }
  
  void d()
  {
    int i = 0;
    while (i < 94)
    {
      f[i] = (d[i] / a);
      g[i] = (e[i] / a);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.mozilla.a.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */