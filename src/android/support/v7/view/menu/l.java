package android.support.v7.view.menu;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.os.IBinder;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AlertDialog.Builder;
import android.support.v7.appcompat.R.layout;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ListAdapter;

class l
  implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, y
{
  g a;
  private i b;
  private AlertDialog c;
  private y d;
  
  public l(i parami)
  {
    b = parami;
  }
  
  public void a()
  {
    if (c != null) {
      c.dismiss();
    }
  }
  
  public void a(IBinder paramIBinder)
  {
    Object localObject = b;
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(((i)localObject).e());
    a = new g(localBuilder.getContext(), R.layout.abc_list_menu_item_layout);
    a.a(this);
    b.a(a);
    localBuilder.setAdapter(a.a(), this);
    View localView = ((i)localObject).o();
    if (localView != null) {
      localBuilder.setCustomTitle(localView);
    }
    for (;;)
    {
      localBuilder.setOnKeyListener(this);
      c = localBuilder.create();
      c.setOnDismissListener(this);
      localObject = c.getWindow().getAttributes();
      type = 1003;
      if (paramIBinder != null) {
        token = paramIBinder;
      }
      flags |= 0x20000;
      c.show();
      return;
      localBuilder.setIcon(((i)localObject).n()).setTitle(((i)localObject).m());
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.a((m)a.a().getItem(paramInt), 0);
  }
  
  public void onCloseMenu(i parami, boolean paramBoolean)
  {
    if ((paramBoolean) || (parami == b)) {
      a();
    }
    if (d != null) {
      d.onCloseMenu(parami, paramBoolean);
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    a.onCloseMenu(b, true);
  }
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) || (paramInt == 4)) {
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        paramDialogInterface = c.getWindow();
        if (paramDialogInterface != null)
        {
          paramDialogInterface = paramDialogInterface.getDecorView();
          if (paramDialogInterface != null)
          {
            paramDialogInterface = paramDialogInterface.getKeyDispatcherState();
            if (paramDialogInterface != null)
            {
              paramDialogInterface.startTracking(paramKeyEvent, this);
              return true;
            }
          }
        }
      }
      else if ((paramKeyEvent.getAction() == 1) && (!paramKeyEvent.isCanceled()))
      {
        Object localObject = c.getWindow();
        if (localObject != null)
        {
          localObject = ((Window)localObject).getDecorView();
          if (localObject != null)
          {
            localObject = ((View)localObject).getKeyDispatcherState();
            if ((localObject != null) && (((KeyEvent.DispatcherState)localObject).isTracking(paramKeyEvent)))
            {
              b.b(true);
              paramDialogInterface.dismiss();
              return true;
            }
          }
        }
      }
    }
    return b.performShortcut(paramInt, paramKeyEvent, 0);
  }
  
  public boolean onOpenSubMenu(i parami)
  {
    if (d != null) {
      return d.onOpenSubMenu(parami);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */