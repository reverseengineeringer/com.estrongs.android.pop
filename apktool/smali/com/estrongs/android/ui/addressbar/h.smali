.class public Lcom/estrongs/android/ui/addressbar/h;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:Z

.field private d:J

.field private e:I

.field private f:I

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;FF)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-boolean v2, p0, Lcom/estrongs/android/ui/addressbar/h;->c:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/addressbar/h;->a:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x96

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/h;->e:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/h;->f:I

    iput p2, p0, Lcom/estrongs/android/ui/addressbar/h;->g:F

    iput p3, p0, Lcom/estrongs/android/ui/addressbar/h;->h:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/ui/addressbar/h;->d:J

    iput v2, p0, Lcom/estrongs/android/ui/addressbar/h;->b:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/h;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, p0, Lcom/estrongs/android/ui/addressbar/h;->g:F

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v5, p0, Lcom/estrongs/android/ui/addressbar/h;->h:F

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/h;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/h;->b:I

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/h;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/h;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/h;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/h;->c:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/h;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/addressbar/h;->d:J

    sub-long/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    long-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/estrongs/android/ui/addressbar/h;->e:I

    iget v2, p0, Lcom/estrongs/android/ui/addressbar/h;->f:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/h;->b:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/h;->invalidateSelf()V

    invoke-virtual {p0, p0}, Lcom/estrongs/android/ui/addressbar/h;->unscheduleSelf(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/estrongs/android/ui/addressbar/h;->e:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/estrongs/android/ui/addressbar/h;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/h;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/h;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public start()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/ui/addressbar/h;->d:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/h;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/h;->b:I

    invoke-virtual {p0, p0}, Lcom/estrongs/android/ui/addressbar/h;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/estrongs/android/ui/addressbar/h;->d:J

    iget v2, p0, Lcom/estrongs/android/ui/addressbar/h;->e:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/estrongs/android/ui/addressbar/h;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/h;->c:Z

    invoke-virtual {p0, p0}, Lcom/estrongs/android/ui/addressbar/h;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
