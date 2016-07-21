package com.estrongs.android.ui.e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.theme.at;

public class cb
  extends ck
{
  private PopAudioPlayer h;
  private View i;
  private ImageView j;
  private View k;
  private ImageView l;
  private View m;
  private ImageView n;
  private View o;
  private ImageView p;
  private View q;
  private ImageView r;
  private Handler s;
  private Drawable t;
  private Drawable u;
  private Drawable v;
  
  public cb(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, paramBoolean);
    h();
  }
  
  private void a(ImageView paramImageView, int paramInt1, int paramInt2)
  {
    paramImageView.setImageDrawable(at.a(b).b(paramInt1, paramInt2));
  }
  
  private void h()
  {
    if ((b instanceof PopAudioPlayer))
    {
      h = ((PopAudioPlayer)b);
      s = new Handler();
      View localView = k.a(b).inflate(2130903121, null);
      a(localView);
      t = at.a(b).b(2130838638, 2131558745);
      u = at.a(b).b(2130838580, 2131558745);
      v = at.a(b).b(2130838579, 2131558745);
      i = localView.findViewById(2131624437);
      j = ((ImageView)i.findViewById(2131624438));
      i.setOnClickListener(new cc(this));
      k = localView.findViewById(2131624439);
      l = ((ImageView)k.findViewById(2131624440));
      k.setOnClickListener(new cd(this));
      m = localView.findViewById(2131624441);
      n = ((ImageView)m.findViewById(2131624442));
      n.setImageDrawable(t);
      m.setOnClickListener(new ce(this));
      o = localView.findViewById(2131624443);
      p = ((ImageView)o.findViewById(2131624444));
      p.setImageDrawable(u);
      o.setOnClickListener(new cf(this));
      q = localView.findViewById(2131624445);
      r = ((ImageView)q.findViewById(2131624446));
      r.setImageDrawable(v);
      q.setOnClickListener(new cg(this));
      return;
    }
    throw new IllegalStateException("BottomMenu_AudioPlaying is used for PopAudioPlayer only!");
  }
  
  public void c(int paramInt)
  {
    if (paramInt == 1)
    {
      a(l, 2130838587, 2131558648);
      return;
    }
    a(l, 2130838587, 2131558745);
  }
  
  public void d(int paramInt)
  {
    if (paramInt == 1)
    {
      a(j, 2130838607, 2131558648);
      return;
    }
    if (paramInt == 2)
    {
      a(j, 2130838562, 2131558648);
      return;
    }
    a(j, 2130838562, 2131558745);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */