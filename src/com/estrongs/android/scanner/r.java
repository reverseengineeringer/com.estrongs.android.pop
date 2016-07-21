package com.estrongs.android.scanner;

import com.estrongs.android.scanner.a.d;
import com.estrongs.android.scanner.d.w;
import com.estrongs.android.util.l;
import com.estrongs.fs.a.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class r
  implements w
{
  r(q paramq, b paramb) {}
  
  public void a() {}
  
  public void a(List<d> paramList) {}
  
  public void a(Set<d> paramSet)
  {
    ArrayList localArrayList = new ArrayList(paramSet.size());
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      localArrayList.add(((d)paramSet.next()).d());
    }
    l.e("Cataloger", "flush UI because of insert!");
    a.a(localArrayList);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */