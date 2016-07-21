package android.support.v7.app;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.y;
import android.view.Window.Callback;

final class AppCompatDelegateImplV7$ActionMenuPresenterCallback
  implements y
{
  private AppCompatDelegateImplV7$ActionMenuPresenterCallback(AppCompatDelegateImplV7 paramAppCompatDelegateImplV7) {}
  
  public void onCloseMenu(i parami, boolean paramBoolean)
  {
    AppCompatDelegateImplV7.access$1100(this$0, parami);
  }
  
  public boolean onOpenSubMenu(i parami)
  {
    Window.Callback localCallback = this$0.getWindowCallback();
    if (localCallback != null) {
      localCallback.onMenuOpened(108, parami);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.AppCompatDelegateImplV7.ActionMenuPresenterCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */