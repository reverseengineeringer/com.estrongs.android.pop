package de.innosystec.unrar.rarfile;

import de.innosystec.unrar.b.b;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class p
  extends c
{
  private Log g = LogFactory.getLog(getClass());
  private short h;
  private byte i;
  
  public p(c paramc, byte[] paramArrayOfByte)
  {
    super(paramc);
    h = b.b(paramArrayOfByte, 0);
    int j = i;
    i = ((byte)(paramArrayOfByte[2] & 0xFF | j));
  }
  
  public p(p paramp)
  {
    super(paramp);
    h = paramp.n().getSubblocktype();
    i = paramp.m();
  }
  
  public void j()
  {
    super.j();
    g.info("subtype: " + n());
    g.info("level: " + i);
  }
  
  public byte m()
  {
    return i;
  }
  
  public SubBlockHeaderType n()
  {
    return SubBlockHeaderType.findSubblockHeaderType(h);
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */