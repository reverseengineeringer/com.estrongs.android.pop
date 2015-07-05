.class final Lcom/estrongs/android/pop/app/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/ap;

.field final synthetic b:Z

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ap;ZLandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ax;->a:Lcom/estrongs/fs/b/ap;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/ax;->b:Z

    iput-object p3, p0, Lcom/estrongs/android/pop/app/ax;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ax;->a:Lcom/estrongs/fs/b/ap;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ap;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ax;->a:Lcom/estrongs/fs/b/ap;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ap;->requsestPause()V

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ax;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ax;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
