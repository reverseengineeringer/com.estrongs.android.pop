package android.support.v7.view.menu;

import android.view.View;
import android.widget.FrameLayout;

class q
  extends FrameLayout
  implements android.support.v7.view.CollapsibleActionView
{
  final android.view.CollapsibleActionView a;
  
  q(View paramView)
  {
    super(paramView.getContext());
    a = ((android.view.CollapsibleActionView)paramView);
    addView(paramView);
  }
  
  View a()
  {
    return (View)a;
  }
  
  public void onActionViewCollapsed()
  {
    a.onActionViewCollapsed();
  }
  
  public void onActionViewExpanded()
  {
    a.onActionViewExpanded();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */