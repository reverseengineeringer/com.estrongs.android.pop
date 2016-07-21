package android.support.a.a;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.v4.e.a;
import java.util.ArrayList;

class d
  extends Drawable.ConstantState
{
  int a;
  l b;
  ArrayList<Animator> c;
  a<Animator, String> d;
  
  public d(Context paramContext, d paramd, Drawable.Callback paramCallback, Resources paramResources)
  {
    if (paramd != null)
    {
      a = a;
      if (b != null)
      {
        paramContext = b.getConstantState();
        if (paramResources == null) {
          break label215;
        }
      }
      label215:
      for (b = ((l)paramContext.newDrawable(paramResources));; b = ((l)paramContext.newDrawable()))
      {
        b = ((l)b.mutate());
        b.setCallback(paramCallback);
        b.setBounds(b.getBounds());
        b.a(false);
        if (c == null) {
          break;
        }
        int j = c.size();
        c = new ArrayList(j);
        d = new a(j);
        while (i < j)
        {
          paramCallback = (Animator)c.get(i);
          paramContext = paramCallback.clone();
          paramCallback = (String)d.get(paramCallback);
          paramContext.setTarget(b.a(paramCallback));
          c.add(paramContext);
          d.put(paramContext, paramCallback);
          i += 1;
        }
      }
    }
  }
  
  public int getChangingConfigurations()
  {
    return a;
  }
  
  public Drawable newDrawable()
  {
    throw new IllegalStateException("No constant state support for SDK < 21.");
  }
  
  public Drawable newDrawable(Resources paramResources)
  {
    throw new IllegalStateException("No constant state support for SDK < 21.");
  }
}

/* Location:
 * Qualified Name:     android.support.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */