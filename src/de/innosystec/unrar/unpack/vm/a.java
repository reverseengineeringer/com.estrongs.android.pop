package de.innosystec.unrar.unpack.vm;

public class a
{
  protected int ak;
  protected int al;
  protected byte[] am = new byte[32768];
  
  public void c(int paramInt)
  {
    paramInt = al + paramInt;
    ak += (paramInt >> 3);
    al = (paramInt & 0x7);
  }
  
  public void d(int paramInt)
  {
    c(paramInt);
  }
  
  public boolean e(int paramInt)
  {
    return ak + paramInt >= 32768;
  }
  
  public void l()
  {
    ak = 0;
    al = 0;
  }
  
  public int m()
  {
    return ((am[ak] & 0xFF) << 16) + ((am[(ak + 1)] & 0xFF) << 8) + (am[(ak + 2)] & 0xFF) >>> 8 - al & 0xFFFF;
  }
  
  public int n()
  {
    return m();
  }
  
  public byte[] o()
  {
    return am;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.vm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */