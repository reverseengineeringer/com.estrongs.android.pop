package com.estrongs.android.pop.app.analysis.viewholders;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class AnalysisResultGeneralPieView
  extends View
{
  private static final float MIN_PERCENT = 0.01F;
  private static final String MSG_CENTER_SUF = "%";
  private float animateValue = 1.0F;
  private ObjectAnimator mAnima;
  private long mAnimateTime = 1500L;
  private float[] mArrAngles;
  private List<Integer> mArrColors;
  private List<Integer> mArrColorsSecond;
  private List<Long> mArrData;
  private List<Long> mArrDataSecond;
  private PointF mCenter;
  private int mCenterColor = -1;
  private String mCenterTextColor = "#999999";
  private int mCenterTextSize = 2131165270;
  private int mCenterTextSufSize = 2131165255;
  private int mDefaultSize = 2131165330;
  private DecimalFormat mFormat = new DecimalFormat("#.##");
  private boolean mIsShowAnimaed;
  private float mMinAngle = 1.0F;
  private int mPadding = 2131165255;
  private Paint mPaint;
  private float mPercent;
  private float mPercentSecond;
  private int mRadius;
  private RectF mRect;
  private float mSpaceAngle = 6.0F;
  private float mSpaceMinAngle = mSpaceAngle / 2.0F;
  private Paint mTransparentPaint;
  private TextPaint mTxtPaint;
  private TextPaint mTxtSufPaint;
  
  public AnalysisResultGeneralPieView(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public AnalysisResultGeneralPieView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public AnalysisResultGeneralPieView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  public AnalysisResultGeneralPieView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    init();
  }
  
  private void calcAnglse()
  {
    int m = 0;
    mArrAngles = new float[mArrColors.size()];
    int j = 0;
    int k;
    for (int i = 0; j < mArrAngles.length; i = k)
    {
      k = i;
      if (((Long)mArrData.get(j)).longValue() > 0L) {
        k = i + 1;
      }
      j += 1;
    }
    float f3 = i;
    float f4 = mSpaceAngle;
    ArrayList localArrayList = new ArrayList();
    j = 0;
    float f2 = 0.0F;
    float f1 = 0.0F;
    if (j < mArrAngles.length)
    {
      mArrAngles[j] = (1.0F * (float)((Long)mArrData.get(j)).longValue() / (float)((Long)mArrData.get(mArrAngles.length)).longValue() * (360.0F - f3 * 1.0F * f4));
      if (mArrAngles[j] == 0.0F) {}
      for (;;)
      {
        j += 1;
        break;
        if (mArrAngles[j] < mMinAngle)
        {
          f1 += mMinAngle - mArrAngles[j];
          mArrAngles[j] = mMinAngle;
        }
        else
        {
          localArrayList.add(Integer.valueOf(j));
          f2 += mArrAngles[j];
        }
      }
    }
    if (f1 > 0.0F)
    {
      f3 = 1.0F * f1 / i;
      if (mSpaceMinAngle + f3 > mSpaceAngle) {
        break label304;
      }
      mSpaceAngle -= f3;
    }
    for (;;)
    {
      return;
      label304:
      mSpaceAngle = mSpaceMinAngle;
      f3 = mSpaceAngle;
      f4 = mSpaceMinAngle;
      float f5 = i;
      i = m;
      while (i < mArrAngles.length)
      {
        if (localArrayList.contains(Integer.valueOf(i)))
        {
          float[] arrayOfFloat = mArrAngles;
          arrayOfFloat[i] += mArrAngles[i] * 1.0F / f2 * (f1 - (f3 - f4) * f5);
        }
        i += 1;
      }
    }
  }
  
  private int dip2px(int paramInt)
  {
    return getContext().getResources().getDimensionPixelSize(paramInt);
  }
  
  private void drawArc(Canvas paramCanvas)
  {
    int i = 0;
    float f1 = 0.0F;
    if (i < mArrAngles.length)
    {
      float f2 = mArrAngles[i];
      if (f2 <= 0.0F) {
        break label102;
      }
      mPaint.setColor(((Integer)mArrColors.get(i)).intValue());
      paramCanvas.drawArc(mRect, f1 * getAnimateValue(), f2 * getAnimateValue(), true, mPaint);
      f1 += (mSpaceAngle + f2) * getAnimateValue();
    }
    label102:
    for (;;)
    {
      i += 1;
      break;
      return;
    }
  }
  
  private void drawCenterText(Canvas paramCanvas)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if ((mPercent > 0.0F) && (mPercent <= 0.01F))
    {
      localStringBuffer.append(0.01F);
      float f1 = (mTxtPaint.descent() - mTxtPaint.ascent()) / 2.0F - mTxtPaint.descent();
      float f2 = (mTxtPaint.measureText(localStringBuffer.toString()) + mTxtSufPaint.measureText("%")) / 2.0F;
      paramCanvas.drawText(localStringBuffer.toString(), mCenter.x - f2, mCenter.y + f1, mTxtPaint);
      float f3 = mCenter.x;
      paramCanvas.drawText("%", mTxtPaint.measureText(localStringBuffer.toString()) + (f3 - f2), f1 + mCenter.y, mTxtSufPaint);
      return;
    }
    if (mPercent > 10.0F) {}
    for (Object localObject = Integer.valueOf(Math.round(mPercent));; localObject = mFormat.format(mPercent))
    {
      localStringBuffer.append(localObject);
      break;
    }
  }
  
  private void drawTransparentCicle(Canvas paramCanvas)
  {
    paramCanvas.drawCircle(mCenter.x, mCenter.y, mRadius * 3 / 4, mTransparentPaint);
  }
  
  private void init()
  {
    mPaint = new Paint(1);
    mPaint.setStyle(Paint.Style.FILL);
    mTxtPaint = new TextPaint(1);
    mTxtPaint.setColor(Color.parseColor(mCenterTextColor));
    mTxtPaint.setTextSize(dip2px(mCenterTextSize));
    mTxtSufPaint = new TextPaint(1);
    mTxtSufPaint.setColor(Color.parseColor(mCenterTextColor));
    mTxtSufPaint.setTextSize(dip2px(mCenterTextSufSize));
    mTransparentPaint = new Paint(1);
    mTransparentPaint.setStrokeWidth(0.0F);
    mTransparentPaint.setStyle(Paint.Style.FILL_AND_STROKE);
    mTransparentPaint.setColor(mCenterColor);
    mAnima = ObjectAnimator.ofFloat(this, "animateValue", new float[] { 0.0F, 1.0F });
    mAnima.setInterpolator(new AccelerateDecelerateInterpolator());
    mAnima.setDuration(mAnimateTime);
    mAnima.addListener(new k(this));
  }
  
  public float getAnimateValue()
  {
    return animateValue;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawColor(0);
    if (getWidth() > getHeight()) {}
    for (int i = (getHeight() - dip2px(mPadding) * 2) / 2;; i = (getWidth() - dip2px(mPadding) * 2) / 2)
    {
      mRadius = i;
      mRect = new RectF();
      mRect.left = (getWidth() / 2 - mRadius);
      mRect.top = (getHeight() / 2 - mRadius);
      mRect.right = (getWidth() / 2 + mRadius);
      mRect.bottom = (getHeight() / 2 + mRadius);
      mCenter = new PointF(mRect.centerX(), mRect.centerY());
      drawArc(paramCanvas);
      drawTransparentCicle(paramCanvas);
      drawCenterText(paramCanvas);
      return;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = dip2px(mDefaultSize);
    setMeasuredDimension(Math.max(getSuggestedMinimumWidth(), resolveSize(i, paramInt1)), Math.max(getSuggestedMinimumHeight(), resolveSize(i, paramInt2)));
  }
  
  public void setAnimateValue(float paramFloat)
  {
    animateValue = paramFloat;
    postInvalidate();
  }
  
  public void setColorAndData(List<Integer> paramList, List<Long> paramList1, float paramFloat)
  {
    if (mAnima.isRunning())
    {
      mArrColorsSecond = paramList;
      mArrDataSecond = paramList1;
      mPercentSecond = paramFloat;
      return;
    }
    mArrColors = paramList;
    mArrData = paramList1;
    mPercent = paramFloat;
    calcAnglse();
    if (!mIsShowAnimaed)
    {
      startAnimate();
      return;
    }
    postInvalidate();
  }
  
  public void startAnimate()
  {
    if (mIsShowAnimaed) {}
    while ((Build.VERSION.SDK_INT < 11) || (mAnima.isRunning())) {
      return;
    }
    animateValue = 1.0F;
    mAnima.start();
    mIsShowAnimaed = true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.AnalysisResultGeneralPieView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */