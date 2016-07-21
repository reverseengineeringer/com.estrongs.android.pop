package com.flurry.sdk;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.List;

class ey$7
  implements AdapterView.OnItemClickListener
{
  ey$7(ey paramey, Context paramContext) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ey.g(b).removeAllViews();
    ey.b(b, a, ey.g(b));
    ey.f(b).setText((CharSequence)ey.h(b).get(paramInt));
    ei.a().a((String)ey.h(b).get(paramInt), ey.i(b));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ey.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */