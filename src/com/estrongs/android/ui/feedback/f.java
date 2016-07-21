package com.estrongs.android.ui.feedback;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RatingBar;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.util.p;

class f
  implements View.OnClickListener
{
  f(FeedbackRatingView paramFeedbackRatingView) {}
  
  public void onClick(View paramView)
  {
    if (FeedbackRatingView.f(a).getRating() < 4.0F) {
      p.a(FeedbackRatingView.e(a));
    }
    for (;;)
    {
      if (FeedbackRatingView.g(a) != null) {
        FeedbackRatingView.g(a).onClick(paramView);
      }
      return;
      String str = FeedbackRatingView.e(a).getPackageName();
      w.a(FeedbackRatingView.e(a), str, "pname");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.feedback.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */