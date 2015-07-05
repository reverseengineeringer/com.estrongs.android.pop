package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class l
  extends b
{
  private Log g = LogFactory.getLog(l.class.getName());
  private boolean h = false;
  
  public l(b paramb)
  {
    super(paramb);
  }
  
  public void j()
  {
    super.j();
    g.info("valid: " + k());
  }
  
  public boolean k()
  {
    if (g() != 24914) {}
    while ((i() != UnrarHeadertype.MarkHeader) || (f() != 6689) || (h() != 7)) {
      return false;
    }
    return true;
  }
  
  public boolean l()
  {
    byte[] arrayOfByte = new byte[7];
    de.innosystec.unrar.b.b.a(arrayOfByte, 0, c);
    arrayOfByte[2] = d;
    de.innosystec.unrar.b.b.a(arrayOfByte, 3, e);
    de.innosystec.unrar.b.b.a(arrayOfByte, 5, f);
    if (arrayOfByte[0] == 82)
    {
      if ((arrayOfByte[1] == 69) && (arrayOfByte[2] == 126) && (arrayOfByte[3] == 94))
      {
        h = true;
        return true;
      }
      if ((arrayOfByte[1] == 97) && (arrayOfByte[2] == 114) && (arrayOfByte[3] == 33) && (arrayOfByte[4] == 26) && (arrayOfByte[5] == 7) && (arrayOfByte[6] == 0))
      {
        h = false;
        return true;
      }
    }
    return false;
  }
  
  public boolean m()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */