package com.estrongs.fs.util.a;

import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.d;

public class b
  extends f
{
  public b(boolean paramBoolean)
  {
    super(paramBoolean);
  }
  
  public int a(h paramh1, h paramh2)
  {
    if ((!(paramh1 instanceof d)) || (!(paramh2 instanceof d))) {
      return super.a(paramh1, paramh2);
    }
    if ((paramh1 == null) || (paramh2 == null) || (paramh1.equals(paramh2))) {
      return 0;
    }
    int i = ((d)paramh1).i();
    int j = ((d)paramh2).i();
    if (i - j != 0) {
      return a(i, j);
    }
    return super.a(paramh1, paramh2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */