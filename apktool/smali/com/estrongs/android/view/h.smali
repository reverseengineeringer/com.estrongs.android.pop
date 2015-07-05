.class Lcom/estrongs/android/view/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/h;->a:Lcom/estrongs/android/view/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/h;->a:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/pop/app/compress/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/h;->a:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/pop/app/compress/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/aw;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/h;->a:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->c(Lcom/estrongs/android/view/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/h;->a:Lcom/estrongs/android/view/e;

    invoke-static {v1}, Lcom/estrongs/android/view/e;->b(Lcom/estrongs/android/view/e;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/h;->a:Lcom/estrongs/android/view/e;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/e;->a(Lcom/estrongs/android/view/e;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/h;->a:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/estrongs/android/view/h;->a:Lcom/estrongs/android/view/e;

    invoke-virtual {v0}, Lcom/estrongs/android/view/e;->u()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/h;->a:Lcom/estrongs/android/view/e;

    invoke-virtual {v0}, Lcom/estrongs/android/view/e;->g()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
