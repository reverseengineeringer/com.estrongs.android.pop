package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class c
  extends b
{
  private Log g = LogFactory.getLog(c.class.getName());
  private int h;
  private int i;
  
  public c() {}
  
  public c(b paramb, byte[] paramArrayOfByte)
  {
    super(paramb);
    i = de.innosystec.unrar.b.b.c(paramArrayOfByte, 0);
    h = i;
  }
  
  public c(c paramc)
  {
    super(paramc);
    i = paramc.k();
    h = i;
    b = paramc.e();
  }
  
  public void j()
  {
    super.j();
    String str = "DataSize: " + k() + " packSize: " + l();
    g.info(str);
  }
  
  public int k()
  {
    return h;
  }
  
  public int l()
  {
    return i;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.rarfile.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */