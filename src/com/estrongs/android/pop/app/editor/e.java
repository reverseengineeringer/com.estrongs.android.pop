package com.estrongs.android.pop.app.editor;

class e
  implements Runnable
{
  e(ObservableScrollView paramObservableScrollView) {}
  
  public void run()
  {
    synchronized (ObservableScrollView.a(a))
    {
      int i = a.getScrollY();
      if (ObservableScrollView.b(a) - i == 0)
      {
        if (ObservableScrollView.c(a) != null)
        {
          ObservableScrollView.c(a).a();
          ObservableScrollView.a(a, false);
        }
        return;
      }
      ObservableScrollView.a(a, a.getScrollY());
      a.postDelayed(ObservableScrollView.d(a), ObservableScrollView.e(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */