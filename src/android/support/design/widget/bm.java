package android.support.design.widget;

import android.view.MotionEvent;
import android.view.View;

final class bm
  extends bx<Snackbar.SnackbarLayout>
{
  bm(Snackbar paramSnackbar) {}
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, Snackbar.SnackbarLayout paramSnackbarLayout, MotionEvent paramMotionEvent)
  {
    if (paramCoordinatorLayout.a(paramSnackbarLayout, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
      switch (paramMotionEvent.getActionMasked())
      {
      }
    }
    for (;;)
    {
      return super.a(paramCoordinatorLayout, paramSnackbarLayout, paramMotionEvent);
      bq.a().c(Snackbar.a(a));
      continue;
      bq.a().d(Snackbar.a(a));
    }
  }
  
  public boolean a(View paramView)
  {
    return paramView instanceof Snackbar.SnackbarLayout;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */