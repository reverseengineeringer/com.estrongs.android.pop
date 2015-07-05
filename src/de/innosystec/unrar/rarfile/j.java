package de.innosystec.unrar.rarfile;

import de.innosystec.unrar.b.b;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class j
  extends p
{
  private Log g = LogFactory.getLog(getClass());
  private int h;
  private int i;
  
  public j(p paramp, byte[] paramArrayOfByte)
  {
    super(paramp);
    h = b.c(paramArrayOfByte, 0);
    i = b.c(paramArrayOfByte, 4);
  }
  
  public void j()
  {
    super.j();
    g.info("filetype: " + h);
    g.info("creator :" + i);
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */