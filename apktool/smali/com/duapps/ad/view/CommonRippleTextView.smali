.class public Lcom/duapps/ad/view/CommonRippleTextView;
.super Landroid/widget/TextView;


# instance fields
.field private final a:Lcom/duapps/ad/view/a;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/duapps/ad/view/CommonRippleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x9000000

    iput v0, p0, Lcom/duapps/ad/view/CommonRippleTextView;->b:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/duapps/ad/view/CommonRippleTextView;->c:I

    invoke-virtual {p0, v2}, Lcom/duapps/ad/view/CommonRippleTextView;->setWillNotDraw(Z)V

    new-instance v0, Lcom/duapps/ad/view/a;

    invoke-direct {v0, p0}, Lcom/duapps/ad/view/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/duapps/ad/view/CommonRippleTextView;->a:Lcom/duapps/ad/view/a;

    sget-object v0, Lcom/dianxinos/a/a/h;->TBRipple:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/dianxinos/a/a/h;->TBRipple_TBRippleCornerRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sget v2, Lcom/dianxinos/a/a/h;->TBRipple_TBRippleBackground:I

    iget v3, p0, Lcom/duapps/ad/view/CommonRippleTextView;->b:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    sget v3, Lcom/dianxinos/a/a/h;->TBRipple_TBRippleColor:I

    iget v4, p0, Lcom/duapps/ad/view/CommonRippleTextView;->c:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iget-object v4, p0, Lcom/duapps/ad/view/CommonRippleTextView;->a:Lcom/duapps/ad/view/a;

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Lcom/duapps/ad/view/a;->a(F)V

    iget-object v1, p0, Lcom/duapps/ad/view/CommonRippleTextView;->a:Lcom/duapps/ad/view/a;

    invoke-virtual {v1, v2}, Lcom/duapps/ad/view/a;->a(I)V

    iget-object v1, p0, Lcom/duapps/ad/view/CommonRippleTextView;->a:Lcom/duapps/ad/view/a;

    invoke-virtual {v1, v3}, Lcom/duapps/ad/view/a;->b(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/view/CommonRippleTextView;->a:Lcom/duapps/ad/view/a;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/view/a;->a(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/view/CommonRippleTextView;->a:Lcom/duapps/ad/view/a;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/view/a;->a(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/view/CommonRippleTextView;->a:Lcom/duapps/ad/view/a;

    invoke-virtual {v0}, Lcom/duapps/ad/view/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/view/CommonRippleTextView;->a:Lcom/duapps/ad/view/a;

    invoke-virtual {v0}, Lcom/duapps/ad/view/a;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    goto :goto_0
.end method
