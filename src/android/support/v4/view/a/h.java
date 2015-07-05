package android.support.v4.view.a;

import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.List;

public class h
{
  private static final i a = new l();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new j();
      return;
    }
  }
  
  public h()
  {
    b = a.a(this);
  }
  
  public h(Object paramObject)
  {
    b = paramObject;
  }
  
  public a a(int paramInt)
  {
    return null;
  }
  
  public Object a()
  {
    return b;
  }
  
  public List<a> a(String paramString, int paramInt)
  {
    return null;
  }
  
  public boolean a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */