package de.innosystec.unrar.rarfile;

import com.estrongs.android.util.f;
import de.innosystec.unrar.a;
import de.innosystec.unrar.b.b;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.Calendar;
import java.util.Date;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class g
  extends c
{
  private Log g = LogFactory.getLog(g.class.getName());
  private int h;
  private HostSystem i;
  private int j;
  private int k;
  private byte l;
  private byte m;
  private short n;
  private int o;
  private int p;
  private byte[] q;
  private String r;
  private String s;
  private byte[] t;
  private byte[] u = new byte[8];
  private Date v;
  private long w;
  private long x;
  private int y;
  private int z = -1;
  
  public g(c paramc, byte[] paramArrayOfByte, a parama)
  {
    super(paramc);
    h = b.c(paramArrayOfByte, 0);
    i = HostSystem.findHostSystem(paramArrayOfByte[4]);
    j = b.c(paramArrayOfByte, 5);
    k = b.c(paramArrayOfByte, 9);
    l = ((byte)(l | paramArrayOfByte[13] & 0xFF));
    m = ((byte)(m | paramArrayOfByte[14] & 0xFF));
    n = b.b(paramArrayOfByte, 15);
    y = b.c(paramArrayOfByte, 17);
    int i2 = 21;
    int i1;
    if (B())
    {
      o = b.c(paramArrayOfByte, 21);
      p = b.c(paramArrayOfByte, 25);
      i1 = 29;
      w |= o;
      w <<= 32;
      w |= l();
      x |= p;
      x <<= 32;
      x |= h;
      if (n <= 4096) {
        break label349;
      }
    }
    label349:
    for (short s1 = 4096;; s1 = n)
    {
      n = s1;
      q = new byte[n];
      i2 = 0;
      while (i2 < n)
      {
        q[i2] = paramArrayOfByte[i1];
        i1 += 1;
        i2 += 1;
      }
      o = 0;
      p = 0;
      i1 = i2;
      if (h != -1) {
        break;
      }
      h = -1;
      p = Integer.MAX_VALUE;
      i1 = i2;
      break;
    }
    int i3;
    if (z())
    {
      if (y())
      {
        r = "";
        s = "";
        i2 = 0;
        while ((i2 < q.length) && (q[i2] != 0)) {
          i2 += 1;
        }
        paramc = new byte[i2];
        System.arraycopy(q, 0, paramc, 0, paramc.length);
      }
    }
    else
    {
      try
      {
        if (parama.j())
        {
          String str = f.a(paramc, paramc.length);
          if (Charset.isSupported(str)) {
            parama.a(str);
          }
        }
        r = new String(paramc, parama.i());
      }
      catch (UnsupportedEncodingException parama)
      {
        for (;;)
        {
          r = new String(paramc);
          continue;
          s = r;
        }
      }
      if (i2 != n)
      {
        s = h.b(q, i2 + 1);
        if (s != null) {
          s = s.replaceAll("\\?", " ");
        }
        i3 = i1;
        if (!UnrarHeadertype.NewSubHeader.equals(d)) {
          break label799;
        }
        i3 = f - 32 - n;
        if (!A()) {
          break label856;
        }
        i3 -= 8;
      }
    }
    label799:
    label856:
    for (;;)
    {
      i2 = i1;
      if (i3 > 0)
      {
        t = new byte[i3];
        int i4 = 0;
        for (;;)
        {
          i2 = i1;
          if (i4 >= i3) {
            break;
          }
          t[i4] = paramArrayOfByte[i1];
          i1 += 1;
          i4 += 1;
        }
        try
        {
          if (parama.j())
          {
            paramc = f.a(q, q.length);
            if (Charset.isSupported(paramc)) {
              parama.a(paramc);
            }
          }
          r = new String(q, parama.i());
        }
        catch (UnsupportedEncodingException paramc)
        {
          for (;;)
          {
            r = new String(q);
          }
        }
        s = r;
        break;
      }
      i3 = i2;
      if (m.f.a(q))
      {
        z = (t[8] + (t[9] << 8) + (t[10] << 16) + (t[11] << 24));
        i3 = i2;
      }
      if (A())
      {
        i1 = i5;
        while (i1 < 8)
        {
          u[i1] = paramArrayOfByte[i3];
          i3 += 1;
          i1 += 1;
        }
      }
      v = a(k);
      return;
    }
  }
  
  private Date a(int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(1, (paramInt >>> 25) + 1980);
    localCalendar.set(2, (paramInt >>> 21 & 0xF) - 1);
    localCalendar.set(5, paramInt >>> 16 & 0x1F);
    localCalendar.set(11, paramInt >>> 11 & 0x1F);
    localCalendar.set(12, paramInt >>> 5 & 0x3F);
    localCalendar.set(13, (paramInt & 0x1F) * 2);
    return localCalendar.getTime();
  }
  
  public boolean A()
  {
    return (e & 0x400) != 0;
  }
  
  public boolean B()
  {
    return (e & 0x100) != 0;
  }
  
  public boolean C()
  {
    return (e & 0xE0) == 224;
  }
  
  public void j()
  {
    super.j();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("unpSize: " + q());
    localStringBuilder.append("\nHostOS: " + i.name());
    localStringBuilder.append("\nMDate: " + v);
    localStringBuilder.append("\nFileName: " + n());
    localStringBuilder.append("\nunpMethod: " + Integer.toHexString(p()));
    localStringBuilder.append("\nunpVersion: " + Integer.toHexString(r()));
    localStringBuilder.append("\nfullpackedsize: " + s());
    localStringBuilder.append("\nfullunpackedsize: " + t());
    localStringBuilder.append("\nisEncrypted: " + x());
    localStringBuilder.append("\nisfileHeader: " + z());
    localStringBuilder.append("\nisSolid: " + w());
    localStringBuilder.append("\nisSplitafter: " + u());
    localStringBuilder.append("\nisSplitBefore:" + v());
    localStringBuilder.append("\nunpSize: " + q());
    localStringBuilder.append("\ndataSize: " + k());
    localStringBuilder.append("\nisUnicode: " + y());
    localStringBuilder.append("\nhasVolumeNumber: " + b());
    localStringBuilder.append("\nhasArchiveDataCRC: " + a());
    localStringBuilder.append("\nhasSalt: " + A());
    localStringBuilder.append("\nhasEncryptVersions: " + c());
    localStringBuilder.append("\nisSubBlock: " + d());
    g.info(localStringBuilder.toString());
  }
  
  public int m()
  {
    return j;
  }
  
  public String n()
  {
    return r;
  }
  
  public String o()
  {
    return s;
  }
  
  public byte p()
  {
    return m;
  }
  
  public int q()
  {
    return h;
  }
  
  public byte r()
  {
    return l;
  }
  
  public long s()
  {
    return w;
  }
  
  public long t()
  {
    return x;
  }
  
  public String toString()
  {
    return super.toString();
  }
  
  public boolean u()
  {
    return (e & 0x2) != 0;
  }
  
  public boolean v()
  {
    return (e & 0x1) != 0;
  }
  
  public boolean w()
  {
    return (e & 0x10) != 0;
  }
  
  public boolean x()
  {
    return (e & 0x4) != 0;
  }
  
  public boolean y()
  {
    return (e & 0x200) != 0;
  }
  
  public boolean z()
  {
    return UnrarHeadertype.FileHeader.equals(d);
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */