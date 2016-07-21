package com.estrongs.android.ui.feedback;

import android.content.Context;
import android.view.View;
import android.widget.RatingBar;
import android.widget.RatingBar.OnRatingBarChangeListener;
import android.widget.TextView;

class e
  implements RatingBar.OnRatingBarChangeListener
{
  e(FeedbackRatingView paramFeedbackRatingView) {}
  
  public void onRatingChanged(RatingBar paramRatingBar, float paramFloat, boolean paramBoolean)
  {
    if (!paramBoolean) {
      return;
    }
    FeedbackRatingView.b(a);
    if (paramFloat == 0.0F)
    {
      FeedbackRatingView.c(a).setEnabled(false);
      FeedbackRatingView.d(a).setEnabled(false);
      FeedbackRatingView.d(a).setText(FeedbackRatingView.e(a).getString(2131231200));
      return;
    }
    if (paramFloat < 4.0F)
    {
      FeedbackRatingView.c(a).setEnabled(true);
      FeedbackRatingView.d(a).setText(FeedbackRatingView.e(a).getString(2131230816));
      FeedbackRatingView.d(a).setEnabled(true);
      return;
    }
    FeedbackRatingView.c(a).setEnabled(true);
    FeedbackRatingView.d(a).setText(FeedbackRatingView.e(a).getString(2131231200));
    FeedbackRatingView.d(a).setEnabled(true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.feedback.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */