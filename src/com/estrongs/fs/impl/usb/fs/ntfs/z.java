package com.estrongs.fs.impl.usb.fs.ntfs;

import java.io.IOException;

public class z
  extends aa
{
  private final ab a;
  
  public z(ab paramab, byte[] paramArrayOfByte, int paramInt)
  {
    super(paramArrayOfByte, paramInt);
    a = paramab;
    a();
  }
  
  private void a()
  {
    int j = p();
    int k = e(j);
    int m = q();
    int n = r().a().a();
    int i = 1;
    while (i < m)
    {
      int i1 = i * n - 2;
      if (e(i1) == k)
      {
        a(i1, e(i * 2 + j));
        i += 1;
      }
      else
      {
        throw new IOException("Fixup error");
      }
    }
  }
  
  public int o()
  {
    return h(0);
  }
  
  public int p()
  {
    return e(4);
  }
  
  public int q()
  {
    return e(6);
  }
  
  public ab r()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */