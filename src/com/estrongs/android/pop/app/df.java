package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.BaseAdapter;
import java.util.LinkedList;
import java.util.List;

class df
  implements Runnable
{
  df(dd paramdd, List paramList) {}
  
  public void run()
  {
    ImageCommentActivity.g(b.a).clear();
    ImageCommentActivity.g(b.a).add(ImageCommentActivity.h(b.a));
    ImageCommentActivity.g(b.a).addAll(a);
    if (ImageCommentActivity.i(b.a))
    {
      ImageCommentActivity.g(b.a).add(ImageCommentActivity.j(b.a));
      ImageCommentActivity.j(b.a).findViewById(2131361935).setVisibility(8);
    }
    ImageCommentActivity.k(b.a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */