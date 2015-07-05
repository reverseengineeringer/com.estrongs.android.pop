package de.innosystec.unrar.unpack;

import de.innosystec.unrar.unpack.decode.a;
import de.innosystec.unrar.unpack.decode.b;
import de.innosystec.unrar.unpack.decode.e;
import de.innosystec.unrar.unpack.decode.f;
import de.innosystec.unrar.unpack.decode.g;
import de.innosystec.unrar.unpack.decode.h;
import java.util.Arrays;

public abstract class d
  extends c
{
  public static final int[] ae = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 20, 24, 28, 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224 };
  public static final byte[] af = { 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5 };
  public static final int[] ag = { 0, 1, 2, 3, 4, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, 768, 1024, 1536, 2048, 3072, 4096, 6144, 8192, 12288, 16384, 24576, 32768, 49152, 65536, 98304, 131072, 196608, 262144, 327680, 393216, 458752, 524288, 589824, 655360, 720896, 786432, 851968, 917504, 983040 };
  public static final int[] ah = { 0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16 };
  public static final int[] ai = { 0, 4, 8, 16, 32, 64, 128, 192 };
  public static final int[] aj = { 2, 2, 3, 4, 5, 6, 6, 6 };
  protected g[] S = new g[4];
  protected byte[] T = new byte['Є'];
  protected int U;
  protected int V;
  protected int W;
  protected int X;
  protected a[] Y = new a[4];
  protected e Z = new e();
  protected de.innosystec.unrar.unpack.decode.d aa = new de.innosystec.unrar.unpack.decode.d();
  protected f ab = new f();
  protected h ac = new h();
  protected b ad = new b();
  
  protected int a(de.innosystec.unrar.unpack.decode.c paramc)
  {
    int i = 1;
    long l = m() & 0xFFFE;
    int[] arrayOfInt = paramc.a();
    if (l < arrayOfInt[8]) {
      if (l < arrayOfInt[4]) {
        if (l < arrayOfInt[2]) {
          if (l >= arrayOfInt[1]) {}
        }
      }
    }
    for (;;)
    {
      c(i);
      int j = paramc.c()[i];
      j = ((int)l - arrayOfInt[(i - 1)] >>> 16 - i) + j;
      i = j;
      if (j >= paramc.d()) {
        i = 0;
      }
      return paramc.b()[i];
      i = 2;
      continue;
      if (l < arrayOfInt[3])
      {
        i = 3;
      }
      else
      {
        i = 4;
        continue;
        if (l < arrayOfInt[6])
        {
          if (l < arrayOfInt[5]) {
            i = 5;
          } else {
            i = 6;
          }
        }
        else if (l < arrayOfInt[7])
        {
          i = 7;
        }
        else
        {
          i = 8;
          continue;
          if (l < arrayOfInt[12])
          {
            if (l < arrayOfInt[10])
            {
              if (l < arrayOfInt[9]) {
                i = 9;
              } else {
                i = 10;
              }
            }
            else if (l < arrayOfInt[11]) {
              i = 11;
            } else {
              i = 12;
            }
          }
          else if (l < arrayOfInt[14])
          {
            if (l < arrayOfInt[13]) {
              i = 13;
            } else {
              i = 14;
            }
          }
          else {
            i = 15;
          }
        }
      }
    }
  }
  
  protected void a(byte[] paramArrayOfByte, int paramInt1, de.innosystec.unrar.unpack.decode.c paramc, int paramInt2)
  {
    int[] arrayOfInt2 = new int[16];
    int[] arrayOfInt1 = new int[16];
    Arrays.fill(arrayOfInt2, 0);
    Arrays.fill(paramc.b(), 0);
    int i = 0;
    int j;
    while (i < paramInt2)
    {
      j = paramArrayOfByte[(paramInt1 + i)] & 0xF;
      arrayOfInt2[j] += 1;
      i += 1;
    }
    arrayOfInt2[0] = 0;
    arrayOfInt1[0] = 0;
    paramc.c()[0] = 0;
    paramc.a()[0] = 0;
    long l1 = 0L;
    i = 1;
    while (i < 16)
    {
      long l2 = 2L * (l1 + arrayOfInt2[i]);
      long l3 = l2 << 15 - i;
      l1 = l3;
      if (l3 > 65535L) {
        l1 = 65535L;
      }
      paramc.a()[i] = ((int)l1);
      int[] arrayOfInt3 = paramc.c();
      j = paramc.c()[(i - 1)] + arrayOfInt2[(i - 1)];
      arrayOfInt3[i] = j;
      arrayOfInt1[i] = j;
      i += 1;
      l1 = l2;
    }
    i = 0;
    while (i < paramInt2)
    {
      if (paramArrayOfByte[(paramInt1 + i)] != 0)
      {
        arrayOfInt2 = paramc.b();
        j = paramArrayOfByte[(paramInt1 + i)] & 0xF;
        int k = arrayOfInt1[j];
        arrayOfInt1[j] = (k + 1);
        arrayOfInt2[k] = i;
      }
      i += 1;
    }
    paramc.a(paramInt2);
  }
  
  protected byte b(int paramInt)
  {
    int j = 1;
    a locala = Y[W];
    locala.a(locala.a() + 1);
    locala.e(locala.d());
    locala.d(locala.c());
    locala.c(locala.m() - locala.b());
    locala.b(locala.m());
    int m = (locala.l() * 8 + locala.g() * locala.b() + (locala.h() * locala.c() + locala.i() * locala.d()) + (locala.j() * locala.e() + locala.k() * X) >>> 3 & 0xFF) - paramInt;
    paramInt = (byte)paramInt << 3;
    int[] arrayOfInt = locala.f();
    arrayOfInt[0] += Math.abs(paramInt);
    arrayOfInt = locala.f();
    arrayOfInt[1] += Math.abs(paramInt - locala.b());
    arrayOfInt = locala.f();
    arrayOfInt[2] += Math.abs(locala.b() + paramInt);
    arrayOfInt = locala.f();
    arrayOfInt[3] += Math.abs(paramInt - locala.c());
    arrayOfInt = locala.f();
    arrayOfInt[4] += Math.abs(locala.c() + paramInt);
    arrayOfInt = locala.f();
    arrayOfInt[5] += Math.abs(paramInt - locala.d());
    arrayOfInt = locala.f();
    arrayOfInt[6] += Math.abs(locala.d() + paramInt);
    arrayOfInt = locala.f();
    arrayOfInt[7] += Math.abs(paramInt - locala.e());
    arrayOfInt = locala.f();
    arrayOfInt[8] += Math.abs(locala.e() + paramInt);
    arrayOfInt = locala.f();
    arrayOfInt[9] += Math.abs(paramInt - X);
    arrayOfInt = locala.f();
    int i = arrayOfInt[10];
    arrayOfInt[10] = (Math.abs(paramInt + X) + i);
    locala.l((byte)(m - locala.l()));
    X = locala.m();
    locala.k(m);
    if ((locala.a() & 0x1F) == 0)
    {
      i = locala.f()[0];
      locala.f()[0] = 0;
      int k = 0;
      paramInt = j;
      while (paramInt < locala.f().length)
      {
        j = i;
        if (locala.f()[paramInt] < i)
        {
          j = locala.f()[paramInt];
          k = paramInt;
        }
        locala.f()[paramInt] = 0;
        paramInt += 1;
        i = j;
      }
      switch (k)
      {
      }
    }
    for (;;)
    {
      return (byte)m;
      if (locala.g() >= -16)
      {
        locala.f(locala.g() - 1);
        continue;
        if (locala.g() < 16)
        {
          locala.f(locala.g() + 1);
          continue;
          if (locala.h() >= -16)
          {
            locala.g(locala.h() - 1);
            continue;
            if (locala.h() < 16)
            {
              locala.g(locala.h() + 1);
              continue;
              if (locala.i() >= -16)
              {
                locala.h(locala.i() - 1);
                continue;
                if (locala.i() < 16)
                {
                  locala.h(locala.i() + 1);
                  continue;
                  if (locala.j() >= -16)
                  {
                    locala.i(locala.j() - 1);
                    continue;
                    if (locala.j() < 16)
                    {
                      locala.i(locala.j() + 1);
                      continue;
                      if (locala.k() >= -16)
                      {
                        locala.j(locala.k() - 1);
                        continue;
                        if (locala.k() < 16) {
                          locala.j(locala.k() + 1);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  protected void b(int paramInt1, int paramInt2)
  {
    Object localObject = this.j;
    int i = m;
    m = (i + 1);
    localObject[(i & 0x3)] = paramInt2;
    M = paramInt2;
    N = paramInt1;
    h -= paramInt1;
    int j = k - paramInt2;
    paramInt2 = j;
    i = paramInt1;
    if (j < 4194004)
    {
      paramInt2 = j;
      i = paramInt1;
      if (k < 4194004)
      {
        localObject = this.i;
        i = k;
        k = (i + 1);
        byte[] arrayOfByte = this.i;
        paramInt2 = j + 1;
        localObject[i] = arrayOfByte[j];
        localObject = this.i;
        j = k;
        k = (j + 1);
        arrayOfByte = this.i;
        i = paramInt2 + 1;
        localObject[j] = arrayOfByte[paramInt2];
        paramInt2 = paramInt1;
        paramInt1 = i;
        while (paramInt2 > 2)
        {
          paramInt2 -= 1;
          localObject = this.i;
          i = k;
          k = (i + 1);
          localObject[i] = this.i[paramInt1];
          paramInt1 += 1;
        }
      }
    }
    while (i != 0)
    {
      this.i[k] = this.i[(paramInt2 & 0x3FFFFF)];
      k = (k + 1 & 0x3FFFFF);
      paramInt2 += 1;
      i -= 1;
    }
  }
  
  protected void d(boolean paramBoolean)
  {
    if (c) {
      this.k = l;
    }
    for (;;)
    {
      if (h >= 0L)
      {
        this.k &= 0x3FFFFF;
        if ((ak <= g - 30) || (c())) {
          break label101;
        }
      }
      label101:
      label141:
      int i;
      Object localObject;
      int j;
      int k;
      int m;
      for (;;)
      {
        k();
        i();
        do
        {
          do
          {
            return;
            a(paramBoolean);
          } while ((!c()) || ((!paramBoolean) && (!j())));
          h -= 1L;
          break;
          if (((l - this.k & 0x3FFFFF) >= 270) || (l == this.k)) {
            break label141;
          }
          i();
        } while (c);
        if (U != 0)
        {
          i = a(S[W]);
          if (i == 256)
          {
            if (j()) {
              break;
            }
            continue;
          }
          localObject = this.i;
          j = this.k;
          this.k = (j + 1);
          localObject[j] = b(i);
          i = W + 1;
          W = i;
          if (i == V) {
            W = 0;
          }
          h -= 1L;
          break;
        }
        i = a(Z);
        if (i < 256)
        {
          localObject = this.i;
          j = this.k;
          this.k = (j + 1);
          localObject[j] = ((byte)i);
          h -= 1L;
          break;
        }
        if (i > 269)
        {
          localObject = ae;
          i -= 270;
          j = localObject[i] + 3;
          k = af[i];
          i = j;
          if (k > 0)
          {
            i = j + (m() >>> 16 - k);
            c(k);
          }
          k = a(aa);
          j = ag[k] + 1;
          m = ah[k];
          k = j;
          if (m > 0)
          {
            k = j + (m() >>> 16 - m);
            c(m);
          }
          j = i;
          if (k >= 8192)
          {
            i += 1;
            j = i;
            if (k >= 262144L) {
              j = i + 1;
            }
          }
          b(j, k);
          break;
        }
        if (i != 269) {
          break label467;
        }
        if (j()) {
          break;
        }
      }
      label467:
      if (i == 256)
      {
        b(N, M);
      }
      else if (i < 261)
      {
        k = this.j[(this.m - (i - 256) & 0x3)];
        j = a(ac);
        i = ae[j] + 2;
        m = af[j];
        j = i;
        if (m > 0)
        {
          j = i + (m() >>> 16 - m);
          c(m);
        }
        i = j;
        if (k >= 257)
        {
          j += 1;
          i = j;
          if (k >= 8192)
          {
            j += 1;
            i = j;
            if (k >= 262144) {
              i = j + 1;
            }
          }
        }
        b(i, k);
      }
      else if (i < 270)
      {
        localObject = ai;
        i -= 261;
        j = localObject[i] + 1;
        k = aj[i];
        i = j;
        if (k > 0)
        {
          i = j + (m() >>> 16 - k);
          c(k);
        }
        b(2, i);
      }
    }
  }
  
  protected void e(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      W = 0;
      X = 0;
      V = 1;
      Arrays.fill(Y, new a());
      Arrays.fill(T, (byte)0);
    }
  }
  
  protected boolean j()
  {
    int n = 0;
    byte[] arrayOfByte1 = new byte[19];
    byte[] arrayOfByte2 = new byte['Є'];
    if ((ak > g - 25) && (!c())) {
      return false;
    }
    int i = m();
    U = (0x8000 & i);
    if ((i & 0x4000) == 0) {
      Arrays.fill(T, (byte)0);
    }
    c(2);
    if (U != 0)
    {
      V = ((i >>> 12 & 0x3) + 1);
      if (W >= V) {
        W = 0;
      }
      c(2);
    }
    for (int k = V * 257;; k = 374)
    {
      i = 0;
      while (i < 19)
      {
        arrayOfByte1[i] = ((byte)(m() >>> 12));
        c(4);
        i += 1;
      }
    }
    a(arrayOfByte1, 0, ad, 19);
    i = 0;
    for (;;)
    {
      if (i < k)
      {
        if ((ak > g - 5) && (!c())) {
          break;
        }
        j = a(ad);
        if (j < 16)
        {
          arrayOfByte2[i] = ((byte)(j + T[i] & 0xF));
          i += 1;
        }
        else
        {
          int m;
          if (j == 16)
          {
            m = (m() >>> 14) + 3;
            c(2);
            j = i;
            for (;;)
            {
              i = j;
              if (m <= 0) {
                break;
              }
              i = j;
              if (j >= k) {
                break;
              }
              arrayOfByte2[j] = arrayOfByte2[(j - 1)];
              j += 1;
              m -= 1;
            }
          }
          if (j == 17)
          {
            j = (m() >>> 13) + 3;
            c(3);
            m = i;
          }
          for (;;)
          {
            i = m;
            if (j <= 0) {
              break;
            }
            i = m;
            if (m >= k) {
              break;
            }
            arrayOfByte2[m] = 0;
            m += 1;
            j -= 1;
            continue;
            j = (m() >>> 9) + 11;
            c(7);
            m = i;
          }
        }
      }
    }
    if (ak > g) {
      return true;
    }
    if (U != 0)
    {
      i = 0;
      for (;;)
      {
        j = n;
        if (i >= V) {
          break;
        }
        a(arrayOfByte2, i * 257, S[i], 257);
        i += 1;
      }
    }
    a(arrayOfByte2, 0, Z, 298);
    a(arrayOfByte2, 298, aa, 48);
    a(arrayOfByte2, 346, ac, 28);
    int j = n;
    while (j < T.length)
    {
      T[j] = arrayOfByte2[j];
      j += 1;
    }
    return true;
  }
  
  protected void k()
  {
    if (g >= ak + 5)
    {
      if (U == 0) {
        break label45;
      }
      if (a(S[W]) == 256) {
        j();
      }
    }
    label45:
    while (a(Z) != 269) {
      return;
    }
    j();
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */