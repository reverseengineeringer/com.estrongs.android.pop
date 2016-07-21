.class public Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;
.super Landroid/view/View;


# static fields
.field private static final MIN_PERCENT:F = 0.01f

.field private static final MSG_CENTER_SUF:Ljava/lang/String; = "%"


# instance fields
.field private animateValue:F

.field private mAnima:Landroid/animation/ObjectAnimator;

.field private mAnimateTime:J

.field private mArrAngles:[F

.field private mArrColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mArrColorsSecond:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mArrData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mArrDataSecond:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCenter:Landroid/graphics/PointF;

.field private mCenterColor:I

.field private mCenterTextColor:Ljava/lang/String;

.field private mCenterTextSize:I

.field private mCenterTextSufSize:I

.field private mDefaultSize:I

.field private mFormat:Ljava/text/DecimalFormat;

.field private mIsShowAnimaed:Z

.field private mMinAngle:F

.field private mPadding:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPercent:F

.field private mPercentSecond:F

.field private mRadius:I

.field private mRect:Landroid/graphics/RectF;

.field private mSpaceAngle:F

.field private mSpaceMinAngle:F

.field private mTransparentPaint:Landroid/graphics/Paint;

.field private mTxtPaint:Landroid/text/TextPaint;

.field private mTxtSufPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const v3, 0x7f070047

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070092

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mDefaultSize:I

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPadding:I

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceMinAngle:F

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mMinAngle:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterColor:I

    const v0, 0x7f070056

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextSize:I

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextSufSize:I

    const-string v0, "#999999"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextColor:Ljava/lang/String;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mAnimateTime:J

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mFormat:Ljava/text/DecimalFormat;

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->animateValue:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v3, 0x7f070047

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f070092

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mDefaultSize:I

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPadding:I

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceMinAngle:F

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mMinAngle:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterColor:I

    const v0, 0x7f070056

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextSize:I

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextSufSize:I

    const-string v0, "#999999"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextColor:Ljava/lang/String;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mAnimateTime:J

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mFormat:Ljava/text/DecimalFormat;

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->animateValue:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const v3, 0x7f070047

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f070092

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mDefaultSize:I

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPadding:I

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceMinAngle:F

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mMinAngle:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterColor:I

    const v0, 0x7f070056

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextSize:I

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextSufSize:I

    const-string v0, "#999999"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextColor:Ljava/lang/String;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mAnimateTime:J

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mFormat:Ljava/text/DecimalFormat;

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->animateValue:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const v3, 0x7f070047

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7f070092

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mDefaultSize:I

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPadding:I

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceMinAngle:F

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mMinAngle:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterColor:I

    const v0, 0x7f070056

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextSize:I

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextSufSize:I

    const-string v0, "#999999"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextColor:Ljava/lang/String;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mAnimateTime:J

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mFormat:Ljava/text/DecimalFormat;

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->animateValue:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrColorsSecond:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrDataSecond:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;)F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPercentSecond:F

    return v0
.end method

.method private calcAnglse()V
    .locals 15

    const/4 v2, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    move v1, v2

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x43b40000    # 360.0f

    int-to-float v1, v3

    mul-float/2addr v1, v14

    iget v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    mul-float/2addr v1, v4

    sub-float v7, v0, v1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v4, v5

    move v6, v5

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v9, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrData:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-float v0, v10

    mul-float v10, v14, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrData:Ljava/util/List;

    iget-object v11, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    array-length v11, v11

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    long-to-float v0, v12

    div-float v0, v10, v0

    mul-float/2addr v0, v7

    aput v0, v9, v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    aget v0, v0, v1

    cmpl-float v0, v0, v5

    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    aget v0, v0, v1

    iget v9, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mMinAngle:F

    cmpg-float v0, v0, v9

    if-gez v0, :cond_3

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mMinAngle:F

    iget-object v9, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    aget v9, v9, v1

    sub-float/2addr v0, v9

    add-float/2addr v6, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    iget v9, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mMinAngle:F

    aput v9, v0, v1

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    aget v0, v0, v1

    add-float/2addr v4, v0

    goto :goto_2

    :cond_4
    cmpl-float v0, v6, v5

    if-lez v0, :cond_5

    mul-float v0, v14, v6

    int-to-float v1, v3

    div-float/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceMinAngle:F

    add-float/2addr v1, v0

    iget v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_6

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    :cond_5
    return-void

    :cond_6
    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceMinAngle:F

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceMinAngle:F

    sub-float/2addr v0, v1

    int-to-float v1, v3

    mul-float/2addr v0, v1

    sub-float v0, v6, v0

    :goto_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    array-length v1, v1

    if-ge v2, v1, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    aget v3, v1, v2

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    aget v5, v5, v2

    mul-float/2addr v5, v14

    div-float/2addr v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    aput v3, v1, v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private dip2px(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v0, 0x0

    move v6, v0

    move v7, v8

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    array-length v0, v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrAngles:[F

    aget v9, v0, v6

    cmpl-float v0, v9, v8

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrColors:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getAnimateValue()F

    move-result v0

    mul-float v2, v7, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getAnimateValue()F

    move-result v0

    mul-float v3, v9, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mSpaceAngle:F

    add-float/2addr v0, v9

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getAnimateValue()F

    move-result v1

    mul-float/2addr v0, v1

    add-float v1, v7, v0

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v1, v7

    goto :goto_1
.end method

.method private drawCenterText(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v5, 0x40000000    # 2.0f

    const v3, 0x3c23d70a    # 0.01f

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPercent:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPercent:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtSufPaint:Landroid/text/TextPaint;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v3, "%"

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v2, v4, v2

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtSufPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPercent:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPercent:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mFormat:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPercent:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private drawTransparentCicle(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRadius:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 4

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextSize:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->dip2px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtSufPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtSufPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTxtSufPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterTextSufSize:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->dip2px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTransparentPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTransparentPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTransparentPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mTransparentPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenterColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const-string v0, "animateValue"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mAnima:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mAnima:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mAnima:Landroid/animation/ObjectAnimator;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mAnimateTime:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mAnima:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/k;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/k;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getAnimateValue()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->animateValue:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPadding:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->dip2px(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRadius:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRadius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mCenter:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->drawArc(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->drawTransparentCicle(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->drawCenterText(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPadding:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->dip2px(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mDefaultSize:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->dip2px(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->resolveSize(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->resolveSize(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAnimateValue(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->animateValue:F

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->postInvalidate()V

    return-void
.end method

.method public setColorAndData(Ljava/util/List;Ljava/util/List;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;F)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mAnima:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrColorsSecond:Ljava/util/List;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrDataSecond:Ljava/util/List;

    iput p3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPercentSecond:F

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrColors:Ljava/util/List;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mArrData:Ljava/util/List;

    iput p3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mPercent:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->calcAnglse()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mIsShowAnimaed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->startAnimate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->postInvalidate()V

    goto :goto_0
.end method

.method public startAnimate()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mIsShowAnimaed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mAnima:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->animateValue:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mAnima:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->mIsShowAnimaed:Z

    goto :goto_0
.end method
