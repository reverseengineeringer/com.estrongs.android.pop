.class Lcom/estrongs/fs/b/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/ba;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/bh;->a:Lcom/estrongs/fs/b/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->A()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/fs/b/bi;

    invoke-direct {v1, p0}, Lcom/estrongs/fs/b/bi;-><init>(Lcom/estrongs/fs/b/bh;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/a/e;

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->A()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/estrongs/fs/b/bj;

    invoke-direct {v2, p0}, Lcom/estrongs/fs/b/bj;-><init>(Lcom/estrongs/fs/b/bh;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/a/e;-><init>(Landroid/content/Context;Lcom/estrongs/android/a/h;Z)V

    iget-object v1, p0, Lcom/estrongs/fs/b/bh;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v1}, Lcom/estrongs/fs/b/ba;->b(Lcom/estrongs/fs/b/ba;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/e;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/b/bh;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v2}, Lcom/estrongs/fs/b/ba;->b(Lcom/estrongs/fs/b/ba;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b01e2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/bh;->a:Lcom/estrongs/fs/b/ba;

    invoke-static {v2}, Lcom/estrongs/fs/b/ba;->e(Lcom/estrongs/fs/b/ba;)Lcom/estrongs/a/a/h;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/e;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/estrongs/android/a/e;->show()V

    goto :goto_0
.end method
