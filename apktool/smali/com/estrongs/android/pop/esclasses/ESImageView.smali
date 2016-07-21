.class public Lcom/estrongs/android/pop/esclasses/ESImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Lcom/estrongs/android/pop/esclasses/h;

.field p:F

.field q:F

.field r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x3eaaaaab

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->p:F

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->q:F

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->r:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x3eaaaaab

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->p:F

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->q:F

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->r:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x3eaaaaab

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->p:F

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->q:F

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->r:F

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;F)V
    .locals 0

    iput p2, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->p:F

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;F)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->q:F

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;F)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    iput p2, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->r:F

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getLeftCornorImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getPaddingLeft()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->d:Lcom/estrongs/android/pop/esclasses/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->d:Lcom/estrongs/android/pop/esclasses/h;

    invoke-interface {v0}, Lcom/estrongs/android/pop/esclasses/h;->a()V

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v3, v0

    iget v4, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->p:F

    mul-float/2addr v3, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->p:F

    mul-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    sub-int v4, v0, v2

    add-int/2addr v2, v1

    invoke-virtual {v3, v1, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v3, v0

    iget v4, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->q:F

    mul-float/2addr v3, v4

    int-to-float v4, v2

    iget v5, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->q:F

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    sub-int v5, v2, v3

    sub-int v3, v0, v3

    invoke-virtual {v4, v5, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v0, v0

    iget v3, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->r:F

    mul-float/2addr v0, v3

    int-to-float v3, v2

    iget v4, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->r:F

    mul-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    sub-int v4, v2, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "recycled bitmap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/h;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0, v0}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v3, v0

    iget v4, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->p:F

    mul-float/2addr v3, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->p:F

    mul-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    sub-int v4, v0, v2

    add-int/2addr v2, v1

    invoke-virtual {v3, v1, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v2, v0

    iget v3, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->q:F

    mul-float/2addr v2, v3

    int-to-float v3, v1

    iget v4, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->q:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    sub-int v4, v1, v2

    sub-int v2, v0, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v0, v0

    iget v2, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->r:F

    mul-float/2addr v0, v2

    int-to-float v2, v1

    iget v3, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->r:F

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    sub-int v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLeftCornerImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const v0, 0x3eaaaaab

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;F)V

    return-void
.end method

.method public setOnDrawer(Lcom/estrongs/android/pop/esclasses/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->d:Lcom/estrongs/android/pop/esclasses/h;

    return-void
.end method

.method public setRightCornerImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const v0, 0x3eaaaaab

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->b(Landroid/graphics/drawable/Drawable;F)V

    return-void
.end method

.method public setTopCornerImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const v0, 0x3eaaaaab

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->c(Landroid/graphics/drawable/Drawable;F)V

    return-void
.end method

.method public setTranslucent(Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/bk;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->invalidate()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->a:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/ESImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
