.class Lcom/estrongs/android/pop/view/utils/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/af;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/utils/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/utils/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/o;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCompleted(Ljava/lang/Object;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/o;->a:Lcom/estrongs/android/pop/view/utils/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/n;Z)Z

    check-cast p1, Lcom/estrongs/android/util/aa;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/o;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/n;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/o;->a:Lcom/estrongs/android/pop/view/utils/n;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/n;Z)Z

    if-lez v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0x1e241    # 1.73E-40f

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/o;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-virtual {v1, v0, v4, v5}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/os/Message;J)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0x1e242

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/o;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-virtual {v1, v0, v4, v5}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/os/Message;J)V

    goto :goto_0
.end method

.method public downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/o;->a:Lcom/estrongs/android/pop/view/utils/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/n;Z)Z

    check-cast p1, Lcom/estrongs/android/util/aa;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/o;->a:Lcom/estrongs/android/pop/view/utils/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/n;Z)Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const v1, 0x1e242

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/o;->a:Lcom/estrongs/android/pop/view/utils/n;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/os/Message;J)V

    return-void
.end method

.method public downloadProgress(Ljava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method public downloadStarted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
