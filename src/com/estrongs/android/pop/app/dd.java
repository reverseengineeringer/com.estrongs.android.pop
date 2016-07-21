package com.estrongs.android.pop.app;

import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.m;
import java.util.List;

class dd
  extends m
{
  dd(ImageCommentActivity paramImageCommentActivity, String paramString)
  {
    super(paramString);
  }
  
  public void run()
  {
    try
    {
      Object localObject = new TypedMap();
      ((TypedMap)localObject).put("limit", ImageCommentActivity.c(a).get("offset"));
      ((TypedMap)localObject).put("offset", Integer.valueOf(0));
      localObject = PhotoInfoManager.getComments(ImageCommentActivity.b(a), (TypedMap)localObject);
      a.a(new de(this));
      if (g) {
        return;
      }
      int i = ((List)localObject).size();
      if (i > 0)
      {
        ImageCommentActivity.c(a).put("offset", Integer.valueOf(i));
        a.a(new df(this, (List)localObject));
      }
    }
    catch (PhotoInfoException localPhotoInfoException)
    {
      for (;;)
      {
        localPhotoInfoException.printStackTrace();
      }
    }
    ImageCommentActivity.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */