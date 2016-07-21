package android.support.v7.app;

import android.support.v4.view.cn;
import android.support.v4.view.fp;
import android.support.v7.widget.ActionBarContainer;
import android.view.View;

class WindowDecorActionBar$1
  extends fp
{
  WindowDecorActionBar$1(WindowDecorActionBar paramWindowDecorActionBar) {}
  
  public void onAnimationEnd(View paramView)
  {
    if ((WindowDecorActionBar.access$000(this$0)) && (WindowDecorActionBar.access$100(this$0) != null))
    {
      cn.b(WindowDecorActionBar.access$100(this$0), 0.0F);
      cn.b(WindowDecorActionBar.access$200(this$0), 0.0F);
    }
    WindowDecorActionBar.access$200(this$0).setVisibility(8);
    WindowDecorActionBar.access$200(this$0).setTransitioning(false);
    WindowDecorActionBar.access$302(this$0, null);
    this$0.completeDeferredDestroyActionMode();
    if (WindowDecorActionBar.access$400(this$0) != null) {
      cn.y(WindowDecorActionBar.access$400(this$0));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.WindowDecorActionBar.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */