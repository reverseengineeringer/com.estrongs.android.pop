.class Lcom/google/android/gms/tagmanager/ev;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/et;

.field private final b:Lcom/google/android/gms/tagmanager/h;


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ev;->b:Lcom/google/android/gms/tagmanager/h;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ev;->a:Lcom/google/android/gms/tagmanager/et;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/tagmanager/h;->a(Lcom/google/android/gms/tagmanager/g;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Don\'t know how to handle this message."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bg;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ev;->a(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
