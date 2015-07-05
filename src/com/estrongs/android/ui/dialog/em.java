package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.text.InputFilter.LengthFilter;
import android.text.Spanned;
import com.estrongs.android.ui.view.ag;

class em
  extends InputFilter.LengthFilter
{
  private long b = 0L;
  
  em(ek paramek, int paramInt)
  {
    super(paramInt);
  }
  
  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    paramInt3 = paramSpanned.subSequence(0, paramInt3).toString().getBytes().length;
    int i = paramSpanned.subSequence(paramInt4, paramSpanned.length()).toString().getBytes().length + paramInt3;
    paramInt4 = paramCharSequence.subSequence(paramInt1, paramInt2).toString().getBytes().length;
    if (255 - i <= 0)
    {
      long l = System.currentTimeMillis();
      if (l - b > 1000L)
      {
        ag.a(a.a, a.a.getString(2131427919), 0);
        b = l;
      }
      return "";
    }
    if (255 - i >= paramInt4) {
      return null;
    }
    paramInt3 = paramInt2;
    if (paramInt2 <= paramInt1) {
      return "";
    }
    do
    {
      paramInt4 = paramCharSequence.subSequence(paramInt1, paramInt3).toString().getBytes().length;
      if (paramInt4 + i <= 255) {
        break;
      }
      paramInt3 -= 1;
    } while (paramInt3 > paramInt1);
    return "";
    return paramCharSequence.subSequence(paramInt1, paramInt3);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.em
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */