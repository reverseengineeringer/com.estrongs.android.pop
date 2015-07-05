.class Lcom/estrongs/android/pop/app/s;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/r;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/r;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/s;->a:Lcom/estrongs/android/pop/app/r;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/s;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->a(Lcom/estrongs/android/pop/app/r;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->x()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/s;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->b(Lcom/estrongs/android/pop/app/r;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/s;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->c(Lcom/estrongs/android/pop/app/r;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
