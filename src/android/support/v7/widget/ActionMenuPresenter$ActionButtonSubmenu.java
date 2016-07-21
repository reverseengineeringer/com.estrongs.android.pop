package android.support.v7.widget;

import android.content.Context;
import android.support.v7.appcompat.R.attr;
import android.support.v7.view.menu.ad;
import android.support.v7.view.menu.m;
import android.support.v7.view.menu.v;
import android.view.MenuItem;
import android.view.View;

class ActionMenuPresenter$ActionButtonSubmenu
  extends v
{
  private ad mSubMenu;
  
  public ActionMenuPresenter$ActionButtonSubmenu(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, ad paramad)
  {
    super(paramContext, paramad, null, false, R.attr.actionOverflowMenuStyle);
    mSubMenu = paramad;
    int j;
    int i;
    if (!((m)paramad.getItem()).j())
    {
      if (ActionMenuPresenter.access$600(paramActionMenuPresenter) == null)
      {
        paramContext = (View)ActionMenuPresenter.access$700(paramActionMenuPresenter);
        setAnchorView(paramContext);
      }
    }
    else
    {
      setCallback(mPopupPresenterCallback);
      j = paramad.size();
      i = 0;
    }
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        paramActionMenuPresenter = paramad.getItem(i);
        if ((paramActionMenuPresenter.isVisible()) && (paramActionMenuPresenter.getIcon() != null)) {
          bool1 = true;
        }
      }
      else
      {
        setForceShowIcon(bool1);
        return;
        paramContext = ActionMenuPresenter.access$600(paramActionMenuPresenter);
        break;
      }
      i += 1;
    }
  }
  
  public void onDismiss()
  {
    super.onDismiss();
    ActionMenuPresenter.access$802(this$0, null);
    this$0.mOpenSubMenuId = 0;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter.ActionButtonSubmenu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */