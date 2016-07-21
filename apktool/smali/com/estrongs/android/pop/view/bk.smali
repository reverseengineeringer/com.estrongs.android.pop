.class Lcom/estrongs/android/pop/view/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/q;

.field final synthetic b:Lcom/estrongs/android/pop/view/bh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bh;Lcom/estrongs/android/ui/pcs/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bk;->b:Lcom/estrongs/android/pop/view/bh;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/bk;->a:Lcom/estrongs/android/ui/pcs/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bk;->b:Lcom/estrongs/android/pop/view/bh;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/pop/ad;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->a(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/pcs/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->b:Lcom/estrongs/android/pop/view/bh;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/bh;->a(Lcom/estrongs/android/pop/view/bh;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->a:Lcom/estrongs/android/ui/pcs/q;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/c;->a(Lcom/estrongs/android/ui/pcs/q;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/c;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/pcs/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->b:Lcom/estrongs/android/pop/view/bh;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/l;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bk;->a:Lcom/estrongs/android/ui/pcs/q;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/l;->a(Lcom/estrongs/android/ui/pcs/q;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/l;->a(Z)V

    goto :goto_0
.end method
