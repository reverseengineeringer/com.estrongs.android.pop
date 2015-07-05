.class Lcom/estrongs/android/widget/bd;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ScaledImageView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ScaledImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    invoke-static {v2}, Lcom/estrongs/android/widget/ScaledImageView;->a(Lcom/estrongs/android/widget/ScaledImageView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    invoke-static {v1}, Lcom/estrongs/android/widget/ScaledImageView;->b(Lcom/estrongs/android/widget/ScaledImageView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    invoke-static {v1}, Lcom/estrongs/android/widget/ScaledImageView;->b(Lcom/estrongs/android/widget/ScaledImageView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    iget-object v2, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    invoke-static {v2}, Lcom/estrongs/android/widget/ScaledImageView;->c(Lcom/estrongs/android/widget/ScaledImageView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    invoke-static {v3}, Lcom/estrongs/android/widget/ScaledImageView;->d(Lcom/estrongs/android/widget/ScaledImageView;)I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    invoke-static {v4}, Lcom/estrongs/android/widget/ScaledImageView;->c(Lcom/estrongs/android/widget/ScaledImageView;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/estrongs/android/widget/ScaledImageView;->a(Lcom/estrongs/android/widget/ScaledImageView;I)I

    iget-object v1, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    iget-object v2, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    invoke-static {v2}, Lcom/estrongs/android/widget/ScaledImageView;->e(Lcom/estrongs/android/widget/ScaledImageView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    invoke-static {v3}, Lcom/estrongs/android/widget/ScaledImageView;->f(Lcom/estrongs/android/widget/ScaledImageView;)I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    invoke-static {v4}, Lcom/estrongs/android/widget/ScaledImageView;->e(Lcom/estrongs/android/widget/ScaledImageView;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/estrongs/android/widget/ScaledImageView;->b(Lcom/estrongs/android/widget/ScaledImageView;I)I

    iget-object v0, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    invoke-static {v0}, Lcom/estrongs/android/widget/ScaledImageView;->g(Lcom/estrongs/android/widget/ScaledImageView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/bd;->a:Lcom/estrongs/android/widget/ScaledImageView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ScaledImageView;->a()V

    goto :goto_0
.end method
