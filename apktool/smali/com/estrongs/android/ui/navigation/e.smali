.class Lcom/estrongs/android/ui/navigation/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/e;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, v2, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, v2, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v3

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/e;->a:Lcom/estrongs/android/ui/navigation/a;

    new-instance v1, Lcom/estrongs/android/ui/navigation/f;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/navigation/f;-><init>(Lcom/estrongs/android/ui/navigation/e;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/navigation/a;->a(Lcom/estrongs/android/ui/navigation/r;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/e;->a:Lcom/estrongs/android/ui/navigation/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/navigation/a;->a(Lcom/estrongs/android/ui/navigation/r;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/e;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/a;->d(Lcom/estrongs/android/ui/navigation/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
