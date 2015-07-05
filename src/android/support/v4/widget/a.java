package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.at;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

class a
  extends android.support.v4.view.a
{
  private final Rect c = new Rect();
  
  a(DrawerLayout paramDrawerLayout) {}
  
  private void a(android.support.v4.view.a.a parama1, android.support.v4.view.a.a parama2)
  {
    Rect localRect = c;
    parama2.a(localRect);
    parama1.b(localRect);
    parama2.c(localRect);
    parama1.d(localRect);
    parama1.c(parama2.e());
    parama1.a(parama2.k());
    parama1.b(parama2.l());
    parama1.c(parama2.m());
    parama1.h(parama2.j());
    parama1.f(parama2.h());
    parama1.a(parama2.c());
    parama1.b(parama2.d());
    parama1.d(parama2.f());
    parama1.e(parama2.g());
    parama1.g(parama2.i());
    parama1.a(parama2.b());
  }
  
  public void a(View paramView, android.support.v4.view.a.a parama)
  {
    android.support.v4.view.a.a locala = android.support.v4.view.a.a.a(parama);
    super.a(paramView, locala);
    parama.a(paramView);
    paramView = at.f(paramView);
    if ((paramView instanceof View)) {
      parama.c((View)paramView);
    }
    a(parama, locala);
    locala.n();
    int j = b.getChildCount();
    int i = 0;
    while (i < j)
    {
      paramView = b.getChildAt(i);
      if (!b(paramView)) {
        parama.b(paramView);
      }
      i += 1;
    }
  }
  
  public boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (!b(paramView)) {
      return super.a(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
  
  public boolean b(View paramView)
  {
    View localView = b.a();
    return (localView != null) && (localView != paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */