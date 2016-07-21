package com.estrongs.android.pop.app;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.imageviewer.gallery.c;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.util.aw;
import com.estrongs.android.util.m;
import com.estrongs.fs.d;
import java.util.Date;
import java.util.LinkedList;

class dj
  extends BaseAdapter
{
  private Bitmap b;
  private aw c = new aw(ad.a(a).F(), ImageCommentActivity.j(a));
  
  dj(ImageCommentActivity paramImageCommentActivity) {}
  
  private int a()
  {
    return a.getResources().getDisplayMetrics().widthPixels - g.a(a, 15.0F);
  }
  
  private void a(View paramView, Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      paramView.findViewById(2131625038).setVisibility(8);
      int i = Math.min(paramBitmap.getWidth(), a());
      paramView = (ImageView)paramView.findViewById(2131624051);
      paramView.setLayoutParams(new LinearLayout.LayoutParams(i, i));
      paramView.setImageBitmap(paramBitmap);
      paramView.setVisibility(0);
      paramView.setOnClickListener(new do(this));
    }
  }
  
  public int getCount()
  {
    return ImageCommentActivity.e(a).size();
  }
  
  public Object getItem(int paramInt)
  {
    return ImageCommentActivity.e(a).get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = null;
    TextView localTextView1;
    TextView localTextView2;
    TextView localTextView3;
    if (paramInt == 0)
    {
      paramViewGroup = ImageCommentActivity.k(a).inflate(2130903378, null);
      if (a.getIntent().getBooleanExtra("is_dir", false)) {
        ((ImageView)paramViewGroup.findViewById(2131624051)).setBackgroundResource(2130837652);
      }
      localTextView1 = (TextView)paramViewGroup.findViewById(2131624055);
      localTextView2 = (TextView)paramViewGroup.findViewById(2131625357);
      localTextView3 = (TextView)paramViewGroup.findViewById(2131625372);
      if (((b == null) || (b.isRecycled())) && (ImageCommentActivity.l(a) == null) && (com.estrongs.a.b.a.a(10).indexOf("makeAndAddView") >= 0))
      {
        paramView = new c(null, d.a(a), ImageCommentActivity.b(a));
        ImageCommentActivity.c(a, new dk(this, "PicComment-ImageLoader", localTextView1, localTextView2, localTextView3, paramView, paramViewGroup));
        ImageCommentActivity.l(a).start();
        paramView = paramViewGroup;
        if (a.a != null)
        {
          localTextView1.setText(a.a.name);
          if (a.a.lastModifiedTime <= 0L) {
            break label358;
          }
          long l = a.a.lastModifiedTime;
          if (l > 0L) {
            localTextView2.setText(c.a(new Date(l)));
          }
          label264:
          ((TextView)a.findViewById(2131625255)).setText(a.a.ownerUsername);
          if ((a.a.description == null) || ("".equals(a.a.description))) {
            break label367;
          }
          localTextView3.setVisibility(0);
          localTextView3.setText(a.a.description);
          paramView = paramViewGroup;
        }
      }
    }
    label358:
    label367:
    do
    {
      return paramView;
      a(paramViewGroup, b);
      break;
      localTextView2.setText(null);
      break label264;
      localTextView3.setVisibility(8);
      return paramViewGroup;
      paramViewGroup = ImageCommentActivity.e(a).get(paramInt);
      if ((paramViewGroup instanceof com.gmail.yuyang226.flickr.a.a.a))
      {
        paramView = (com.gmail.yuyang226.flickr.a.a.a)paramViewGroup;
        paramViewGroup = ImageCommentActivity.k(a).inflate(2130903375, null);
        localTextView1 = (TextView)paramViewGroup.findViewById(2131625356);
        localTextView2 = (TextView)paramViewGroup.findViewById(2131625357);
        localTextView3 = (TextView)paramViewGroup.findViewById(2131625358);
        localTextView1.setText(paramView.a());
        localTextView2.setText(c.a(paramView.b()));
        localTextView3.setText(paramView.c());
        return paramViewGroup;
      }
    } while (paramViewGroup != ImageCommentActivity.h(a));
    return (View)paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */