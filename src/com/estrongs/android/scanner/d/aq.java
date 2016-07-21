package com.estrongs.android.scanner.d;

import android.util.SparseArray;
import java.util.List;
import java.util.concurrent.Callable;

class aq
  implements Callable<List<ar>>
{
  private final int b;
  
  public aq(ak paramak, int paramInt)
  {
    b = paramInt;
  }
  
  public List<ar> a()
  {
    List localList = ak.a(a, b, ak.a(a), ak.b(a));
    ak.c(a).put(b, localList);
    return localList;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */