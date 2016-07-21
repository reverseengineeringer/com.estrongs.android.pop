package android.support.v4.e;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a<K, V>
  extends r<K, V>
  implements Map<K, V>
{
  h<K, V> a;
  
  public a() {}
  
  public a(int paramInt)
  {
    super(paramInt);
  }
  
  private h<K, V> b()
  {
    if (a == null) {
      a = new b(this);
    }
    return a;
  }
  
  public boolean a(Collection<?> paramCollection)
  {
    return h.c(this, paramCollection);
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    return b().d();
  }
  
  public Set<K> keySet()
  {
    return b().e();
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    a(h + paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public Collection<V> values()
  {
    return b().f();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */