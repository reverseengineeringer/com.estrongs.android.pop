package com.estrongs.android.ui.e;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.esclasses.g;

public class o
  extends cj
{
  private PopAudioPlayer g;
  private View h;
  private ImageView i;
  private View j;
  private ImageView k;
  private View l;
  private ImageView m;
  private View n;
  private ImageView o;
  private View p;
  private ImageView q;
  private Handler r;
  
  public o(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, paramBoolean);
    k();
  }
  
  private void k()
  {
    if ((b instanceof PopAudioPlayer))
    {
      g = ((PopAudioPlayer)b);
      r = new Handler();
      View localView = g.a(b).inflate(2130903058, null);
      a(localView);
      h = localView.findViewById(2131361938);
      i = ((ImageView)h.findViewById(2131361939));
      h.setOnClickListener(new p(this));
      j = localView.findViewById(2131361940);
      k = ((ImageView)j.findViewById(2131361941));
      j.setOnClickListener(new q(this));
      l = localView.findViewById(2131361942);
      m = ((ImageView)l.findViewById(2131361943));
      l.setOnClickListener(new r(this));
      n = localView.findViewById(2131361944);
      o = ((ImageView)n.findViewById(2131361945));
      n.setOnClickListener(new s(this));
      p = localView.findViewById(2131361946);
      q = ((ImageView)p.findViewById(2131361947));
      p.setOnClickListener(new t(this));
      return;
    }
    throw new IllegalStateException("BottomMenu_AudioPlaying is used for PopAudioPlayer only!");
  }
  
  public void b(int paramInt)
  {
    if (paramInt == 1)
    {
      o.setImageResource(2130837539);
      return;
    }
    o.setImageResource(2130837538);
  }
  
  public void c(int paramInt)
  {
    if (paramInt == 1)
    {
      k.setImageResource(2130837537);
      return;
    }
    if (paramInt == 2)
    {
      k.setImageResource(2130837536);
      return;
    }
    k.setImageResource(2130837541);
  }
  
  public void h()
  {
    m.setImageResource(2130837535);
  }
  
  public void i()
  {
    m.setImageResource(2130837535);
  }
  
  public void j()
  {
    m.setImageResource(2130837534);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */