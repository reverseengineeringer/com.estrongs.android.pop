package com.flurry.sdk;

import android.util.SparseArray;
import com.flurry.android.tumblr.Post;

public class me
{
  private static me b = null;
  private SparseArray<Post> a = new SparseArray();
  
  public static me a()
  {
    if (b == null) {
      b = new me();
    }
    return b;
  }
  
  public void a(int paramInt)
  {
    a.remove(paramInt);
  }
  
  public void a(int paramInt, Post paramPost)
  {
    a.append(paramInt, paramPost);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.me
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */