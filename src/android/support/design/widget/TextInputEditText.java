package android.support.design.widget;

import android.content.Context;
import android.support.v7.widget.AppCompatEditText;
import android.util.AttributeSet;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;

public class TextInputEditText
  extends AppCompatEditText
{
  public TextInputEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public TextInputEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    InputConnection localInputConnection = super.onCreateInputConnection(paramEditorInfo);
    if ((localInputConnection != null) && (hintText == null))
    {
      ViewParent localViewParent = getParent();
      if ((localViewParent instanceof TextInputLayout)) {
        hintText = ((TextInputLayout)localViewParent).getHint();
      }
    }
    return localInputConnection;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TextInputEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */