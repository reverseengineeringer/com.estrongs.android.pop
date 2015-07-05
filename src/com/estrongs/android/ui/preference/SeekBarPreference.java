package com.estrongs.android.ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.Preference;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

public class SeekBarPreference
  extends Preference
  implements SeekBar.OnSeekBarChangeListener
{
  private final String a = getClass().getName();
  private int b = 100;
  private int c = 0;
  private int d = 1;
  private int e;
  private String f = "";
  private String g = "";
  private SeekBar h;
  private TextView i;
  
  public SeekBarPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public SeekBarPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private String a(AttributeSet paramAttributeSet, String paramString1, String paramString2, String paramString3)
  {
    paramAttributeSet = paramAttributeSet.getAttributeValue(paramString1, paramString2);
    if (paramAttributeSet == null) {
      return paramString3;
    }
    return paramAttributeSet;
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    a(paramAttributeSet);
    h = new SeekBar(paramContext, paramAttributeSet);
    h.setMax(b - c);
    h.setOnSeekBarChangeListener(this);
  }
  
  private void a(AttributeSet paramAttributeSet)
  {
    b = paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "max", 100);
    c = paramAttributeSet.getAttributeIntValue("http://www.estrongs.com", "min", 0);
    f = a(paramAttributeSet, "http://www.estrongs.com", "unitsLeft", "");
    g = a(paramAttributeSet, "http://www.estrongs.com", "unitsRight", a(paramAttributeSet, "http://www.estrongs.com", "units", ""));
    try
    {
      paramAttributeSet = paramAttributeSet.getAttributeValue("http://www.estrongs.com", "interval");
      if (paramAttributeSet != null) {
        d = Integer.parseInt(paramAttributeSet);
      }
      return;
    }
    catch (Exception paramAttributeSet)
    {
      Log.e(a, "Invalid interval value", paramAttributeSet);
    }
  }
  
  protected void a(View paramView)
  {
    try
    {
      paramView = (RelativeLayout)paramView;
      i = ((TextView)paramView.findViewById(2131362735));
      i.setText(String.valueOf(e));
      i.setMinimumWidth(30);
      h.setProgress(e - c);
      ((TextView)paramView.findViewById(2131362734)).setText(g);
      ((TextView)paramView.findViewById(2131362736)).setText(f);
      return;
    }
    catch (Exception paramView)
    {
      Log.e(a, "Error updating seek bar preference", paramView);
    }
  }
  
  public void onBindView(View paramView)
  {
    super.onBindView(paramView);
    try
    {
      ViewParent localViewParent = h.getParent();
      ViewGroup localViewGroup = (ViewGroup)paramView.findViewById(2131362737);
      if (localViewParent != localViewGroup)
      {
        if (localViewParent != null) {
          ((ViewGroup)localViewParent).removeView(h);
        }
        localViewGroup.removeAllViews();
        localViewGroup.addView(h, -1, -2);
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.e(a, "Error binding view: " + localException.toString());
      }
    }
    a(paramView);
  }
  
  protected View onCreateView(ViewGroup paramViewGroup)
  {
    try
    {
      paramViewGroup = (RelativeLayout)((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(2130903247, paramViewGroup, false);
      return paramViewGroup;
    }
    catch (Exception paramViewGroup)
    {
      Log.e(a, "Error creating seek bar preference", paramViewGroup);
    }
    return null;
  }
  
  protected Object onGetDefaultValue(TypedArray paramTypedArray, int paramInt)
  {
    return Integer.valueOf(paramTypedArray.getInt(paramInt, 50));
  }
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    int j = c + paramInt;
    if (j > b) {
      paramInt = b;
    }
    while (!callChangeListener(Integer.valueOf(paramInt)))
    {
      paramSeekBar.setProgress(e - c);
      return;
      if (j < c)
      {
        paramInt = c;
      }
      else
      {
        paramInt = j;
        if (d != 1)
        {
          paramInt = j;
          if (j % d != 0) {
            paramInt = Math.round(j / d) * d;
          }
        }
      }
    }
    e = paramInt;
    i.setText(String.valueOf(paramInt));
    persistInt(paramInt);
  }
  
  protected void onSetInitialValue(boolean paramBoolean, Object paramObject)
  {
    if (paramBoolean)
    {
      e = getPersistedInt(e);
      return;
    }
    try
    {
      j = ((Integer)paramObject).intValue();
      persistInt(j);
      e = j;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.e(a, "Invalid default value: " + paramObject.toString());
        int j = 0;
      }
    }
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    notifyChanged();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.SeekBarPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */