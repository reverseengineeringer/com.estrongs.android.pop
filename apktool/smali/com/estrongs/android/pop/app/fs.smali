.class Lcom/estrongs/android/pop/app/fs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fs;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/fs;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fs;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fs;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/fs;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fs;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int v3, v0, v2

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/pop/app/fs;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/fs;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v5, v2

    int-to-float v6, v0

    div-float/2addr v5, v6

    int-to-float v6, v3

    int-to-float v7, v4

    div-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    mul-int v1, v0, v3

    div-int/2addr v1, v4

    iget-object v3, p0, Lcom/estrongs/android/pop/app/fs;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/graphics/Bitmap;

    move-result-object v3

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/g;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/fs;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/fs;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    mul-int/2addr v4, v2

    :try_start_1
    div-int v3, v4, v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    if-ltz v0, :cond_3

    if-lt v0, v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/app/fs;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method
