package android.support.v4.app;

import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

class aa
  extends FrameLayout
{
  public aa(Context paramContext)
  {
    super(paramContext);
  }
  
  static ViewGroup a(View paramView)
  {
    aa localaa = new aa(paramView.getContext());
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (localLayoutParams != null) {
      localaa.setLayoutParams(localLayoutParams);
    }
    paramView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    localaa.addView(paramView);
    return localaa;
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */