.class Lcom/estrongs/android/ui/dialog/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/ca;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ca;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/cb;->b:Lcom/estrongs/android/ui/dialog/ca;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/cb;->a:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cb;->b:Lcom/estrongs/android/ui/dialog/ca;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ca;->b:Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cb;->b:Lcom/estrongs/android/ui/dialog/ca;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ca;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cb;->b:Lcom/estrongs/android/ui/dialog/ca;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/ca;->a(Lcom/estrongs/android/ui/dialog/ca;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cb;->b:Lcom/estrongs/android/ui/dialog/ca;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ca;->b:Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->requestStop()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cb;->a:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cb;->a:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    return-void
.end method
