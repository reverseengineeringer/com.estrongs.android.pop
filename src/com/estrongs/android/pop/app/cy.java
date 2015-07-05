package com.estrongs.android.pop.app;

import com.gmail.yuyang226.flickr.a.a.a;
import java.util.Comparator;
import java.util.Date;

class cy
  implements Comparator<a>
{
  cy(ImageCommentActivity paramImageCommentActivity) {}
  
  public int a(a parama1, a parama2)
  {
    long l1 = parama1.b().getTime();
    long l2 = parama2.b().getTime();
    if (l1 == l2) {
      return 0;
    }
    if (l1 > l2) {
      return -1;
    }
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */