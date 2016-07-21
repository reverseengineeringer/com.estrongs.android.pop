package com.dianxinos.library.dxbase;

class d
  extends b
{
  private static final byte[] h;
  private static final byte[] i;
  int c;
  public final boolean d;
  public final boolean e;
  public final boolean f;
  private final byte[] j;
  private int k;
  private final byte[] l;
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      h = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      i = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      return;
    }
  }
  
  public d(int paramInt, byte[] paramArrayOfByte)
  {
    a = paramArrayOfByte;
    boolean bool1;
    if ((paramInt & 0x1) == 0)
    {
      bool1 = true;
      d = bool1;
      if ((paramInt & 0x2) != 0) {
        break label101;
      }
      bool1 = true;
      label33:
      e = bool1;
      if ((paramInt & 0x4) == 0) {
        break label106;
      }
      bool1 = bool2;
      label47:
      f = bool1;
      if ((paramInt & 0x8) != 0) {
        break label111;
      }
      paramArrayOfByte = h;
      label63:
      l = paramArrayOfByte;
      j = new byte[2];
      c = 0;
      if (!e) {
        break label118;
      }
    }
    label101:
    label106:
    label111:
    label118:
    for (paramInt = 19;; paramInt = -1)
    {
      k = paramInt;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label33;
      bool1 = false;
      break label47;
      paramArrayOfByte = i;
      break label63;
    }
  }
  
  public boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    byte[] arrayOfByte1 = l;
    byte[] arrayOfByte2 = a;
    int m = 0;
    int i2 = k;
    int i4 = paramInt2 + paramInt1;
    int i1 = -1;
    label62:
    int n;
    switch (c)
    {
    default: 
      paramInt2 = paramInt1;
      paramInt1 = i2;
      n = paramInt2;
      if (i1 != -1)
      {
        arrayOfByte2[0] = arrayOfByte1[(i1 >> 18 & 0x3F)];
        arrayOfByte2[1] = arrayOfByte1[(i1 >> 12 & 0x3F)];
        arrayOfByte2[2] = arrayOfByte1[(i1 >> 6 & 0x3F)];
        m = 4;
        arrayOfByte2[3] = arrayOfByte1[(i1 & 0x3F)];
        i1 = i2 - 1;
        paramInt1 = i1;
        n = paramInt2;
        if (i1 == 0)
        {
          if (!f) {
            break label1226;
          }
          paramInt1 = 5;
          arrayOfByte2[4] = 13;
        }
      }
      break;
    }
    for (;;)
    {
      arrayOfByte2[paramInt1] = 10;
      n = 19;
      paramInt1 += 1;
      for (;;)
      {
        label180:
        if (paramInt2 + 3 <= i4)
        {
          m = (paramArrayOfByte[paramInt2] & 0xFF) << 16 | (paramArrayOfByte[(paramInt2 + 1)] & 0xFF) << 8 | paramArrayOfByte[(paramInt2 + 2)] & 0xFF;
          arrayOfByte2[paramInt1] = arrayOfByte1[(m >> 18 & 0x3F)];
          arrayOfByte2[(paramInt1 + 1)] = arrayOfByte1[(m >> 12 & 0x3F)];
          arrayOfByte2[(paramInt1 + 2)] = arrayOfByte1[(m >> 6 & 0x3F)];
          arrayOfByte2[(paramInt1 + 3)] = arrayOfByte1[(m & 0x3F)];
          paramInt2 += 3;
          i1 = paramInt1 + 4;
          i2 = n - 1;
          paramInt1 = i2;
          m = i1;
          n = paramInt2;
          if (i2 != 0) {
            break label1210;
          }
          if (!f) {
            break label1204;
          }
          paramInt1 = i1 + 1;
          arrayOfByte2[i1] = 13;
        }
        for (;;)
        {
          arrayOfByte2[paramInt1] = 10;
          n = 19;
          paramInt1 += 1;
          break label180;
          paramInt2 = paramInt1;
          break label62;
          if (paramInt1 + 2 > i4) {
            break;
          }
          n = j[0];
          paramInt2 = paramInt1 + 1;
          i1 = (n & 0xFF) << 16 | (paramArrayOfByte[paramInt1] & 0xFF) << 8 | paramArrayOfByte[paramInt2] & 0xFF;
          c = 0;
          paramInt2 += 1;
          break label62;
          if (paramInt1 + 1 > i4) {
            break;
          }
          n = j[0];
          i1 = j[1];
          paramInt2 = paramInt1 + 1;
          i1 = (n & 0xFF) << 16 | (i1 & 0xFF) << 8 | paramArrayOfByte[paramInt1] & 0xFF;
          c = 0;
          break label62;
          label742:
          int i3;
          if (paramBoolean)
          {
            if (paramInt2 - c == i4 - 1)
            {
              if (c > 0)
              {
                paramArrayOfByte = j;
                m = 1;
                i1 = paramArrayOfByte[0];
              }
              for (;;)
              {
                i1 = (i1 & 0xFF) << 4;
                c -= m;
                i2 = paramInt1 + 1;
                arrayOfByte2[paramInt1] = arrayOfByte1[(i1 >> 6 & 0x3F)];
                m = i2 + 1;
                arrayOfByte2[i2] = arrayOfByte1[(i1 & 0x3F)];
                paramInt1 = m;
                if (d)
                {
                  i1 = m + 1;
                  arrayOfByte2[m] = 61;
                  paramInt1 = i1 + 1;
                  arrayOfByte2[i1] = 61;
                }
                m = paramInt1;
                if (e)
                {
                  m = paramInt1;
                  if (f)
                  {
                    arrayOfByte2[paramInt1] = 13;
                    m = paramInt1 + 1;
                  }
                  arrayOfByte2[m] = 10;
                  m += 1;
                }
                i1 = paramInt2;
                if ((g) || (c == 0)) {
                  break;
                }
                throw new AssertionError();
                i1 = paramArrayOfByte[paramInt2];
                paramInt2 += 1;
                m = 0;
              }
            }
            if (paramInt2 - c == i4 - 2) {
              if (c > 1)
              {
                byte[] arrayOfByte3 = j;
                i2 = 1;
                i1 = arrayOfByte3[0];
                m = paramInt2;
                paramInt2 = i2;
                if (c <= 0) {
                  break label946;
                }
                i2 = j[paramInt2];
                i3 = paramInt2 + 1;
                paramInt2 = m;
                m = i3;
                label769:
                i1 = (i2 & 0xFF) << 2 | (i1 & 0xFF) << 10;
                c -= m;
                m = paramInt1 + 1;
                arrayOfByte2[paramInt1] = arrayOfByte1[(i1 >> 12 & 0x3F)];
                i2 = m + 1;
                arrayOfByte2[m] = arrayOfByte1[(i1 >> 6 & 0x3F)];
                paramInt1 = i2 + 1;
                arrayOfByte2[i2] = arrayOfByte1[(i1 & 0x3F)];
                if (!d) {
                  break label1201;
                }
                m = paramInt1 + 1;
                arrayOfByte2[paramInt1] = 61;
                paramInt1 = m;
              }
            }
          }
          label946:
          label1123:
          label1201:
          for (;;)
          {
            m = paramInt1;
            if (e)
            {
              m = paramInt1;
              if (f)
              {
                arrayOfByte2[paramInt1] = 13;
                m = paramInt1 + 1;
              }
              arrayOfByte2[m] = 10;
              m += 1;
            }
            i1 = paramInt2;
            break;
            i1 = paramArrayOfByte[paramInt2];
            m = paramInt2 + 1;
            paramInt2 = 0;
            break label742;
            i2 = paramArrayOfByte[m];
            i3 = m + 1;
            m = paramInt2;
            paramInt2 = i3;
            break label769;
            i1 = paramInt2;
            m = paramInt1;
            if (!e) {
              break;
            }
            i1 = paramInt2;
            m = paramInt1;
            if (paramInt1 <= 0) {
              break;
            }
            i1 = paramInt2;
            m = paramInt1;
            if (n == 19) {
              break;
            }
            if (f)
            {
              m = paramInt1 + 1;
              arrayOfByte2[paramInt1] = 13;
              paramInt1 = m;
            }
            for (;;)
            {
              m = paramInt1 + 1;
              arrayOfByte2[paramInt1] = 10;
              i1 = paramInt2;
              break;
              i2 = m;
              if (!g)
              {
                i2 = m;
                if (i1 != i4)
                {
                  throw new AssertionError();
                  if (paramInt2 != i4 - 1) {
                    break label1123;
                  }
                  arrayOfByte1 = j;
                  m = c;
                  c = (m + 1);
                  arrayOfByte1[m] = paramArrayOfByte[paramInt2];
                  i2 = paramInt1;
                }
              }
              for (;;)
              {
                b = i2;
                k = n;
                return true;
                i2 = paramInt1;
                if (paramInt2 == i4 - 2)
                {
                  arrayOfByte1 = j;
                  m = c;
                  c = (m + 1);
                  arrayOfByte1[m] = paramArrayOfByte[paramInt2];
                  arrayOfByte1 = j;
                  m = c;
                  c = (m + 1);
                  arrayOfByte1[m] = paramArrayOfByte[(paramInt2 + 1)];
                  i2 = paramInt1;
                }
              }
            }
          }
          label1204:
          paramInt1 = i1;
        }
        label1210:
        i1 = paramInt1;
        paramInt1 = m;
        paramInt2 = n;
        n = i1;
      }
      label1226:
      paramInt1 = 4;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.dxbase.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */