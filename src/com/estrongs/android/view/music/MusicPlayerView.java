package com.estrongs.android.view.music;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.v4.view.cn;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bl;
import com.estrongs.fs.impl.n.a;
import java.io.File;

public class MusicPlayerView
  extends RelativeLayout
  implements View.OnClickListener
{
  private Context a;
  private MusicProgressView b;
  private TextView c;
  private TextView d;
  private ImageView e;
  private ImageView f;
  private ImageView g;
  private View h;
  private m i;
  private i j;
  private at k;
  private Drawable l;
  private Drawable m;
  private Drawable n;
  
  public MusicPlayerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MusicPlayerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public MusicPlayerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    a = paramContext;
    inflate(paramContext, getLayout(), this);
    k = at.a(a);
    b = ((MusicProgressView)bl.a(this, 2131624526));
    c = ((TextView)bl.a(this, 2131624532));
    d = ((TextView)bl.a(this, 2131624533));
    e = ((ImageView)bl.a(this, 2131624528));
    f = ((ImageView)bl.a(this, 2131624529));
    g = ((ImageView)bl.a(this, 2131624530));
    h = bl.a(this, 2131624531);
    e.setOnClickListener(this);
    f.setOnClickListener(this);
    g.setOnClickListener(this);
    h.setOnClickListener(this);
    b.setOnClickListener(this);
    l = k.b(2130838252, 2131558654);
    m = k.b(2130838251, 2131558654);
    n = k.b(2130838250, 2131558654);
    g.setImageDrawable(n);
    e.setImageDrawable(n);
    f.setImageDrawable(l);
    cn.e(g, 180.0F);
    f.setImageDrawable(l);
  }
  
  private void b()
  {
    if (i != null) {
      i.s();
    }
  }
  
  private void c()
  {
    if (i != null) {
      i.t();
    }
  }
  
  private void d()
  {
    if (i != null) {
      i.u();
    }
  }
  
  private void e()
  {
    Intent localIntent = new Intent(a, PopAudioPlayer.class);
    localIntent.putExtra("isFromMusicGridViewPlayerView", true);
    a.startActivity(localIntent);
  }
  
  private int getLayout()
  {
    return 2130903135;
  }
  
  public void a()
  {
    c.setText("");
    d.setText("");
    a(0L, 1000L);
    e.a(2130837909, b);
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    b.a(paramLong1, paramLong2);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      f.setImageDrawable(m);
      return;
    }
    f.setImageDrawable(l);
  }
  
  public void onClick(View paramView)
  {
    if (paramView == f) {
      b();
    }
    do
    {
      return;
      if (paramView == e)
      {
        c();
        return;
      }
      if (paramView == g)
      {
        d();
        return;
      }
    } while ((paramView != h) && (paramView != b));
    e();
  }
  
  public void setAuthor(String paramString)
  {
    d.setText(paramString);
  }
  
  public void setMusicPath(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (!ap.bl(paramString)))
    {
      b.setImageDrawable(k.a(2130837909));
      return;
    }
    e.a(new a(new File(paramString)), b, 2130837909);
  }
  
  public void setName(String paramString)
  {
    c.setText(paramString);
  }
  
  public void setNextIvClickable(boolean paramBoolean)
  {
    g.setClickable(paramBoolean);
  }
  
  public void setOnPlayerViewListener(m paramm)
  {
    i = paramm;
  }
  
  public void setPlayItem(i parami)
  {
    j = parami;
    c.setText(e);
    d.setText(parami.b(getContext()));
    e.a(new a(new File(b)), b, 2130837909);
  }
  
  public void setPreIvClickable(boolean paramBoolean)
  {
    e.setClickable(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.music.MusicPlayerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */