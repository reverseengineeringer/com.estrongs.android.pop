package com.estrongs.fs.util.a;

import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.c;

public class b
  extends f
{
  public b(boolean paramBoolean)
  {
    super(paramBoolean);
  }
  
  public int a(h paramh1, h paramh2)
  {
    if ((!(paramh1 instanceof c)) || (!(paramh2 instanceof c))) {
      return super.a(paramh1, paramh2);
    }
    if ((paramh1 == null) || (paramh2 == null) || (paramh1.equals(paramh2))) {
      return 0;
    }
    int i = ((c)paramh1).d();
    int j = ((c)paramh2).d();
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