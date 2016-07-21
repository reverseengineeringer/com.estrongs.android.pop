package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

abstract interface AppCompatDrawableManager$InflateDelegate
{
  public abstract Drawable createFromXmlInner(Context paramContext, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme);
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatDrawableManager.InflateDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */