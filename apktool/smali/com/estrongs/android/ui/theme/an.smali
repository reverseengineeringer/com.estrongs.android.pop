.class Lcom/estrongs/android/ui/theme/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/af;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/estrongs/android/ui/theme/al;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/al;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/an;->c:Lcom/estrongs/android/ui/theme/al;

    iput-object p2, p0, Lcom/estrongs/android/ui/theme/an;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/estrongs/android/ui/theme/an;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/an;->c:Lcom/estrongs/android/ui/theme/al;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(Lcom/estrongs/android/ui/theme/al;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/an;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/an;->c:Lcom/estrongs/android/ui/theme/al;

    iget-object v1, v1, Lcom/estrongs/android/ui/theme/al;->c:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/an;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/an;->c:Lcom/estrongs/android/ui/theme/al;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/an;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(Lcom/estrongs/android/ui/theme/al;Landroid/content/Context;)V

    return-void
.end method

.method public downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/an;->c:Lcom/estrongs/android/ui/theme/al;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(Lcom/estrongs/android/ui/theme/al;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/an;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/an;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public downloadProgress(Ljava/lang/Object;JJ)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/an;->c:Lcom/estrongs/android/ui/theme/al;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Lcom/estrongs/android/ui/theme/al;)Lcom/estrongs/android/widget/ProgressTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/an;->c:Lcom/estrongs/android/ui/theme/al;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Lcom/estrongs/android/ui/theme/al;)Lcom/estrongs/android/widget/ProgressTextView;

    move-result-object v0

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p4

    div-long/2addr v2, p2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ProgressTextView;->a(I)V

    :cond_0
    return-void
.end method

.method public downloadStarted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/an;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/an;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
