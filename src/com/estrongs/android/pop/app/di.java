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
    if (ImageCommentActivity.g(b.b))
    {
      ImageCommentActivity.e(b.b).remove(ImageCommentActivity.h(b.b));
      ImageCommentActivity.e(b.b).addAll(a);
      ImageCommentActivity.e(b.b).add(ImageCommentActivity.h(b.b));
      ImageCommentActivity.h(b.b).findViewById(2131624429).setVisibility(8);
    }
    for (;;)
    {
      ImageCommentActivity.i(b.b).notifyDataSetChanged();
      return;
      ImageCommentActivity.e(b.b).clear();
      ImageCommentActivity.e(b.b).add(ImageCommentActivity.f(b.b));
      ImageCommentActivity.e(b.b).addAll(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */