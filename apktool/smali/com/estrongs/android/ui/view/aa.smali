.class Lcom/estrongs/android/ui/view/aa;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/estrongs/android/ui/view/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/z;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/aa;->b:Lcom/estrongs/android/ui/view/z;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/aa;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->b:Lcom/estrongs/android/ui/view/z;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aa;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Landroid/os/Bundle;)Z

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aa;->b:Lcom/estrongs/android/ui/view/z;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->e:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->b:Lcom/estrongs/android/ui/view/z;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
