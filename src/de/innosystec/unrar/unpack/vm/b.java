package de.innosystec.unrar.unpack.vm;

import java.util.Iterator;
import java.util.List;
import java.util.Vector;

public class b
  extends a
{
  private byte[] a = null;
  private int[] b = new int[8];
  private int c;
  private int d = 25000000;
  private int e;
  private int f;
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    int j = paramInt2 / 8;
    byte[] arrayOfByte = a;
    int i = j + 1;
    j = arrayOfByte[(j + paramInt1)];
    arrayOfByte = a;
    int k = i + 1;
    return (j & 0xFF | (arrayOfByte[(i + paramInt1)] & 0xFF) << 8 | (a[(k + paramInt1)] & 0xFF) << 16 | (a[(k + 1 + paramInt1)] & 0xFF) << 24) >>> (paramInt2 & 0x7) & -1 >>> 32 - paramInt3;
  }
  
  public static int a(a parama)
  {
    int i = parama.n();
    switch (0xC000 & i)
    {
    default: 
      parama.d(2);
      i = parama.n();
      parama.d(16);
      int j = parama.n();
      parama.d(16);
      return i << 16 | j;
    case 0: 
      parama.d(6);
      return i >> 10 & 0xF;
    case 16384: 
      if ((i & 0x3C00) == 0)
      {
        parama.d(14);
        return i >> 2 & 0xFF | 0xFF00;
      }
      parama.d(10);
      return i >> 6 & 0xFF;
    }
    parama.d(2);
    i = parama.n();
    parama.d(16);
    return i;
  }
  
  private int a(f paramf)
  {
    if (paramf.c() == VMOpType.VM_OPREGMEM)
    {
      i = paramf.d();
      int j = paramf.a();
      return de.innosystec.unrar.b.b.c(a, i + j & 0x3FFFF);
    }
    int i = paramf.d();
    return de.innosystec.unrar.b.b.c(a, i);
  }
  
  private int a(boolean paramBoolean, byte[] paramArrayOfByte, int paramInt)
  {
    if (paramBoolean)
    {
      if (a(paramArrayOfByte)) {
        return paramArrayOfByte[paramInt];
      }
      return paramArrayOfByte[paramInt] & 0xFF;
    }
    if (a(paramArrayOfByte)) {
      return de.innosystec.unrar.b.b.c(paramArrayOfByte, paramInt);
    }
    return de.innosystec.unrar.b.b.a(paramArrayOfByte, paramInt);
  }
  
  private VMStandardFilters a(byte[] paramArrayOfByte, int paramInt)
  {
    paramInt = 0;
    h[] arrayOfh = new h[7];
    arrayOfh[0] = new h(53, -1386780537, VMStandardFilters.VMSF_E8);
    arrayOfh[1] = new h(57, 1020781950, VMStandardFilters.VMSF_E8E9);
    arrayOfh[2] = new h(120, 929663295, VMStandardFilters.VMSF_ITANIUM);
    arrayOfh[3] = new h(29, 235276157, VMStandardFilters.VMSF_DELTA);
    arrayOfh[4] = new h(149, 472669640, VMStandardFilters.VMSF_RGB);
    arrayOfh[5] = new h(216, -1132075263, VMStandardFilters.VMSF_AUDIO);
    arrayOfh[6] = new h(40, 1186579808, VMStandardFilters.VMSF_UPCASE);
    int i = de.innosystec.unrar.a.a.a(-1, paramArrayOfByte, 0, paramArrayOfByte.length);
    while (paramInt < arrayOfh.length)
    {
      if ((arrayOfh[paramInt].a() == (i ^ 0xFFFFFFFF)) && (arrayOfh[paramInt].b() == paramArrayOfByte.length)) {
        return arrayOfh[paramInt].c();
      }
      paramInt += 1;
    }
    return VMStandardFilters.VMSF_NONE;
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt3 / 8;
    paramInt3 &= 0x7;
    paramInt4 = -1 >>> 32 - paramInt4 << paramInt3 ^ 0xFFFFFFFF;
    paramInt2 <<= paramInt3;
    paramInt3 = 0;
    while (paramInt3 < 4)
    {
      byte[] arrayOfByte = a;
      int j = paramInt1 + i + paramInt3;
      arrayOfByte[j] = ((byte)(arrayOfByte[j] & paramInt4));
      arrayOfByte = a;
      j = paramInt1 + i + paramInt3;
      arrayOfByte[j] = ((byte)(arrayOfByte[j] | paramInt2));
      paramInt4 = paramInt4 >>> 8 | 0xFF000000;
      paramInt2 >>>= 8;
      paramInt3 += 1;
    }
  }
  
  private void a(VMStandardFilters paramVMStandardFilters)
  {
    switch (c.b[paramVMStandardFilters.ordinal()])
    {
    }
    int n;
    label91:
    int i1;
    label99:
    int i2;
    label223:
    int i;
    label903:
    label1456:
    do
    {
      for (;;)
      {
        return;
        n = b[4];
        long l1 = b[6] & 0xFFFFFFFF;
        if (n < 245760)
        {
          long l2;
          long l3;
          if (paramVMStandardFilters == VMStandardFilters.VMSF_E8E9)
          {
            k = -23;
            i1 = (byte)k;
            k = 0;
            if (k < n - 4)
            {
              paramVMStandardFilters = a;
              m = k + 1;
              i2 = paramVMStandardFilters[k];
              if (i2 != -24)
              {
                k = m;
                if (i2 != i1) {}
              }
              else
              {
                l2 = m + l1;
                l3 = a(false, a, m);
                if ((0xFFFFFFFF80000000 & l3) == 0L) {
                  break label223;
                }
                if ((l2 + l3 & 0xFFFFFFFF80000000) == 0L) {
                  a(false, a, m, (int)l3 + 16777216);
                }
              }
            }
          }
          for (;;)
          {
            k = m + 4;
            break label99;
            break;
            k = -24;
            break label91;
            if ((l3 - 16777216 & 0xFFFFFFFF80000000) != 0L) {
              a(false, a, m, (int)(l3 - l2));
            }
          }
          n = b[4];
          l1 = b[6] & 0xFFFFFFFF;
          if (n < 245760)
          {
            l1 >>>= 4;
            k = 0;
            while (k < n - 21)
            {
              m = (a[k] & 0x1F) - 16;
              if (m >= 0)
              {
                i1 = new byte[] { 4, 4, 6, 6, 0, 0, 7, 7, 4, 4, 0, 0, 4, 4, 0, 0 }[m];
                if (i1 != 0)
                {
                  m = 0;
                  while (m <= 2)
                  {
                    if ((1 << m & i1) != 0)
                    {
                      i2 = m * 41 + 5;
                      if (a(k, i2 + 37, 4) == 5) {
                        a(k, (int)(a(k, i2 + 13, 20) - l1) & 0xFFFFF, i2 + 13, 20);
                      }
                    }
                    m += 1;
                  }
                }
              }
              l1 += 1L;
              k += 16;
            }
            continue;
            i2 = b[4] & 0xFFFFFFFF;
            int i3 = b[0] & 0xFFFFFFFF;
            m = 0;
            a(false, a, 245792, i2);
            if (i2 < 122880)
            {
              k = 0;
              while (k < i3)
              {
                i1 = 0;
                n = i2 + k;
                while (n < (i2 * 2 & 0xFFFFFFFF))
                {
                  paramVMStandardFilters = a;
                  i = (byte)(i1 - a[m]);
                  paramVMStandardFilters[n] = i;
                  n += i3;
                  m += 1;
                  i1 = i;
                }
                k += 1;
              }
              continue;
              i2 = b[4];
              i3 = b[0];
              i1 = b[1];
              m = 0;
              a(false, a, 245792, i2);
              if ((i2 < 122880) && (i1 >= 0))
              {
                k = 0;
                int i4;
                int i5;
                int i6;
                int i7;
                int i8;
                while (k < 3)
                {
                  l1 = 0L;
                  n = k;
                  if (n < i2)
                  {
                    i4 = n - (i3 - 3);
                    l2 = l1;
                    if (i4 >= 3)
                    {
                      i5 = i4 + i2;
                      i4 = a[i5] & 0xFF;
                      i5 = a[(i5 - 3)] & 0xFF;
                      l2 = i4 + l1 - i5;
                      i6 = Math.abs((int)(l2 - l1));
                      i7 = Math.abs((int)(l2 - i4));
                      i8 = Math.abs((int)(l2 - i5));
                      if ((i6 > i7) || (i6 > i8)) {
                        break label903;
                      }
                      l2 = l1;
                    }
                    for (;;)
                    {
                      l1 = 0xFF & l2 - a[m] & 0xFF;
                      a[(i2 + n)] = ((byte)(int)(0xFF & l1));
                      n += 3;
                      m += 1;
                      break;
                      if (i7 <= i8) {
                        l2 = i4;
                      } else {
                        l2 = i5;
                      }
                    }
                  }
                  k += 1;
                }
                k = i1;
                while (k < i2 - 2)
                {
                  m = a[(i2 + k + 1)];
                  paramVMStandardFilters = a;
                  n = i2 + k;
                  paramVMStandardFilters[n] = ((byte)(paramVMStandardFilters[n] + m));
                  paramVMStandardFilters = a;
                  n = i2 + k + 2;
                  paramVMStandardFilters[n] = ((byte)(m + paramVMStandardFilters[n]));
                  k += 3;
                }
                continue;
                int i9 = b[4];
                int i10 = b[0];
                k = 0;
                a(false, a, 245792, i9);
                if (i9 < 122880)
                {
                  i1 = 0;
                  while (i1 < i10)
                  {
                    l2 = 0L;
                    paramVMStandardFilters = new long[7];
                    m = 0;
                    i7 = 0;
                    n = 0;
                    l1 = 0L;
                    i3 = i1;
                    i4 = 0;
                    i5 = 0;
                    i6 = 0;
                    i2 = k;
                    k = i7;
                    if (i3 < i9)
                    {
                      i7 = (int)l2 - i6;
                      i6 = (int)l2;
                      l3 = m * i6;
                      long l4 = k * i7;
                      long l5 = n * i5;
                      l2 = a[i2] & 0xFF;
                      l4 = 0xFFFFFFFFFFFFFFFF & (8L * l1 + l3 + l4 + l5 >>> 3 & 0xFF) - l2;
                      a[(i9 + i3)] = ((byte)(int)l4);
                      l5 = (byte)(int)(l4 - l1);
                      i8 = (byte)(int)l2 << 3;
                      paramVMStandardFilters[0] += Math.abs(i8);
                      paramVMStandardFilters[1] += Math.abs(i8 - i6);
                      paramVMStandardFilters[2] += Math.abs(i8 + i6);
                      paramVMStandardFilters[3] += Math.abs(i8 - i7);
                      paramVMStandardFilters[4] += Math.abs(i8 + i7);
                      paramVMStandardFilters[5] += Math.abs(i8 - i5);
                      paramVMStandardFilters[6] += Math.abs(i5 + i8);
                      if ((i4 & 0x1F) == 0)
                      {
                        l1 = paramVMStandardFilters[0];
                        l3 = 0L;
                        paramVMStandardFilters[0] = 0L;
                        i5 = 1;
                        while (i5 < paramVMStandardFilters.length)
                        {
                          l2 = l1;
                          if (paramVMStandardFilters[i5] < l1)
                          {
                            l2 = paramVMStandardFilters[i5];
                            l3 = i5;
                          }
                          paramVMStandardFilters[i5] = 0L;
                          i5 += 1;
                          l1 = l2;
                        }
                      }
                      switch ((int)l3)
                      {
                      default: 
                        i5 = n;
                        n = m;
                        m = k;
                        k = i5;
                      }
                      for (;;)
                      {
                        i4 += 1;
                        i8 = i3 + i10;
                        i3 = n;
                        l2 = l5;
                        i2 += 1;
                        l1 = l4;
                        i5 = i7;
                        n = k;
                        k = m;
                        m = i3;
                        i3 = i8;
                        break;
                        if (m < -16) {
                          break label1456;
                        }
                        i5 = m - 1;
                        m = k;
                        k = n;
                        n = i5;
                        continue;
                        if (m >= 16) {
                          break label1456;
                        }
                        i5 = m + 1;
                        m = k;
                        k = n;
                        n = i5;
                        continue;
                        if (k < -16) {
                          break label1456;
                        }
                        i5 = m;
                        m = k - 1;
                        k = n;
                        n = i5;
                        continue;
                        if (k >= 16) {
                          break label1456;
                        }
                        i5 = m;
                        m = k + 1;
                        k = n;
                        n = i5;
                        continue;
                        if (n < -16) {
                          break label1456;
                        }
                        i8 = n - 1;
                        n = k;
                        i5 = m;
                        k = i8;
                        m = n;
                        n = i5;
                        continue;
                        if (n >= 16) {
                          break label1456;
                        }
                        i8 = n + 1;
                        n = k;
                        i5 = m;
                        k = i8;
                        m = n;
                        n = i5;
                      }
                    }
                    i1 += 1;
                    k = i2;
                  }
                }
              }
            }
          }
        }
      }
      n = b[4];
      k = 0;
    } while (n >= 122880);
    int m = n;
    if (k < n)
    {
      paramVMStandardFilters = a;
      i1 = k + 1;
      i = paramVMStandardFilters[k];
      if (i != 2) {
        break label1857;
      }
      paramVMStandardFilters = a;
      i2 = i1 + 1;
      int j = paramVMStandardFilters[i1];
      i = j;
      k = i2;
      if (j != 2) {
        i = (byte)(j - 32);
      }
    }
    label1857:
    for (int k = i2;; k = i1)
    {
      a[m] = i;
      m += 1;
      break;
      a(false, a, 245788, m - n);
      a(false, a, 245792, n);
      return;
    }
  }
  
  private void a(f paramf, boolean paramBoolean)
  {
    int i = n();
    if ((0x8000 & i) != 0)
    {
      paramf.a(VMOpType.VM_OPREG);
      paramf.b(i >> 12 & 0x7);
      paramf.c(paramf.b());
      d(4);
      return;
    }
    if ((0xC000 & i) == 0)
    {
      paramf.a(VMOpType.VM_OPINT);
      if (paramBoolean)
      {
        paramf.b(i >> 6 & 0xFF);
        d(10);
        return;
      }
      d(2);
      paramf.b(a(this));
      return;
    }
    paramf.a(VMOpType.VM_OPREGMEM);
    if ((i & 0x2000) == 0)
    {
      paramf.b(i >> 10 & 0x7);
      paramf.c(paramf.b());
      paramf.a(0);
      d(6);
      return;
    }
    if ((i & 0x1000) == 0)
    {
      paramf.b(i >> 9 & 0x7);
      paramf.c(paramf.b());
      d(7);
    }
    for (;;)
    {
      paramf.a(a(this));
      return;
      paramf.b(0);
      d(4);
    }
  }
  
  private void a(boolean paramBoolean, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramBoolean)
    {
      if (a(paramArrayOfByte))
      {
        paramArrayOfByte[paramInt1] = ((byte)paramInt2);
        return;
      }
      paramArrayOfByte[paramInt1] = ((byte)(paramArrayOfByte[paramInt1] & 0x0 | (byte)(paramInt2 & 0xFF)));
      return;
    }
    if (a(paramArrayOfByte))
    {
      de.innosystec.unrar.b.b.c(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    de.innosystec.unrar.b.b.a(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private boolean a(int paramInt)
  {
    if (paramInt >= e) {
      return true;
    }
    int i = d - 1;
    d = i;
    if (i <= 0) {
      return false;
    }
    f = paramInt;
    return true;
  }
  
  private boolean a(List<e> paramList, int paramInt)
  {
    d = 25000000;
    e = paramInt;
    f = 0;
    Object localObject = (e)paramList.get(f);
    int j = a(((e)localObject).b());
    paramInt = a(((e)localObject).c());
    label296:
    int i;
    int k;
    switch (c.a[localObject.d().ordinal()])
    {
    default: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    case 9: 
    case 10: 
    case 11: 
    case 12: 
    case 13: 
    case 14: 
    case 15: 
    case 16: 
    case 17: 
    case 18: 
    case 19: 
    case 20: 
    case 21: 
    case 22: 
    case 23: 
    case 24: 
    case 25: 
    case 26: 
    case 27: 
    case 28: 
    case 29: 
    case 30: 
    case 31: 
    case 32: 
    case 33: 
    case 34: 
    case 35: 
    case 36: 
    case 37: 
    case 38: 
    case 39: 
    case 40: 
    case 41: 
    case 42: 
    case 43: 
    case 44: 
    case 45: 
    case 46: 
    case 47: 
    case 48: 
    case 49: 
    case 50: 
      for (;;)
      {
        f += 1;
        d -= 1;
        break;
        a(((e)localObject).a(), a, j, a(((e)localObject).a(), a, paramInt));
        continue;
        a(true, a, j, a(true, a, paramInt));
        continue;
        a(false, a, j, a(false, a, paramInt));
        continue;
        i = a(((e)localObject).a(), a, j);
        paramInt = i - a(((e)localObject).a(), a, paramInt);
        if (paramInt == 0)
        {
          c = VMFlags.VM_FZ.getFlag();
        }
        else
        {
          if (paramInt > i) {}
          for (paramInt = 1;; paramInt = paramInt & VMFlags.VM_FS.getFlag() | 0x0)
          {
            c = paramInt;
            break;
          }
          i = a(true, a, j);
          paramInt = i - a(true, a, paramInt);
          if (paramInt == 0)
          {
            c = VMFlags.VM_FZ.getFlag();
          }
          else
          {
            if (paramInt > i) {}
            for (paramInt = 1;; paramInt = VMFlags.VM_FS.getFlag() & paramInt | 0x0)
            {
              c = paramInt;
              break;
            }
            i = a(false, a, j);
            paramInt = i - a(false, a, paramInt);
            if (paramInt == 0)
            {
              c = VMFlags.VM_FZ.getFlag();
            }
            else
            {
              if (paramInt > i) {}
              for (paramInt = 1;; paramInt = VMFlags.VM_FS.getFlag() & paramInt | 0x0)
              {
                c = paramInt;
                break;
              }
              k = a(((e)localObject).a(), a, j);
              i = (int)(k + a(((e)localObject).a(), a, paramInt) & 0xFFFFFFFFFFFFFFFF);
              if (((e)localObject).a())
              {
                i &= 0xFF;
                if (i < k)
                {
                  paramInt = 1;
                  c = paramInt;
                }
              }
              for (paramInt = i;; paramInt = i)
              {
                a(((e)localObject).a(), a, j, paramInt);
                break;
                if (i == 0) {
                  paramInt = VMFlags.VM_FZ.getFlag();
                }
                for (;;)
                {
                  paramInt |= 0x0;
                  break;
                  if ((i & 0x80) != 0) {
                    paramInt = VMFlags.VM_FS.getFlag();
                  } else {
                    paramInt = 0;
                  }
                }
                if (i >= k) {
                  break label769;
                }
                paramInt = 1;
                c = paramInt;
              }
              if (i == 0) {}
              for (paramInt = VMFlags.VM_FZ.getFlag();; paramInt = VMFlags.VM_FS.getFlag() & i)
              {
                paramInt |= 0x0;
                break;
              }
              a(true, a, j, (int)(a(true, a, j) & -1L + a(true, a, paramInt) & 0xFFFFFFFFFFFFFFFF));
              continue;
              a(false, a, j, (int)(a(false, a, j) & -1L + a(false, a, paramInt) & 0xFFFFFFFFFFFFFFFF));
              continue;
              k = a(((e)localObject).a(), a, j);
              i = (int)(k & -1L - a(((e)localObject).a(), a, paramInt) & 0xFFFFFFFFFFFFFFFF);
              if (i == 0) {
                paramInt = VMFlags.VM_FZ.getFlag();
              }
              for (;;)
              {
                c = paramInt;
                a(((e)localObject).a(), a, j, i);
                break;
                if (i > k) {
                  paramInt = 1;
                } else {
                  paramInt = VMFlags.VM_FS.getFlag() & i | 0x0;
                }
              }
              a(true, a, j, (int)(a(true, a, j) & -1L - a(true, a, paramInt) & 0xFFFFFFFFFFFFFFFF));
              continue;
              a(false, a, j, (int)(a(false, a, j) & -1L - a(false, a, paramInt) & 0xFFFFFFFFFFFFFFFF));
              continue;
              if ((c & VMFlags.VM_FZ.getFlag()) != 0)
              {
                a(a(false, a, j));
                break;
                if ((c & VMFlags.VM_FZ.getFlag()) == 0)
                {
                  a(a(false, a, j));
                  break;
                  i = (int)(a(((e)localObject).a(), a, j) & 0L);
                  paramInt = i;
                  if (((e)localObject).a()) {
                    paramInt = i & 0xFF;
                  }
                  a(((e)localObject).a(), a, j, paramInt);
                  if (paramInt == 0) {}
                  for (paramInt = VMFlags.VM_FZ.getFlag();; paramInt = VMFlags.VM_FS.getFlag() & paramInt)
                  {
                    c = paramInt;
                    break;
                  }
                  a(true, a, j, (int)(a(true, a, j) & 0L));
                  continue;
                  a(false, a, j, (int)(a(false, a, j) & 0L));
                  continue;
                  paramInt = (int)(a(((e)localObject).a(), a, j) & 0xFFFFFFFFFFFFFFFE);
                  a(((e)localObject).a(), a, j, paramInt);
                  if (paramInt == 0) {}
                  for (paramInt = VMFlags.VM_FZ.getFlag();; paramInt = VMFlags.VM_FS.getFlag() & paramInt)
                  {
                    c = paramInt;
                    break;
                  }
                  a(true, a, j, (int)(a(true, a, j) & 0xFFFFFFFFFFFFFFFE));
                  continue;
                  a(false, a, j, (int)(a(false, a, j) & 0xFFFFFFFFFFFFFFFE));
                  continue;
                  a(a(false, a, j));
                  break;
                  i = a(((e)localObject).a(), a, j) ^ a(((e)localObject).a(), a, paramInt);
                  if (i == 0) {}
                  for (paramInt = VMFlags.VM_FZ.getFlag();; paramInt = VMFlags.VM_FS.getFlag() & i)
                  {
                    c = paramInt;
                    a(((e)localObject).a(), a, j, i);
                    break;
                  }
                  i = a(((e)localObject).a(), a, j) & a(((e)localObject).a(), a, paramInt);
                  if (i == 0) {}
                  for (paramInt = VMFlags.VM_FZ.getFlag();; paramInt = VMFlags.VM_FS.getFlag() & i)
                  {
                    c = paramInt;
                    a(((e)localObject).a(), a, j, i);
                    break;
                  }
                  i = a(((e)localObject).a(), a, j) | a(((e)localObject).a(), a, paramInt);
                  if (i == 0) {}
                  for (paramInt = VMFlags.VM_FZ.getFlag();; paramInt = VMFlags.VM_FS.getFlag() & i)
                  {
                    c = paramInt;
                    a(((e)localObject).a(), a, j, i);
                    break;
                  }
                  i = a(((e)localObject).a(), a, j);
                  paramInt = a(((e)localObject).a(), a, paramInt) & i;
                  if (paramInt == 0) {
                    paramInt = VMFlags.VM_FZ.getFlag();
                  }
                  for (;;)
                  {
                    c = paramInt;
                    break;
                    paramInt &= VMFlags.VM_FS.getFlag();
                  }
                  if ((c & VMFlags.VM_FS.getFlag()) != 0)
                  {
                    a(a(false, a, j));
                    break;
                    if ((c & VMFlags.VM_FS.getFlag()) == 0)
                    {
                      a(a(false, a, j));
                      break;
                      if ((c & VMFlags.VM_FC.getFlag()) != 0)
                      {
                        a(a(false, a, j));
                        break;
                        if ((c & (VMFlags.VM_FC.getFlag() | VMFlags.VM_FZ.getFlag())) != 0)
                        {
                          a(a(false, a, j));
                          break;
                          if ((c & (VMFlags.VM_FC.getFlag() | VMFlags.VM_FZ.getFlag())) == 0)
                          {
                            a(a(false, a, j));
                            break;
                            if ((c & VMFlags.VM_FC.getFlag()) == 0)
                            {
                              a(a(false, a, j));
                              break;
                              localObject = b;
                              localObject[7] -= 4;
                              a(false, a, b[7] & 0x3FFFF, a(false, a, j));
                              continue;
                              a(false, a, j, a(false, a, b[7] & 0x3FFFF));
                              localObject = b;
                              localObject[7] += 4;
                              continue;
                              localObject = b;
                              localObject[7] -= 4;
                              a(false, a, b[7] & 0x3FFFF, f + 1);
                              a(a(false, a, j));
                              break;
                              a(((e)localObject).a(), a, j, a(((e)localObject).a(), a, j) ^ 0xFFFFFFFF);
                              continue;
                              i = a(((e)localObject).a(), a, j);
                              int m = a(((e)localObject).a(), a, paramInt);
                              k = i << m;
                              if (k == 0)
                              {
                                paramInt = VMFlags.VM_FZ.getFlag();
                                if ((i << m - 1 & 0x80000000) == 0) {
                                  break label2268;
                                }
                              }
                              for (i = VMFlags.VM_FC.getFlag();; i = 0)
                              {
                                c = (i | paramInt);
                                a(((e)localObject).a(), a, j, k);
                                break;
                                paramInt = VMFlags.VM_FS.getFlag() & k;
                                break label2209;
                              }
                              i = a(((e)localObject).a(), a, j);
                              k = a(((e)localObject).a(), a, paramInt);
                              m = i >>> k;
                              if (m == 0) {}
                              for (paramInt = VMFlags.VM_FZ.getFlag();; paramInt = VMFlags.VM_FS.getFlag() & m)
                              {
                                c = (paramInt | i >>> k - 1 & VMFlags.VM_FC.getFlag());
                                a(((e)localObject).a(), a, j, m);
                                break;
                              }
                              i = a(((e)localObject).a(), a, j);
                              k = a(((e)localObject).a(), a, paramInt);
                              m = i >> k;
                              if (m == 0) {}
                              for (paramInt = VMFlags.VM_FZ.getFlag();; paramInt = VMFlags.VM_FS.getFlag() & m)
                              {
                                c = (paramInt | i >> k - 1 & VMFlags.VM_FC.getFlag());
                                a(((e)localObject).a(), a, j, m);
                                break;
                              }
                              i = -a(((e)localObject).a(), a, j);
                              if (i == 0) {}
                              for (paramInt = VMFlags.VM_FZ.getFlag();; paramInt = VMFlags.VM_FC.getFlag() | VMFlags.VM_FS.getFlag() & i)
                              {
                                c = paramInt;
                                a(((e)localObject).a(), a, j, i);
                                break;
                              }
                              a(true, a, j, -a(true, a, j));
                              continue;
                              a(false, a, j, -a(false, a, j));
                              continue;
                              i = 0;
                              paramInt = b[7] - 4;
                              while (i < 8)
                              {
                                a(false, a, 0x3FFFF & paramInt, b[i]);
                                i += 1;
                                paramInt -= 4;
                              }
                              localObject = b;
                              localObject[7] -= 32;
                              continue;
                              i = 0;
                              paramInt = b[7];
                              while (i < 8)
                              {
                                b[(7 - i)] = a(false, a, 0x3FFFF & paramInt);
                                i += 1;
                                paramInt += 4;
                              }
                              localObject = b;
                              localObject[7] -= 4;
                              a(false, a, b[7] & 0x3FFFF, c);
                              continue;
                              c = a(false, a, b[7] & 0x3FFFF);
                              localObject = b;
                              localObject[7] += 4;
                              continue;
                              a(false, a, j, a(true, a, paramInt));
                              continue;
                              a(false, a, j, (byte)a(true, a, paramInt));
                              continue;
                              i = a(((e)localObject).a(), a, j);
                              a(((e)localObject).a(), a, j, a(((e)localObject).a(), a, paramInt));
                              a(((e)localObject).a(), a, paramInt, i);
                              continue;
                              paramInt = (int)(a(((e)localObject).a(), a, j) & -1L * a(((e)localObject).a(), a, paramInt) & 0xFFFFFFFFFFFFFFFF & 0xFFFFFFFFFFFFFFFF);
                              a(((e)localObject).a(), a, j, paramInt);
                              continue;
                              paramInt = a(((e)localObject).a(), a, paramInt);
                              if (paramInt != 0)
                              {
                                paramInt = a(((e)localObject).a(), a, j) / paramInt;
                                a(((e)localObject).a(), a, j, paramInt);
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
      }
    case 51: 
      label769:
      label2209:
      label2268:
      i = a(((e)localObject).a(), a, j);
      k = c;
      k = VMFlags.VM_FC.getFlag() & k;
      paramInt = (int)(i & -1L + a(((e)localObject).a(), a, paramInt) & -1L + k & 0xFFFFFFFFFFFFFFFF);
      if (((e)localObject).a()) {
        paramInt &= 0xFF;
      }
      break;
    }
    for (;;)
    {
      if ((paramInt < i) || ((paramInt == i) && (k != 0)))
      {
        i = 1;
        c = i;
        a(((e)localObject).a(), a, j, paramInt);
        break label296;
      }
      if (paramInt == 0) {}
      for (i = VMFlags.VM_FZ.getFlag();; i = VMFlags.VM_FS.getFlag() & paramInt)
      {
        i |= 0x0;
        break;
      }
      i = a(((e)localObject).a(), a, j);
      k = c;
      k = VMFlags.VM_FC.getFlag() & k;
      paramInt = (int)(i & -1L - a(((e)localObject).a(), a, paramInt) & -1L - k & 0xFFFFFFFFFFFFFFFF);
      if (((e)localObject).a()) {
        paramInt &= 0xFF;
      }
      for (;;)
      {
        if ((paramInt > i) || ((paramInt == i) && (k != 0)))
        {
          i = 1;
          c = i;
          a(((e)localObject).a(), a, j, paramInt);
          break label296;
        }
        if (paramInt == 0) {}
        for (i = VMFlags.VM_FZ.getFlag();; i = VMFlags.VM_FS.getFlag() & paramInt)
        {
          i |= 0x0;
          break;
        }
        if (b[7] >= 262144) {
          return true;
        }
        a(a(false, a, b[7] & 0x3FFFF));
        localObject = b;
        localObject[7] += 4;
        break;
        a(VMStandardFilters.findFilter(((e)localObject).b().b()));
        break label296;
      }
    }
  }
  
  private boolean a(byte[] paramArrayOfByte)
  {
    return a == paramArrayOfByte;
  }
  
  private void b(g paramg)
  {
    List localList = paramg.b();
    Iterator localIterator = localList.iterator();
    e locale;
    int i;
    label110:
    int j;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        locale = (e)localIterator.next();
        switch (c.a[locale.d().ordinal()])
        {
        case 2: 
        case 3: 
        default: 
          if ((d.a[locale.d().getVMCommand()] & 0x40) != 0)
          {
            i = localList.indexOf(locale) + 1;
            if (i >= localList.size()) {
              break label439;
            }
            j = d.a[((e)localList.get(i)).d().getVMCommand()];
            if ((j & 0x38) != 0) {
              i = 1;
            }
          }
          break;
        }
      }
    }
    label152:
    while (i == 0) {
      switch (c.a[locale.d().ordinal()])
      {
      default: 
        break;
      case 7: 
        if (locale.a()) {}
        for (paramg = VMCommands.VM_ADDB;; paramg = VMCommands.VM_ADDD)
        {
          locale.a(paramg);
          break;
          if (locale.a()) {}
          for (paramg = VMCommands.VM_MOVB;; paramg = VMCommands.VM_MOVD)
          {
            locale.a(paramg);
            break;
          }
          if (locale.a()) {}
          for (paramg = VMCommands.VM_CMPB;; paramg = VMCommands.VM_CMPD)
          {
            locale.a(paramg);
            break;
          }
          if ((j & 0x40) != 0)
          {
            i = 0;
            break label152;
          }
          i += 1;
          break label110;
        }
      case 10: 
        if (locale.a()) {}
        for (paramg = VMCommands.VM_SUBB;; paramg = VMCommands.VM_SUBD)
        {
          locale.a(paramg);
          break;
        }
      case 15: 
        if (locale.a()) {}
        for (paramg = VMCommands.VM_INCB;; paramg = VMCommands.VM_INCD)
        {
          locale.a(paramg);
          break;
        }
      case 18: 
        if (locale.a()) {}
        for (paramg = VMCommands.VM_DECB;; paramg = VMCommands.VM_DECD)
        {
          locale.a(paramg);
          break;
        }
      case 39: 
        if (locale.a()) {}
        for (paramg = VMCommands.VM_NEGB;; paramg = VMCommands.VM_NEGD)
        {
          locale.a(paramg);
          break;
        }
        return;
        label439:
        i = 0;
      }
    }
  }
  
  public void a()
  {
    if (a == null) {
      a = new byte[262148];
    }
  }
  
  public void a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    int i;
    if (paramInt1 < 262144) {
      i = 0;
    }
    for (;;)
    {
      if ((i >= Math.min(paramArrayOfByte.length - paramInt2, paramInt3)) || (262144 - paramInt1 < i)) {
        return;
      }
      a[(paramInt1 + i)] = paramArrayOfByte[(paramInt2 + i)];
      i += 1;
    }
  }
  
  public void a(g paramg)
  {
    int k = 0;
    int i = 0;
    while (i < paramg.g().length)
    {
      b[i] = paramg.g()[i];
      i += 1;
    }
    long l1 = Math.min(paramg.f().size(), 8192) & 0xFFFFFFFF;
    if (l1 != 0L)
    {
      i = 0;
      while (i < l1)
      {
        a[(245760 + i)] = ((Byte)paramg.f().get(i)).byteValue();
        i += 1;
      }
    }
    long l2 = 0xFFFFFFFFFFFFFFFF & Math.min(paramg.h().size(), 8192L - l1);
    if (l2 != 0L)
    {
      i = 0;
      while (i < l2)
      {
        a[((int)l1 + 245760 + i)] = ((Byte)paramg.h().get(i)).byteValue();
        i += 1;
      }
    }
    b[7] = 262144;
    c = 0;
    if (paramg.a().size() != 0) {}
    for (List localList = paramg.a();; localList = paramg.b())
    {
      if (!a(localList, paramg.c())) {
        ((e)localList.get(0)).a(VMCommands.VM_RET);
      }
      int m = a(false, a, 245792) & 0x3FFFF;
      int n = a(false, a, 245788) & 0x3FFFF;
      int j = n;
      i = m;
      if (m + n >= 262144)
      {
        j = 0;
        i = 0;
      }
      paramg.b(i);
      paramg.c(j);
      paramg.f().clear();
      j = Math.min(a(false, a, 245808), 8128);
      if (j == 0) {
        break;
      }
      paramg.f().setSize(j + 64);
      i = k;
      while (i < j + 64)
      {
        paramg.f().set(i, Byte.valueOf(a[(245760 + i)]));
        i += 1;
      }
    }
  }
  
  public void a(Vector<Byte> paramVector, int paramInt1, int paramInt2)
  {
    paramVector.set(paramInt1 + 0, Byte.valueOf((byte)(paramInt2 & 0xFF)));
    paramVector.set(paramInt1 + 1, Byte.valueOf((byte)(paramInt2 >>> 8 & 0xFF)));
    paramVector.set(paramInt1 + 2, Byte.valueOf((byte)(paramInt2 >>> 16 & 0xFF)));
    paramVector.set(paramInt1 + 3, Byte.valueOf((byte)(paramInt2 >>> 24 & 0xFF)));
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt, g paramg)
  {
    l();
    int j = Math.min(32768, paramInt);
    int i = 0;
    Object localObject;
    while (i < j)
    {
      localObject = am;
      localObject[i] = ((byte)(localObject[i] | paramArrayOfByte[i]));
      i += 1;
    }
    j = 1;
    i = 0;
    while (j < paramInt)
    {
      i = (byte)(i ^ paramArrayOfByte[j]);
      j += 1;
    }
    d(8);
    paramg.a(0);
    j = paramInt;
    if (i == paramArrayOfByte[0])
    {
      paramArrayOfByte = a(paramArrayOfByte, paramInt);
      i = paramInt;
      if (paramArrayOfByte != VMStandardFilters.VMSF_NONE)
      {
        localObject = new e();
        ((e)localObject).a(VMCommands.VM_STANDARD);
        ((e)localObject).b().b(paramArrayOfByte.getFilter());
        ((e)localObject).b().a(VMOpType.VM_OPNONE);
        ((e)localObject).c().a(VMOpType.VM_OPNONE);
        paramg.b().add(localObject);
        paramg.a(paramg.c() + 1);
        i = 0;
      }
      paramInt = n();
      d(1);
      if ((paramInt & 0x8000) != 0)
      {
        long l = a(this);
        paramInt = 0;
        while ((ak < i) && (paramInt < (l & 0L)))
        {
          paramg.h().add(Byte.valueOf((byte)(n() >> 8)));
          d(8);
          paramInt += 1;
        }
      }
      j = i;
      if (ak < i)
      {
        paramArrayOfByte = new e();
        paramInt = n();
        label325:
        boolean bool;
        if ((paramInt & 0x8000) == 0)
        {
          paramArrayOfByte.a(VMCommands.findVMCommand(paramInt >> 12));
          d(4);
          if ((d.a[paramArrayOfByte.d().getVMCommand()] & 0x4) == 0) {
            break label486;
          }
          if (n() >> 15 != 1) {
            break label480;
          }
          bool = true;
          label355:
          paramArrayOfByte.a(bool);
          d(1);
          label366:
          paramArrayOfByte.b().a(VMOpType.VM_OPNONE);
          paramArrayOfByte.c().a(VMOpType.VM_OPNONE);
          paramInt = d.a[paramArrayOfByte.d().getVMCommand()] & 0x3;
          if (paramInt > 0)
          {
            a(paramArrayOfByte.b(), paramArrayOfByte.a());
            if (paramInt != 2) {
              break label494;
            }
            a(paramArrayOfByte.c(), paramArrayOfByte.a());
          }
        }
        for (;;)
        {
          paramg.a(paramg.c() + 1);
          paramg.b().add(paramArrayOfByte);
          break;
          paramArrayOfByte.a(VMCommands.findVMCommand((paramInt >> 10) - 24));
          d(6);
          break label325;
          label480:
          bool = false;
          break label355;
          label486:
          paramArrayOfByte.a(false);
          break label366;
          label494:
          if ((paramArrayOfByte.b().c() == VMOpType.VM_OPINT) && ((d.a[paramArrayOfByte.d().getVMCommand()] & 0x18) != 0))
          {
            j = paramArrayOfByte.b().b();
            if (j < 256) {
              break label559;
            }
            paramInt = j - 256;
            paramArrayOfByte.b().b(paramInt);
          }
        }
        label559:
        if (j >= 136) {
          paramInt = j - 264;
        }
        for (;;)
        {
          paramInt += paramg.c();
          break;
          if (j >= 16)
          {
            paramInt = j - 8;
          }
          else
          {
            paramInt = j;
            if (j >= 8) {
              paramInt = j - 16;
            }
          }
        }
      }
    }
    paramArrayOfByte = new e();
    paramArrayOfByte.a(VMCommands.VM_RET);
    paramArrayOfByte.b().a(VMOpType.VM_OPNONE);
    paramArrayOfByte.c().a(VMOpType.VM_OPNONE);
    paramg.b().add(paramArrayOfByte);
    paramg.a(paramg.c() + 1);
    if (j != 0) {
      b(paramg);
    }
  }
  
  public byte[] b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.vm.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */