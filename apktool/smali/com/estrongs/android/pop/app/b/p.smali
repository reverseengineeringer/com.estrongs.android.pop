.class Lcom/estrongs/android/pop/app/b/p;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->b(Lcom/estrongs/android/pop/app/b/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/b/k;->a(Lcom/estrongs/android/pop/app/b/k;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->c(Lcom/estrongs/android/pop/app/b/k;)Lcom/estrongs/android/pop/app/b/x;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->c(Lcom/estrongs/android/pop/app/b/k;)Lcom/estrongs/android/pop/app/b/x;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/b/k;->d(Lcom/estrongs/android/pop/app/b/k;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/b/x;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->e(Lcom/estrongs/android/pop/app/b/k;)Lcom/estrongs/android/pop/app/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/b/k;->d(Lcom/estrongs/android/pop/app/b/k;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/a/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->f(Lcom/estrongs/android/pop/app/b/k;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->g(Lcom/estrongs/android/pop/app/b/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/b/k;->b(Lcom/estrongs/android/pop/app/b/k;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->e(Lcom/estrongs/android/pop/app/b/k;)Lcom/estrongs/android/pop/app/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/b/k;->d(Lcom/estrongs/android/pop/app/b/k;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/a/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/p;->a:Lcom/estrongs/android/pop/app/b/k;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/k;->f(Lcom/estrongs/android/pop/app/b/k;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
