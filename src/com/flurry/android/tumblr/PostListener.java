package com.flurry.android.tumblr;

public abstract interface PostListener
{
  public abstract void onPostFailure(String paramString);
  
  public abstract void onPostSuccess(Long paramLong);
}

/* Location:
 * Qualified Name:     com.flurry.android.tumblr.PostListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */