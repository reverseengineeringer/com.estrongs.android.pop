package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.BaseAdapter;
import java.util.LinkedList;
import java.util.List;

class di
  implements Runnable
{
  di(dg paramdg, List paramList) {}
  
  public void run()
  {
    if (ImageCommentActivity.i(b.b))
    {
      ImageCommentActivity.g(b.b).remove(ImageCommentActivity.j(b.b));
      ImageCommentActivity.g(b.b).addAll(a);
      ImageCommentActivity.g(b.b).add(ImageCommentActivity.j(b.b));
      ImageCommentActivity.j(b.b).findViewById(2131361935).setVisibility(8);
    }
    for (;;)
    {
      ImageCommentActivity.k(b.b).notifyDataSetChanged();
      return;
      ImageCommentActivity.g(b.b).clear();
      ImageCommentActivity.g(b.b).add(ImageCommentActivity.h(b.b));
      ImageCommentActivity.g(b.b).addAll(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */