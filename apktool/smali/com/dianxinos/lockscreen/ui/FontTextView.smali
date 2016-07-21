.class public Lcom/dianxinos/lockscreen/ui/FontTextView;
.super Landroid/widget/TextView;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/dianxinos/lockscreen/ui/FontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dianxinos/lockscreen/ui/FontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->a:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->b:I

    const/16 v0, 0x46

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->c:I

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->d:Z

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->e:Z

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/lockscreen/ui/FontTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/dianxinos/lockscreen/ae;->lsFontTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    move v1, v2

    move v0, v3

    :goto_1
    if-ge v1, v5, :cond_6

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    sget v7, Lcom/dianxinos/lockscreen/ae;->lsFontTextView_lsFontType:I

    if-ne v6, v7, :cond_2

    invoke-virtual {v4, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget v7, Lcom/dianxinos/lockscreen/ae;->lsFontTextView_lsAutoResize:I

    if-ne v6, v7, :cond_3

    iget-boolean v7, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->d:Z

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->d:Z

    goto :goto_2

    :cond_3
    sget v7, Lcom/dianxinos/lockscreen/ae;->lsFontTextView_lsFontSize1:I

    if-ne v6, v7, :cond_4

    iget v7, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->b:I

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->b:I

    goto :goto_2

    :cond_4
    sget v7, Lcom/dianxinos/lockscreen/ae;->lsFontTextView_lsFontSize2:I

    if-ne v6, v7, :cond_5

    iget v7, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->c:I

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->c:I

    goto :goto_2

    :cond_5
    sget v7, Lcom/dianxinos/lockscreen/ae;->lsFontTextView_lsIsUseFontEver:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v4, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->e:Z

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->setFontType(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    if-gtz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->b:I

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->f:Landroid/text/TextPaint;

    if-nez v2, :cond_1

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->f:Landroid/text/TextPaint;

    :cond_1
    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->f:Landroid/text/TextPaint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v2, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->f:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->c:I

    :cond_2
    const/4 v1, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->setTextSize(IF)V

    goto :goto_0
.end method


# virtual methods
.method public getFontType()I
    .locals 1

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->a:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/lockscreen/ui/FontTextView;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/dianxinos/lockscreen/ui/FontTextView;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/lockscreen/ui/FontTextView;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setFontType(I)V
    .locals 2

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->a:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/FontTextView;->e:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ui/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dianxinos/lockscreen/ui/l;->a(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dianxinos/lockscreen/ui/FontTextView;->setIncludeFontPadding(Z)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/FontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method
