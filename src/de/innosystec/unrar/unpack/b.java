package de.innosystec.unrar.unpack;

import de.innosystec.unrar.unpack.ppm.BlockTypes;
import de.innosystec.unrar.unpack.ppm.l;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Vector;

public final class b
  extends d
{
  public static int[] a = { 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 14, 0, 12 };
  private boolean aA;
  private int aB;
  private int aC;
  private final de.innosystec.unrar.unpack.ppm.b an = new de.innosystec.unrar.unpack.ppm.b();
  private int ao;
  private de.innosystec.unrar.unpack.vm.b ap = new de.innosystec.unrar.unpack.vm.b();
  private List<e> aq = new ArrayList();
  private List<e> ar = new ArrayList();
  private List<Integer> as = new ArrayList();
  private int at;
  private boolean au;
  private byte[] av = new byte['Ɣ'];
  private BlockTypes aw;
  private boolean ax;
  private long ay;
  private boolean az;
  
  public b(a parama)
  {
    e = parama;
    i = null;
    ax = false;
    c = false;
    d = false;
    f = false;
  }
  
  private void a(de.innosystec.unrar.unpack.vm.g paramg)
  {
    if (paramg.f().size() > 0)
    {
      paramg.g()[6] = ((int)ay);
      ap.a(paramg.f(), 36, (int)ay);
      ap.a(paramg.f(), 40, (int)(ay >>> 32));
      ap.a(paramg);
    }
  }
  
  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (ay >= h) {
      return;
    }
    long l = h - ay;
    if (paramInt2 > l) {}
    for (int i = (int)l;; i = paramInt2)
    {
      e.b(paramArrayOfByte, paramInt1, i);
      ay += paramInt2;
      return;
    }
  }
  
  private boolean a(int paramInt1, List<Byte> paramList, int paramInt2)
  {
    de.innosystec.unrar.unpack.vm.a locala = new de.innosystec.unrar.unpack.vm.a();
    locala.l();
    paramInt2 = 0;
    while (paramInt2 < Math.min(32768, paramList.size()))
    {
      locala.o()[paramInt2] = ((Byte)paramList.get(paramInt2)).byteValue();
      paramInt2 += 1;
    }
    ap.a();
    if ((paramInt1 & 0x80) != 0)
    {
      paramInt2 = de.innosystec.unrar.unpack.vm.b.a(locala);
      if (paramInt2 == 0) {
        r();
      }
    }
    while ((paramInt2 > aq.size()) || (paramInt2 > as.size()))
    {
      return false;
      paramInt2 -= 1;
      continue;
      paramInt2 = at;
    }
    at = paramInt2;
    if (paramInt2 == aq.size()) {}
    e locale;
    for (int i = 1;; i = 0)
    {
      locale = new e();
      if (i == 0) {
        break label483;
      }
      if (paramInt2 <= 1024) {
        break;
      }
      return false;
    }
    paramList = new e();
    aq.add(paramList);
    locale.d(aq.size() - 1);
    as.add(Integer.valueOf(0));
    paramList.c(0);
    ar.add(locale);
    locale.c(paramList.c());
    int j = de.innosystec.unrar.unpack.vm.b.a(locala);
    if ((paramInt1 & 0x40) != 0) {
      j += 258;
    }
    for (;;)
    {
      locale.b(this.k + j & 0x3FFFFF);
      if ((paramInt1 & 0x20) != 0)
      {
        locale.a(de.innosystec.unrar.unpack.vm.b.a(locala));
        if ((l == this.k) || ((l - this.k & 0x3FFFFF) > j)) {
          break label563;
        }
      }
      label483:
      label563:
      for (boolean bool = true;; bool = false)
      {
        locale.a(bool);
        as.set(paramInt2, Integer.valueOf(locale.a()));
        Arrays.fill(locale.f().g(), 0);
        locale.f().g()[3] = 245760;
        locale.f().g()[4] = locale.a();
        locale.f().g()[5] = locale.c();
        if ((paramInt1 & 0x10) == 0) {
          break label569;
        }
        j = locala.n();
        locala.d(7);
        paramInt2 = 0;
        while (paramInt2 < 7)
        {
          if ((1 << paramInt2 & j >>> 9) != 0) {
            locale.f().g()[paramInt2] = de.innosystec.unrar.unpack.vm.b.a(locala);
          }
          paramInt2 += 1;
        }
        paramList = (e)aq.get(paramInt2);
        locale.d(paramInt2);
        paramList.c(paramList.c() + 1);
        break;
        if (paramInt2 < as.size()) {}
        for (int k = ((Integer)as.get(paramInt2)).intValue();; k = 0)
        {
          locale.a(k);
          break;
        }
      }
      label569:
      if (i != 0)
      {
        i = de.innosystec.unrar.unpack.vm.b.a(locala);
        if ((i >= 65536) || (i == 0)) {
          return false;
        }
        byte[] arrayOfByte = new byte[i];
        paramInt2 = 0;
        while (paramInt2 < i)
        {
          if (locala.e(3)) {
            return false;
          }
          arrayOfByte[paramInt2] = ((byte)(locala.n() >> 8));
          locala.d(8);
          paramInt2 += 1;
        }
        ap.a(arrayOfByte, i, paramList.f());
      }
      locale.f().a(paramList.f().b());
      locale.f().a(paramList.f().c());
      paramInt2 = paramList.f().h().size();
      if ((paramInt2 > 0) && (paramInt2 < 8192)) {
        locale.f().a(paramList.f().h());
      }
      if (locale.f().f().size() < 64)
      {
        locale.f().f().clear();
        locale.f().f().setSize(64);
      }
      paramList = locale.f().f();
      paramInt2 = 0;
      while (paramInt2 < 7)
      {
        ap.a(paramList, paramInt2 * 4, locale.f().g()[paramInt2]);
        paramInt2 += 1;
      }
      ap.a(paramList, 28, locale.a());
      ap.a(paramList, 32, 0);
      ap.a(paramList, 36, 0);
      ap.a(paramList, 40, 0);
      ap.a(paramList, 44, locale.c());
      paramInt2 = 0;
      while (paramInt2 < 16)
      {
        paramList.set(paramInt2 + 48, Byte.valueOf((byte)0));
        paramInt2 += 1;
      }
      if ((paramInt1 & 0x8) != 0)
      {
        if (locala.e(3)) {
          return false;
        }
        paramInt2 = de.innosystec.unrar.unpack.vm.b.a(locala);
        if (paramInt2 > 8128) {
          return false;
        }
        paramInt1 = locale.f().f().size();
        if (paramInt1 < paramInt2 + 64) {
          locale.f().f().setSize(paramInt2 + 64 - paramInt1);
        }
        paramList = locale.f().f();
        paramInt1 = 0;
        while (paramInt1 < paramInt2)
        {
          if (locala.e(3)) {
            return false;
          }
          paramList.set(64 + paramInt1, Byte.valueOf((byte)(locala.n() >>> 8)));
          locala.d(8);
          paramInt1 += 1;
        }
      }
      return true;
    }
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    if (paramInt2 != paramInt1) {
      f = true;
    }
    if (paramInt2 < paramInt1)
    {
      a(i, paramInt1, -paramInt1 & 0x3FFFFF);
      a(i, 0, paramInt2);
      d = true;
      return;
    }
    a(i, paramInt1, paramInt2 - paramInt1);
  }
  
  private void d(int paramInt1, int paramInt2)
  {
    M = paramInt2;
    N = paramInt1;
  }
  
  private void e(int paramInt1, int paramInt2)
  {
    int j = k - paramInt2;
    paramInt2 = j;
    int i = paramInt1;
    if (j >= 0)
    {
      paramInt2 = j;
      i = paramInt1;
      if (j < 4194044)
      {
        paramInt2 = j;
        i = paramInt1;
        if (k < 4194044)
        {
          byte[] arrayOfByte = this.i;
          paramInt2 = k;
          k = (paramInt2 + 1);
          arrayOfByte[paramInt2] = this.i[j];
          i = j + 1;
          paramInt2 = paramInt1;
          paramInt1 = i;
          for (;;)
          {
            paramInt2 -= 1;
            if (paramInt2 <= 0) {
              break;
            }
            arrayOfByte = this.i;
            i = k;
            k = (i + 1);
            arrayOfByte[i] = this.i[paramInt1];
            paramInt1 += 1;
          }
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
  
  private void f(boolean paramBoolean)
  {
    int[] arrayOfInt = new int[60];
    byte[] arrayOfByte = new byte[60];
    int k;
    int i;
    int m;
    int j;
    int n;
    if (arrayOfInt[1] == 0)
    {
      k = 0;
      i = 0;
      m = 0;
      j = 0;
      while (j < a.length)
      {
        int i1 = a[j];
        n = 0;
        while (n < i1)
        {
          arrayOfInt[m] = k;
          arrayOfByte[m] = ((byte)i);
          n += 1;
          m += 1;
          k += (1 << i);
        }
        j += 1;
        i += 1;
      }
    }
    az = true;
    if (!c)
    {
      a(paramBoolean);
      if (c()) {}
    }
    while (aA) {
      do
      {
        return;
      } while (((!paramBoolean) || (!au)) && (!t()));
    }
    for (;;)
    {
      label152:
      this.k &= 0x3FFFFF;
      if ((ak > b) && (!c())) {}
      Object localObject;
      for (;;)
      {
        q();
        return;
        if (((l - this.k & 0x3FFFFF) < 260) && (l != this.k))
        {
          q();
          if (ay > h) {
            break;
          }
          if (c)
          {
            az = false;
            return;
          }
        }
        if (aw == BlockTypes.BLOCK_PPM)
        {
          i = an.b();
          if (i == -1)
          {
            aA = true;
            continue;
          }
          if (i == ao)
          {
            j = an.b();
            if (j == 0)
            {
              if (t()) {
                break label152;
              }
              continue;
            }
            if ((j == 2) || (j == -1)) {
              continue;
            }
            if (j == 3)
            {
              if (v()) {
                break label152;
              }
              continue;
            }
            if (j == 4)
            {
              m = 0;
              k = 0;
              j = 0;
              i = 0;
              if ((i < 4) && (m == 0))
              {
                n = an.b();
                if (n == -1) {
                  m = 1;
                }
                for (;;)
                {
                  i += 1;
                  break;
                  if (i == 3) {
                    k = n & 0xFF;
                  } else {
                    j = (j << 8) + (n & 0xFF);
                  }
                }
              }
              if (m != 0) {
                continue;
              }
              e(k + 32, j + 2);
              break label152;
            }
            if (j == 5)
            {
              i = an.b();
              if (i == -1) {
                continue;
              }
              e(i + 4, 1);
              break label152;
            }
          }
          localObject = this.i;
          j = this.k;
          this.k = (j + 1);
          localObject[j] = ((byte)i);
          break label152;
        }
        i = a(Z);
        if (i < 256)
        {
          localObject = this.i;
          j = this.k;
          this.k = (j + 1);
          localObject[j] = ((byte)i);
          break label152;
        }
        if (i >= 271)
        {
          localObject = ae;
          j = i - 271;
          i = localObject[j] + 3;
          k = af[j];
          j = i;
          if (k > 0)
          {
            j = i + (m() >>> 16 - k);
            c(k);
          }
          n = a(aa);
          k = arrayOfInt[n] + 1;
          m = arrayOfByte[n];
          i = k;
          if (m > 0)
          {
            if (n <= 9) {
              break label786;
            }
            i = k;
            if (m > 4)
            {
              i = k + (m() >>> 20 - m << 4);
              c(m - 4);
            }
            if (aC <= 0) {
              break label739;
            }
            aC -= 1;
            i += aB;
          }
          for (;;)
          {
            k = j;
            if (i >= 8192)
            {
              j += 1;
              k = j;
              if (i >= 262144L) {
                k = j + 1;
              }
            }
            g(i);
            d(k, i);
            e(k, i);
            break;
            label739:
            k = a(ab);
            if (k == 16)
            {
              aC = 15;
              i += aB;
            }
            else
            {
              i += k;
              aB = k;
              continue;
              label786:
              i = k + (m() >>> 16 - m);
              c(m);
            }
          }
        }
        if (i == 256)
        {
          if (s()) {
            break label152;
          }
          continue;
        }
        if (i != 257) {
          break label843;
        }
        if (u()) {
          break label152;
        }
      }
      label843:
      if (i == 258)
      {
        if (N != 0) {
          e(N, M);
        }
      }
      else if (i < 263)
      {
        i -= 259;
        k = this.j[i];
        while (i > 0)
        {
          this.j[i] = this.j[(i - 1)];
          i -= 1;
        }
        this.j[0] = k;
        i = a(ac);
        j = ae[i] + 2;
        m = af[i];
        i = j;
        if (m > 0)
        {
          i = j + (m() >>> 16 - m);
          c(m);
        }
        d(i, k);
        e(i, k);
      }
      else if (i < 272)
      {
        localObject = ai;
        i -= 263;
        j = localObject[i] + 1;
        k = aj[i];
        i = j;
        if (k > 0)
        {
          i = j + (m() >>> 16 - k);
          c(k);
        }
        g(i);
        d(2, i);
        e(2, i);
      }
    }
  }
  
  private byte[] f(int paramInt)
  {
    try
    {
      byte[] arrayOfByte = new byte[paramInt];
      return arrayOfByte;
    }
    catch (OutOfMemoryError localOutOfMemoryError) {}
    return f(paramInt / 2);
  }
  
  private void g(int paramInt)
  {
    j[3] = j[2];
    j[2] = j[1];
    j[1] = j[0];
    j[0] = paramInt;
  }
  
  private void p()
  {
    byte[] arrayOfByte = new byte[65536];
    int i = e.a(arrayOfByte, 0, (int)Math.min(arrayOfByte.length, h));
    if ((i == 0) || (i == -1)) {
      return;
    }
    if (i < h) {}
    for (;;)
    {
      e.b(arrayOfByte, 0, i);
      if (h < 0L) {
        break;
      }
      h -= i;
      break;
      i = (int)h;
    }
  }
  
  private void q()
  {
    int k = l;
    int m = this.k;
    int i = 0;
    int j = k;
    k = m - k & 0x3FFFFF;
    Object localObject2;
    if (i < ar.size())
    {
      localObject2 = (e)ar.get(i);
      if (localObject2 == null)
      {
        m = j;
        j = i;
        i = m;
      }
    }
    for (;;)
    {
      m = i;
      i = j + 1;
      j = m;
      break;
      if (((e)localObject2).d())
      {
        ((e)localObject2).a(false);
        m = i;
        i = j;
        j = m;
      }
      else
      {
        int n = ((e)localObject2).b();
        int i1 = ((e)localObject2).a();
        if ((n - j & 0x3FFFFF) < k)
        {
          m = k;
          k = j;
          if (j != n)
          {
            c(j, n);
            m = this.k - n & 0x3FFFFF;
            k = n;
          }
          j = i;
          Object localObject1;
          if (i1 <= m)
          {
            m = n + i1 & 0x3FFFFF;
            if ((n < m) || (m == 0)) {
              ap.a(0, this.i, n, i1);
            }
            for (;;)
            {
              localObject1 = ((e)aq.get(((e)localObject2).e())).f();
              localObject2 = ((e)localObject2).f();
              if (((de.innosystec.unrar.unpack.vm.g)localObject1).f().size() <= 64) {
                break;
              }
              ((de.innosystec.unrar.unpack.vm.g)localObject2).f().setSize(((de.innosystec.unrar.unpack.vm.g)localObject1).f().size());
              j = 0;
              while (j < ((de.innosystec.unrar.unpack.vm.g)localObject1).f().size() - 64)
              {
                ((de.innosystec.unrar.unpack.vm.g)localObject2).f().set(j + 64, ((de.innosystec.unrar.unpack.vm.g)localObject1).f().get(j + 64));
                j += 1;
              }
              j = 4194304 - n;
              ap.a(0, this.i, n, j);
              ap.a(j, this.i, 0, m);
            }
            a((de.innosystec.unrar.unpack.vm.g)localObject2);
            if (((de.innosystec.unrar.unpack.vm.g)localObject2).f().size() > 64)
            {
              if (((de.innosystec.unrar.unpack.vm.g)localObject1).f().size() < ((de.innosystec.unrar.unpack.vm.g)localObject2).f().size()) {
                ((de.innosystec.unrar.unpack.vm.g)localObject1).f().setSize(((de.innosystec.unrar.unpack.vm.g)localObject2).f().size());
              }
              j = 0;
              while (j < ((de.innosystec.unrar.unpack.vm.g)localObject2).f().size() - 64)
              {
                ((de.innosystec.unrar.unpack.vm.g)localObject1).f().set(j + 64, ((de.innosystec.unrar.unpack.vm.g)localObject2).f().get(j + 64));
                j += 1;
              }
            }
            ((de.innosystec.unrar.unpack.vm.g)localObject1).f().clear();
            i1 = ((de.innosystec.unrar.unpack.vm.g)localObject2).d();
            k = ((de.innosystec.unrar.unpack.vm.g)localObject2).e();
            localObject1 = new byte[k];
            j = 0;
            while (j < k)
            {
              localObject1[j] = ap.b()[(i1 + j)];
              j += 1;
            }
            ar.set(i, null);
            j = i;
            for (;;)
            {
              if (j + 1 < ar.size())
              {
                localObject2 = (e)ar.get(j + 1);
                if ((localObject2 != null) && (((e)localObject2).b() == n) && (((e)localObject2).a() == k) && (!((e)localObject2).d())) {}
              }
              else
              {
                e.b((byte[])localObject1, 0, k);
                f = true;
                ay += k;
                k = this.k - m & 0x3FFFFF;
                i = m;
                break;
              }
              ap.a(0, (byte[])localObject1, 0, k);
              localObject1 = ((e)aq.get(((e)localObject2).e())).f();
              localObject2 = ((e)localObject2).f();
              if (((de.innosystec.unrar.unpack.vm.g)localObject1).f().size() > 64)
              {
                ((de.innosystec.unrar.unpack.vm.g)localObject2).f().setSize(((de.innosystec.unrar.unpack.vm.g)localObject1).f().size());
                i = 0;
                while (i < ((de.innosystec.unrar.unpack.vm.g)localObject1).f().size() - 64)
                {
                  ((de.innosystec.unrar.unpack.vm.g)localObject2).f().set(i + 64, ((de.innosystec.unrar.unpack.vm.g)localObject1).f().get(i + 64));
                  i += 1;
                }
              }
              a((de.innosystec.unrar.unpack.vm.g)localObject2);
              if (((de.innosystec.unrar.unpack.vm.g)localObject2).f().size() > 64)
              {
                if (((de.innosystec.unrar.unpack.vm.g)localObject1).f().size() < ((de.innosystec.unrar.unpack.vm.g)localObject2).f().size()) {
                  ((de.innosystec.unrar.unpack.vm.g)localObject1).f().setSize(((de.innosystec.unrar.unpack.vm.g)localObject2).f().size());
                }
                i = 0;
                while (i < ((de.innosystec.unrar.unpack.vm.g)localObject2).f().size() - 64)
                {
                  ((de.innosystec.unrar.unpack.vm.g)localObject1).f().set(i + 64, ((de.innosystec.unrar.unpack.vm.g)localObject2).f().get(i + 64));
                  i += 1;
                }
              }
              ((de.innosystec.unrar.unpack.vm.g)localObject1).f().clear();
              i1 = ((de.innosystec.unrar.unpack.vm.g)localObject2).d();
              k = ((de.innosystec.unrar.unpack.vm.g)localObject2).e();
              localObject1 = new byte[k];
              i = 0;
              while (i < k)
              {
                localObject1[i] = ((Byte)((de.innosystec.unrar.unpack.vm.g)localObject2).f().get(i1 + i)).byteValue();
                i += 1;
              }
              j += 1;
              ar.set(j, null);
            }
          }
          while (j < ar.size())
          {
            localObject1 = (e)ar.get(j);
            if ((localObject1 != null) && (((e)localObject1).d())) {
              ((e)localObject1).a(false);
            }
            j += 1;
          }
          l = k;
          return;
          c(j, this.k);
          l = this.k;
          return;
        }
        m = i;
        i = j;
        j = m;
      }
    }
  }
  
  private void r()
  {
    as.clear();
    at = 0;
    aq.clear();
    ar.clear();
  }
  
  private boolean s()
  {
    int i = m();
    int j;
    if ((0x8000 & i) != 0)
    {
      c(1);
      i = 0;
      j = 1;
      if (j != 0) {
        break label80;
      }
    }
    label80:
    for (boolean bool = true;; bool = false)
    {
      au = bool;
      if ((i != 0) || ((j != 0) && (!t()))) {
        break label86;
      }
      return true;
      if ((i & 0x4000) != 0) {}
      for (i = 1;; i = 0)
      {
        c(2);
        int k = 1;
        j = i;
        i = k;
        break;
      }
    }
    label86:
    return false;
  }
  
  private boolean t()
  {
    byte[] arrayOfByte1 = new byte[20];
    byte[] arrayOfByte2 = new byte['Ɣ'];
    if ((ak > g - 25) && (!c())) {
      return false;
    }
    d(8 - al & 0x7);
    long l = n() & 0xFFFFFFFF;
    if ((0x8000 & l) != 0L)
    {
      aw = BlockTypes.BLOCK_PPM;
      return an.a(this, ao);
    }
    aw = BlockTypes.BLOCK_LZ;
    aB = 0;
    aC = 0;
    if ((l & 0x4000) == 0L) {
      Arrays.fill(av, (byte)0);
    }
    d(2);
    int i = 0;
    int j;
    int k;
    if (i < 20)
    {
      j = n() >>> 12 & 0xFF;
      d(4);
      if (j == 15)
      {
        j = n() >>> 12 & 0xFF;
        d(4);
        if (j == 0) {
          arrayOfByte1[i] = 15;
        }
      }
      for (;;)
      {
        i += 1;
        break;
        k = j + 2;
        j = i;
        i = k;
        while ((i > 0) && (j < arrayOfByte1.length))
        {
          arrayOfByte1[j] = 0;
          j += 1;
          i -= 1;
        }
        i = j - 1;
        continue;
        arrayOfByte1[i] = ((byte)j);
      }
    }
    a(arrayOfByte1, 0, ad, 20);
    i = 0;
    while (i < 404)
    {
      if ((ak > g - 5) && (!c())) {
        return false;
      }
      j = a(ad);
      if (j < 16)
      {
        arrayOfByte2[i] = ((byte)(j + av[i] & 0xF));
        i += 1;
      }
      else
      {
        if (j < 18)
        {
          if (j == 16)
          {
            j = n();
            d(3);
            k = (j >>> 13) + 3;
            j = i;
          }
          for (;;)
          {
            i = j;
            if (k <= 0) {
              break;
            }
            i = j;
            if (j >= 404) {
              break;
            }
            arrayOfByte2[j] = arrayOfByte2[(j - 1)];
            j += 1;
            k -= 1;
            continue;
            j = n();
            d(7);
            k = (j >>> 9) + 11;
            j = i;
          }
        }
        if (j == 18)
        {
          j = n();
          d(3);
          k = (j >>> 13) + 3;
          j = i;
        }
        for (;;)
        {
          i = j;
          if (k <= 0) {
            break;
          }
          i = j;
          if (j >= 404) {
            break;
          }
          arrayOfByte2[j] = 0;
          j += 1;
          k -= 1;
          continue;
          j = n();
          d(7);
          k = (j >>> 9) + 11;
          j = i;
        }
      }
    }
    au = true;
    if (ak > g) {
      return false;
    }
    a(arrayOfByte2, 0, Z, 299);
    a(arrayOfByte2, 299, aa, 60);
    a(arrayOfByte2, 359, ab, 17);
    a(arrayOfByte2, 376, ac, 28);
    i = 0;
    while (i < av.length)
    {
      av[i] = arrayOfByte2[i];
      i += 1;
    }
    return true;
  }
  
  private boolean u()
  {
    int k = m() >> 8;
    c(8);
    int j = (k & 0x7) + 1;
    int i;
    ArrayList localArrayList;
    if (j == 7)
    {
      i = (m() >> 8) + 7;
      c(8);
      localArrayList = new ArrayList();
      j = 0;
    }
    for (;;)
    {
      if (j >= i) {
        break label143;
      }
      if ((ak >= g - 1) && (!c()) && (j < i - 1))
      {
        return false;
        i = j;
        if (j != 8) {
          break;
        }
        i = m();
        c(16);
        break;
      }
      localArrayList.add(Byte.valueOf((byte)(m() >> 8)));
      c(8);
      j += 1;
    }
    label143:
    return a(k, localArrayList, i);
  }
  
  private boolean v()
  {
    int k = an.b();
    if (k == -1) {
      return false;
    }
    int j = (k & 0x7) + 1;
    int i;
    ArrayList localArrayList;
    if (j == 7)
    {
      i = an.b();
      if (i == -1) {
        return false;
      }
      i += 7;
      localArrayList = new ArrayList();
      j = 0;
    }
    for (;;)
    {
      if (j >= i) {
        break label151;
      }
      int m = an.b();
      if (m == -1)
      {
        return false;
        i = j;
        if (j != 8) {
          break;
        }
        i = an.b();
        if (i == -1) {
          return false;
        }
        j = an.b();
        if (j == -1) {
          return false;
        }
        i = i * 256 + j;
        break;
      }
      localArrayList.add(Byte.valueOf((byte)m));
      j += 1;
    }
    label151:
    return a(k, localArrayList, i);
  }
  
  public int a()
  {
    if (ak > 32738) {
      c();
    }
    byte[] arrayOfByte = am;
    int i = ak;
    ak = (i + 1);
    return arrayOfByte[i] & 0xFF;
  }
  
  public void a(int paramInt)
  {
    ao = paramInt;
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if (e.c().p() == 48) {
      p();
    }
    switch (paramInt)
    {
    default: 
      return;
    case 15: 
      b(paramBoolean);
      return;
    case 20: 
    case 26: 
      d(paramBoolean);
      return;
    }
    f(paramBoolean);
  }
  
  public void a(long paramLong)
  {
    h = paramLong;
    az = false;
  }
  
  protected void a(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      au = false;
      Arrays.fill(j, 0);
      m = 0;
      M = 0;
      N = 0;
      Arrays.fill(av, (byte)0);
      k = 0;
      l = 0;
      ao = 2;
      r();
    }
    l();
    aA = false;
    ay = 0L;
    g = 0;
    b = 0;
    e(paramBoolean);
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      i = f(4194304);
    }
    for (;;)
    {
      ak = 0;
      a(false);
      return;
      i = paramArrayOfByte;
      ax = true;
    }
  }
  
  public void b()
  {
    if (an != null)
    {
      l locall = an.a();
      if (locall != null) {
        locall.c();
      }
    }
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */