.class Lcom/estrongs/android/ui/view/ba;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/IndicatorView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/IndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->b(Lcom/estrongs/android/ui/view/IndicatorView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->c(Lcom/estrongs/android/ui/view/IndicatorView;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/IndicatorView;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    long-to-float v1, v2

    mul-float/2addr v1, v8

    :try_start_1
    iget-object v2, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/IndicatorView;->c(Lcom/estrongs/android/ui/view/IndicatorView;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/IndicatorView;->d(Lcom/estrongs/android/ui/view/IndicatorView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/be;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/be;->a(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->invalidate()V

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/ba;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_2
    :try_start_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->b(Lcom/estrongs/android/ui/view/IndicatorView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->c(Lcom/estrongs/android/ui/view/IndicatorView;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/IndicatorView;->d(Lcom/estrongs/android/ui/view/IndicatorView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/be;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/be;->a(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->invalidate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    long-to-float v1, v2

    mul-float/2addr v1, v8

    :try_start_3
    iget-object v2, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/IndicatorView;->c(Lcom/estrongs/android/ui/view/IndicatorView;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/IndicatorView;->d(Lcom/estrongs/android/ui/view/IndicatorView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/be;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/be;->a(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->invalidate()V

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/ba;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :pswitch_3
    :try_start_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->b(Lcom/estrongs/android/ui/view/IndicatorView;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->c(Lcom/estrongs/android/ui/view/IndicatorView;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/IndicatorView;->b(I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/IndicatorView;->c(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    long-to-float v0, v4

    mul-float/2addr v0, v8

    :try_start_5
    iget-object v3, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/IndicatorView;->c(Lcom/estrongs/android/ui/view/IndicatorView;)J

    move-result-wide v4

    long-to-float v3, v4

    div-float v3, v0, v3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->d(Lcom/estrongs/android/ui/view/IndicatorView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/be;

    sub-float v1, v8, v3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/be;->a(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->d(Lcom/estrongs/android/ui/view/IndicatorView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/be;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/view/be;->a(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->a:Lcom/estrongs/android/ui/view/IndicatorView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/IndicatorView;->invalidate()V

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/ba;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
