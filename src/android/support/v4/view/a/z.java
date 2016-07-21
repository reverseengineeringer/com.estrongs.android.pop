package android.support.v4.view.a;

import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.List;

public class z
{
  private static final aa a = new af();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new ad();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new ab();
      return;
    }
  }
  
  public z()
  {
    b = a.a(this);
  }
  
  public z(Object paramObject)
  {
    b = paramObject;
  }
  
  public g a(int paramInt)
  {
    return null;
  }
  
  public Object a()
  {
    return b;
  }
  
  public List<g> a(String paramString, int paramInt)
  {
    return null;
  }
  
  public boolean a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return false;
  }
  
  public g b(int paramInt)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */