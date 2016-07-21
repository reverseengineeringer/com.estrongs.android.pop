package com.estrongs.android.widget;

class bt
  implements Runnable
{
  bt(TranslateImageView paramTranslateImageView) {}
  
  public void run()
  {
    if ((a.isShown()) && (TranslateImageView.a(a) != TranslateImageView.b(a))) {
      a.postInvalidate();
    }
    do
    {
      return;
      TranslateImageView.a(a, TranslateImageView.a(a));
      TranslateImageView.a(a, false);
      if (TranslateImageView.c(a) != null)
      {
        TranslateImageView.c(a).a();
        TranslateImageView.a(a, null);
      }
    } while ((TranslateImageView.b(a) != 0) || (TranslateImageView.d(a) == null));
    TranslateImageView.d(a).a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */