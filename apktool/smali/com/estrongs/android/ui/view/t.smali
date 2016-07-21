.class Lcom/estrongs/android/ui/view/t;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/view/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/t;->b:Lcom/estrongs/android/ui/view/s;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/t;->b:Lcom/estrongs/android/ui/view/s;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/t;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/t;->b:Lcom/estrongs/android/ui/view/s;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->f:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/t;->b:Lcom/estrongs/android/ui/view/s;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
