.class Lcom/estrongs/android/ui/view/cj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ScanProgressView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ScanProgressView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/ScanProgressView;->a(Lcom/estrongs/android/ui/view/ScanProgressView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/ScanProgressView;->b(Lcom/estrongs/android/ui/view/ScanProgressView;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    long-to-float v3, v0

    iget-object v4, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-static {v4}, Lcom/estrongs/android/ui/view/ScanProgressView;->b(Lcom/estrongs/android/ui/view/ScanProgressView;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/view/ScanProgressView;->a(Lcom/estrongs/android/ui/view/ScanProgressView;I)I

    iget-object v2, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    long-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ScanProgressView;->b(Lcom/estrongs/android/ui/view/ScanProgressView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, -0x3c4c0000    # -360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->b(Lcom/estrongs/android/ui/view/ScanProgressView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->invalidate()V

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/cj;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->a()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/ScanProgressView;->a(Lcom/estrongs/android/ui/view/ScanProgressView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/ScanProgressView;->b(Lcom/estrongs/android/ui/view/ScanProgressView;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    long-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/ScanProgressView;->c(Lcom/estrongs/android/ui/view/ScanProgressView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->c(Lcom/estrongs/android/ui/view/ScanProgressView;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/cj;->a:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->invalidate()V

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/cj;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
