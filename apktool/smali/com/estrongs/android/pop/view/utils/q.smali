.class Lcom/estrongs/android/pop/view/utils/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/af;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/utils/n;

.field private b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/utils/n;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/q;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/view/utils/q;->b:I

    return-void
.end method


# virtual methods
.method public downloadCompleted(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/estrongs/android/util/aa;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget-object v0, p1, Lcom/estrongs/android/util/aa;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/v;

    const v2, 0x1e244

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/v;)V

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/q;->a:Lcom/estrongs/android/pop/view/utils/n;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/os/Message;J)V

    :cond_0
    return-void
.end method

.method public downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/estrongs/android/pop/view/utils/q;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/utils/q;->b:I

    check-cast p1, Lcom/estrongs/android/util/aa;

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->g()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/view/utils/q;->b:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->f()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/android/util/aa;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public downloadProgress(Ljava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method public downloadStarted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
