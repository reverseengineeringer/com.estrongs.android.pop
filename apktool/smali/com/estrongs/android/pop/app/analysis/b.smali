.class Lcom/estrongs/android/pop/app/analysis/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b;->a:Lcom/estrongs/android/pop/app/analysis/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b;->a:Lcom/estrongs/android/pop/app/analysis/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a;->a(Lcom/estrongs/android/pop/app/analysis/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b;->a:Lcom/estrongs/android/pop/app/analysis/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/analysis/a;->a(Lcom/estrongs/android/pop/app/analysis/a;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b;->a:Lcom/estrongs/android/pop/app/analysis/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a;->b(Lcom/estrongs/android/pop/app/analysis/a;)Lcom/estrongs/android/pop/app/analysis/view/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/b;->d()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
