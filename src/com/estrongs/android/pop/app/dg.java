package com.estrongs.android.pop.app;

import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.m;
import java.util.List;

class dg
  extends m
{
  dg(ImageCommentActivity paramImageCommentActivity, String paramString, boolean paramBoolean)
  {
    super(paramString);
  }
  
  public void run()
  {
    try
    {
      List localList = PhotoInfoManager.getComments(ImageCommentActivity.c(b), ImageCommentActivity.d(b));
      if (localList == null) {
        return;
      }
      i = localList.size();
      if ((i == 0) && (a))
      {
        b.a(new dh(this));
        return;
      }
    }
    catch (PhotoInfoException localPhotoInfoException)
    {
      int i;
      localPhotoInfoException.printStackTrace();
      while (!g)
      {
        ImageCommentActivity.b(b, null);
        return;
        ImageCommentActivity.d(b).put("offset", Integer.valueOf(i + ImageCommentActivity.d(b).getInt("offset")));
        b.a(new di(this, localPhotoInfoException));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */