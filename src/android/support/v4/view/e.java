package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.h;
import android.view.View;

class e
  extends b
{
  public h a(Object paramObject, View paramView)
  {
    paramObject = k.a(paramObject, paramView);
    if (paramObject != null) {
      return new h(paramObject);
    }
    return null;
  }
  
  public Object a(a parama)
  {
    return k.a(new f(this, parama));
  }
  
  public boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
  {
    return k.a(paramObject, paramView, paramInt, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */