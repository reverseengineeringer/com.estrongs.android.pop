package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class k
  extends b
{
  private Log g = LogFactory.getLog(k.class.getName());
  private short h;
  private int i;
  private byte j;
  
  public k(b paramb, byte[] paramArrayOfByte)
  {
    super(paramb);
    h = de.innosystec.unrar.b.b.b(paramArrayOfByte, 0);
    i = de.innosystec.unrar.b.b.c(paramArrayOfByte, 2);
    if (c())
    {
      int k = j;
      j = ((byte)(paramArrayOfByte[6] & 0xFF | k));
    }
  }
  
  public void j()
  {
    super.j();
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("posav: " + n());
    localStringBuilder1.append("\nhighposav: " + m());
    StringBuilder localStringBuilder2 = new StringBuilder().append("\nhasencversion: ").append(c());
    if (c()) {}
    for (Object localObject = Byte.valueOf(l());; localObject = "")
    {
      localStringBuilder1.append(localObject);
      localStringBuilder1.append("\nhasarchcmt: " + k());
      localStringBuilder1.append("\nisEncrypted: " + o());
      localStringBuilder1.append("\nisMultivolume: " + p());
      localStringBuilder1.append("\nisFirstvolume: " + q());
      localStringBuilder1.append("\nisSolid: " + r());
      localStringBuilder1.append("\nisLocked: " + s());
      localStringBuilder1.append("\nisProtected: " + t());
      localStringBuilder1.append("\nisAV: " + u());
      g.info(localStringBuilder1.toString());
      return;
    }
  }
  
  public boolean k()
  {
    return (e & 0x2) != 0;
  }
  
  public byte l()
  {
    return j;
  }
  
  public short m()
  {
    return h;
  }
  
  public int n()
  {
    return i;
  }
  
  public boolean o()
  {
    return (e & 0x80) != 0;
  }
  
  public boolean p()
  {
    return (e & 0x1) != 0;
  }
  
  public boolean q()
  {
    return (e & 0x100) != 0;
  }
  
  public boolean r()
  {
    return (e & 0x8) != 0;
  }
  
  public boolean s()
  {
    return (e & 0x4) != 0;
  }
  
  public boolean t()
  {
    return (e & 0x40) != 0;
  }
  
  public boolean u()
  {
    return (e & 0x20) != 0;
  }
  
  public boolean v()
  {
    return (e & 0x10) != 0;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */