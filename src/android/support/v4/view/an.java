package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory;
import android.view.View;

class an
  implements LayoutInflater.Factory
{
  final ar a;
  
  an(ar paramar)
  {
    a = paramar;
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return a.onCreateView(null, paramString, paramContext, paramAttributeSet);
  }
  
  public String toString()
  {
    return getClass().getName() + "{" + a + "}";
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */