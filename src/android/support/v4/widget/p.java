package android.support.v4.widget;

class p
  implements Runnable
{
  p(ContentLoadingProgressBar paramContentLoadingProgressBar) {}
  
  public void run()
  {
    ContentLoadingProgressBar.b(a, false);
    if (!ContentLoadingProgressBar.a(a))
    {
      ContentLoadingProgressBar.a(a, System.currentTimeMillis());
      a.setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */