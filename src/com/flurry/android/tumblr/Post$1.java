package com.flurry.android.tumblr;

import com.flurry.sdk.ec;
import com.flurry.sdk.js;
import com.flurry.sdk.kb;

class Post$1
  implements kb<ec>
{
  Post$1(Post paramPost) {}
  
  public void a(ec paramec)
  {
    if (c != Post.a(a)) {}
    PostListener localPostListener;
    do
    {
      do
      {
        return;
      } while (b == null);
      localPostListener = Post.b(a);
    } while (localPostListener == null);
    js.a().a(new Post.1.1(this, paramec, localPostListener));
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.tumblr.Post.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */