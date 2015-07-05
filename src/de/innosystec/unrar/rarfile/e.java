package de.innosystec.unrar.rarfile;

import de.innosystec.unrar.b.b;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class e
  extends p
{
  private Log g = LogFactory.getLog(getClass());
  private int h;
  private byte i;
  private byte j;
  private int k;
  
  public e(p paramp, byte[] paramArrayOfByte)
  {
    super(paramp);
    h = b.c(paramArrayOfByte, 0);
    int m = i;
    i = ((byte)(paramArrayOfByte[4] & 0xFF | m));
    m = j;
    j = ((byte)(paramArrayOfByte[5] & 0xFF | m));
    k = b.c(paramArrayOfByte, 6);
  }
  
  public void j()
  {
    super.j();
    g.info("unpSize: " + h);
    g.info("unpVersion: " + i);
    g.info("method: " + j);
    g.info("EACRC:" + k);
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */