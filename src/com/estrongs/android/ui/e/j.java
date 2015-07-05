package com.estrongs.android.ui.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.esclasses.g;

public class j
  extends cj
{
  private PopAudioPlayer g;
  private View h;
  private ImageView i;
  private View j;
  private ImageView k;
  private View l;
  private ImageView m;
  private ImageView n;
  private TextView o;
  private TextView p;
  
  public j(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, paramBoolean);
    k();
  }
  
  private void k()
  {
    if ((b instanceof PopAudioPlayer))
    {
      g = ((PopAudioPlayer)b);
      View localView = g.a(b).inflate(2130903060, null);
      a(localView);
      h = localView.findViewById(2131361938);
      i = ((ImageView)h.findViewById(2131361939));
      h.setOnClickListener(new k(this));
      j = localView.findViewById(2131361942);
      k = ((ImageView)j.findViewById(2131361943));
      j.setOnClickListener(new l(this));
      l = localView.findViewById(2131361946);
      m = ((ImageView)l.findViewById(2131361947));
      l.setOnClickListener(new m(this));
      n = ((ImageView)localView.findViewById(2131361853));
      o = ((TextView)localView.findViewById(2131361825));
      p = ((TextView)localView.findViewById(2131361956));
      localView.findViewById(2131361955).setOnClickListener(new n(this));
      return;
    }
    throw new IllegalStateException("BottomMenu_AudioPlayList is used for PopAudioPlayer only!");
  }
  
  public void a(Bitmap paramBitmap)
  {
    n.setImageBitmap(paramBitmap);
  }
  
  public void a(String paramString)
  {
    o.setText(paramString);
  }
  
  public void b(String paramString)
  {
    p.setText(paramString);
  }
  
  public void h()
  {
    k.setImageResource(2130837535);
  }
  
  public void i()
  {
    k.setImageResource(2130837535);
  }
  
  public void j()
  {
    k.setImageResource(2130837534);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */