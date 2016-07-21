.class Lcom/estrongs/android/ui/theme/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/af;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/estrongs/android/ui/theme/al;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/al;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/am;->b:Lcom/estrongs/android/ui/theme/al;

    iput-object p2, p0, Lcom/estrongs/android/ui/theme/am;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadCompleted(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/am;->b:Lcom/estrongs/android/ui/theme/al;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/al;->b(Lcom/estrongs/android/ui/theme/al;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/am;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/am;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public downloadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/am;->b:Lcom/estrongs/android/ui/theme/al;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(Lcom/estrongs/android/ui/theme/al;Z)Z

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
