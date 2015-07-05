.class public Lcom/estrongs/android/widget/esswitch/Switch;
.super Landroid/widget/CompoundButton;


# static fields
.field private static final B:[I


# instance fields
.field private final A:Landroid/graphics/Rect;

.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:Landroid/view/VelocityTracker;

.field private m:I

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/text/TextPaint;

.field private w:Landroid/content/res/ColorStateList;

.field private x:Landroid/text/Layout;

.field private y:Landroid/text/Layout;

.field private z:Lcom/estrongs/android/widget/esswitch/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010010

    aput v2, v0, v1

    sput-object v0, Lcom/estrongs/android/widget/esswitch/Switch;->B:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/widget/esswitch/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f010011

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/widget/esswitch/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->l:Landroid/view/VelocityTracker;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v1, Landroid/text/TextPaint;->density:F

    sget-object v0, Lcom/estrongs/android/pop/ah;->e:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->f:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->g:Ljava/lang/CharSequence;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->c:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->d:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->e:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/estrongs/android/widget/esswitch/Switch;->a(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->i:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->m:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->refreshDrawableState()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/esswitch/Switch;->setChecked(Z)V

    return-void
.end method

.method private a(II)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/widget/esswitch/Switch;->a(Landroid/graphics/Typeface;I)V

    return-void

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private a(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/esswitch/Switch;->setChecked(Z)V

    return-void
.end method

.method private a()Z
    .locals 2

    iget v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->n:F

    invoke-direct {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(FF)Z
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->s:I

    iget v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->i:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->r:I

    iget v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->n:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->i:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->q:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/estrongs/android/widget/esswitch/Switch;->i:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/estrongs/android/widget/esswitch/Switch;->u:I

    iget v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->i:I

    add-int/2addr v3, v4

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    int-to-float v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    int-to-float v0, v3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()I
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->o:I

    iget v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->q:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->h:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/esswitch/Switch;->a(Landroid/view/MotionEvent;)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->l:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->m:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/estrongs/android/widget/esswitch/Switch;->a(Z)V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->a()Z

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/esswitch/Switch;->a(Z)V

    goto :goto_2
.end method

.method private c(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->z:Lcom/estrongs/android/widget/esswitch/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->z:Lcom/estrongs/android/widget/esswitch/c;

    invoke-interface {v0, p1, p0}, Lcom/estrongs/android/widget/esswitch/c;->a(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/estrongs/android/pop/ah;->g:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->w:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v2, v1

    iget-object v3, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->requestLayout()V

    :cond_0
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/widget/esswitch/Switch;->a(II)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/estrongs/android/widget/esswitch/a;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/widget/esswitch/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->z:Lcom/estrongs/android/widget/esswitch/c;

    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->z:Lcom/estrongs/android/widget/esswitch/c;

    invoke-interface {v1, v6}, Lcom/estrongs/android/widget/esswitch/c;->a(Z)V

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->w:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->z:Lcom/estrongs/android/widget/esswitch/c;

    goto :goto_1
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->requestLayout()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->invalidate()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Typeface;I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/esswitch/Switch;->a(Landroid/graphics/Typeface;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    :goto_1
    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p2

    iget-object v3, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :goto_3
    return-void

    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/esswitch/Switch;->a(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->f:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->requestLayout()V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->g:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->requestLayout()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->invalidate()V

    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->o:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->e:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/android/widget/esswitch/Switch;->B:[I

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/esswitch/Switch;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->r:I

    iget v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->s:I

    iget v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->t:I

    iget v3, p0, Lcom/estrongs/android/widget/esswitch/Switch;->u:I

    iget-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->b:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v3, v5

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->a:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->n:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v2, v6

    float-to-int v2, v2

    iget-object v6, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v6, v0, v6

    add-int/2addr v6, v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->q:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->w:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->w:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getDrawableState()[I

    move-result-object v3

    iget-object v7, p0, Lcom/estrongs/android/widget/esswitch/Switch;->w:Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v1, v3, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->v:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    invoke-direct {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->x:Landroid/text/Layout;

    :goto_0
    add-int v1, v6, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-int v2, v4, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->y:Landroid/text/Layout;

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->b()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->n:F

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    iget v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->o:I

    sub-int v3, v2, v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getPaddingTop()I

    move-result v1

    iget v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->p:I

    add-int/2addr v0, v1

    :goto_1
    iput v3, p0, Lcom/estrongs/android/widget/esswitch/Switch;->r:I

    iput v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->s:I

    iput v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->u:I

    iput v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->t:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->p:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iget v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->p:I

    add-int/2addr v0, v1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->p:I

    sub-int v1, v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->x:Landroid/text/Layout;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->f:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Lcom/estrongs/android/widget/esswitch/Switch;->c(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    iput-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->x:Landroid/text/Layout;

    :cond_0
    iget-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->y:Landroid/text/Layout;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->g:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Lcom/estrongs/android/widget/esswitch/Switch;->c(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    iput-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->y:Landroid/text/Layout;

    :cond_1
    iget-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->b:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->x:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/widget/esswitch/Switch;->y:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/estrongs/android/widget/esswitch/Switch;->d:I

    mul-int/lit8 v6, v4, 0x2

    iget v7, p0, Lcom/estrongs/android/widget/esswitch/Switch;->c:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/estrongs/android/widget/esswitch/Switch;->A:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lcom/estrongs/android/widget/esswitch/Switch;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Lcom/estrongs/android/widget/esswitch/Switch;->c:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    iput v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->q:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    sparse-switch v1, :sswitch_data_1

    :goto_1
    :sswitch_1
    iput v5, p0, Lcom/estrongs/android/widget/esswitch/Switch;->o:I

    iput v6, p0, Lcom/estrongs/android/widget/esswitch/Switch;->p:I

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getMeasuredHeight()I

    move-result v0

    if-ge v0, v6, :cond_2

    :cond_2
    return-void

    :sswitch_2
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    goto :goto_0

    :sswitch_3
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/widget/esswitch/Switch;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->h:I

    iput v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->j:F

    iput v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->k:F

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->h:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/estrongs/android/widget/esswitch/Switch;->j:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->i:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/estrongs/android/widget/esswitch/Switch;->k:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->i:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    :cond_2
    iput v5, p0, Lcom/estrongs/android/widget/esswitch/Switch;->h:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->j:F

    iput v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->k:F

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->j:F

    sub-float v2, v1, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/estrongs/android/widget/esswitch/Switch;->n:F

    add-float/2addr v2, v4

    invoke-direct {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->b()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/estrongs/android/widget/esswitch/Switch;->n:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    iput v2, p0, Lcom/estrongs/android/widget/esswitch/Switch;->n:F

    iput v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->j:F

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->invalidate()V

    goto :goto_1

    :pswitch_5
    iget v1, p0, Lcom/estrongs/android/widget/esswitch/Switch;->h:I

    if-ne v1, v5, :cond_3

    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/esswitch/Switch;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->h:I

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->b()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->n:F

    invoke-virtual {p0}, Lcom/estrongs/android/widget/esswitch/Switch;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->a:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/esswitch/Switch;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
