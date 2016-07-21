package android.support.v4.view.a;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

class ae
  implements al
{
  ae(ad paramad, z paramz) {}
  
  public Object a(int paramInt)
  {
    g localg = a.a(paramInt);
    if (localg == null) {
      return null;
    }
    return localg.a();
  }
  
  public List<Object> a(String paramString, int paramInt)
  {
    paramString = a.a(paramString, paramInt);
    ArrayList localArrayList = new ArrayList();
    int i = paramString.size();
    paramInt = 0;
    while (paramInt < i)
    {
      localArrayList.add(((g)paramString.get(paramInt)).a());
      paramInt += 1;
    }
    return localArrayList;
  }
  
  public boolean a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return a.a(paramInt1, paramInt2, paramBundle);
  }
  
  public Object b(int paramInt)
  {
    g localg = a.b(paramInt);
    if (localg == null) {
      return null;
    }
    return localg.a();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */