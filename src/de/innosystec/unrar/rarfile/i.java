package de.innosystec.unrar.rarfile;

import de.innosystec.unrar.a;
import de.innosystec.unrar.b.b;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class i
  extends c
{
  private Log g = LogFactory.getLog(i.class.getName());
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
  private byte[] t = new byte[8];
  private long u;
  private long v;
  private int w;
  private int x = -1;
  
  public i(c paramc, byte[] paramArrayOfByte, a parama)
  {
    super(paramc);
    h = b.c(paramArrayOfByte, 0);
    i = HostSystem.findHostSystem(paramArrayOfByte[4]);
    j = b.c(paramArrayOfByte, 5);
    k = b.c(paramArrayOfByte, 9);
    l = ((byte)(l | paramArrayOfByte[13] & 0xFF));
    m = ((byte)(m | paramArrayOfByte[14] & 0xFF));
    n = b.b(paramArrayOfByte, 15);
    w = b.c(paramArrayOfByte, 17);
    int i2 = 21;
    int i1;
    if (p())
    {
      o = b.c(paramArrayOfByte, 21);
      p = b.c(paramArrayOfByte, 25);
      i1 = 29;
      u |= o;
      u <<= 32;
      u |= l();
      v |= p;
      v <<= 32;
      v |= h;
      if (n <= 4096) {
        break label354;
      }
    }
    for (;;)
    {
      n = s1;
      q = new byte[n];
      int i3 = 0;
      i2 = i1;
      i1 = i3;
      while (i1 < n)
      {
        q[i1] = paramArrayOfByte[i2];
        i2 += 1;
        i1 += 1;
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
      label354:
      s1 = n;
    }
    if ((o()) && (n()))
    {
      r = "";
      s = "";
      i1 = 0;
      while ((i1 < q.length) && (q[i1] != 0)) {
        i1 += 1;
      }
      paramc = new byte[i1];
      System.arraycopy(q, 0, paramc, 0, paramc.length);
      q = paramc;
    }
  }
  
  public long m()
  {
    return u;
  }
  
  public boolean n()
  {
    return (e & 0x200) != 0;
  }
  
  public boolean o()
  {
    return UnrarHeadertype.FileHeader.equals(d);
  }
  
  public boolean p()
  {
    return (e & 0x100) != 0;
  }
  
  public byte[] q()
  {
    return q;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */