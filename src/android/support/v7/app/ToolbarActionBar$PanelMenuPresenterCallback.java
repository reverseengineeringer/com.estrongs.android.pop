package android.support.v7.app;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.y;
import android.view.Window.Callback;

final class ToolbarActionBar$PanelMenuPresenterCallback
  implements y
{
  private ToolbarActionBar$PanelMenuPresenterCallback(ToolbarActionBar paramToolbarActionBar) {}
  
  public void onCloseMenu(i parami, boolean paramBoolean)
  {
    if (ToolbarActionBar.access$000(this$0) != null) {
      ToolbarActionBar.access$000(this$0).onPanelClosed(0, parami);
    }
  }
  
  public boolean onOpenSubMenu(i parami)
  {
    if ((parami == null) && (ToolbarActionBar.access$000(this$0) != null)) {
      ToolbarActionBar.access$000(this$0).onMenuOpened(0, parami);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.ToolbarActionBar.PanelMenuPresenterCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */