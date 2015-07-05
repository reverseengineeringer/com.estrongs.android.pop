package org.mozilla.universalchardet.prober.b;

public abstract class d
{
  protected c a;
  protected int b;
  protected c c;
  protected int[] d;
  protected String e;
  
  public d(c paramc1, int paramInt, c paramc2, int[] paramArrayOfInt, String paramString)
  {
    a = paramc1;
    b = paramInt;
    c = paramc2;
    d = paramArrayOfInt;
    e = paramString;
  }
  
  public int a(byte paramByte)
  {
    return a.a(paramByte & 0xFF);
  }
  
  public int a(int paramInt)
  {
    return d[paramInt];
  }
  
  public int a(int paramInt1, int paramInt2)
  {
    return c.a(b * paramInt2 + paramInt1);
  }
}

/* Location:
 * Qualified Name:     org.mozilla.universalchardet.prober.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */