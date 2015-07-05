.class Lcom/estrongs/android/ui/dialog/kk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/ab;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/kf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/kf;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kk;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;JJ)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kk;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->c(Lcom/estrongs/android/ui/dialog/kf;)Lcom/estrongs/android/util/y;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/y;->d:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kk;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->c(Lcom/estrongs/android/ui/dialog/kf;)Lcom/estrongs/android/util/y;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/y;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kk;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->n(Lcom/estrongs/android/ui/dialog/kf;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kk;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/kf;->n(Lcom/estrongs/android/ui/dialog/kf;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kk;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->n(Lcom/estrongs/android/ui/dialog/kf;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kk;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/kf;->n(Lcom/estrongs/android/ui/dialog/kf;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kk;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kf;->n(Lcom/estrongs/android/ui/dialog/kf;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kk;->a:Lcom/estrongs/android/ui/dialog/kf;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/kf;->n(Lcom/estrongs/android/ui/dialog/kf;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
