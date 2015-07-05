package org.mozilla.a.a;

public class h
  extends u
{
  q a = null;
  
  public h() {}
  
  public h(int paramInt)
  {
    super(paramInt);
  }
  
  public void a(String paramString)
  {
    if (a != null) {
      a.a(paramString);
    }
  }
  
  public void a(q paramq)
  {
    a = paramq;
  }
  
  public boolean a(byte[] paramArrayOfByte, int paramInt, boolean paramBoolean)
  {
    if ((paramArrayOfByte == null) || (paramBoolean)) {
      return false;
    }
    a(paramArrayOfByte, paramInt);
    return i;
  }
}

/* Location:
 * Qualified Name:     org.mozilla.a.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */