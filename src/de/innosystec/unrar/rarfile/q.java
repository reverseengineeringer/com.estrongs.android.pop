package de.innosystec.unrar.rarfile;

import de.innosystec.unrar.b.b;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class q
  extends p
{
  private Log g = LogFactory.getLog(q.class);
  private int h;
  private int i;
  private String j;
  private String k;
  
  public q(p paramp, byte[] paramArrayOfByte)
  {
    super(paramp);
    h = (b.b(paramArrayOfByte, 0) & 0xFFFF);
    i = (b.b(paramArrayOfByte, 2) & 0xFFFF);
    if (h + 4 < paramArrayOfByte.length)
    {
      paramp = new byte[h];
      System.arraycopy(paramArrayOfByte, 4, paramp, 0, h);
      j = new String(paramp);
    }
    int m = h + 4;
    if (i + m < paramArrayOfByte.length)
    {
      paramp = new byte[i];
      System.arraycopy(paramArrayOfByte, m, paramp, 0, i);
      k = new String(paramp);
    }
  }
  
  public void j()
  {
    super.j();
    g.info("ownerNameSize: " + h);
    g.info("owner: " + j);
    g.info("groupNameSize: " + i);
    g.info("group: " + k);
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */