.class Lcom/estrongs/android/pop/view/dn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/n;

.field final synthetic b:Lcom/estrongs/android/pop/view/dk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/dk;Lcom/estrongs/android/ui/pcs/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dn;->b:Lcom/estrongs/android/pop/view/dk;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/dn;->a:Lcom/estrongs/android/ui/pcs/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/dn;->b:Lcom/estrongs/android/pop/view/dk;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dk;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m:Lcom/estrongs/android/pop/ad;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->a(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/pcs/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dn;->b:Lcom/estrongs/android/pop/view/dk;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/dk;->a(Lcom/estrongs/android/pop/view/dk;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dn;->a:Lcom/estrongs/android/ui/pcs/n;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/a;->a(Lcom/estrongs/android/ui/pcs/n;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/a;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/pcs/j;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dn;->b:Lcom/estrongs/android/pop/view/dk;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/dk;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/j;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dn;->a:Lcom/estrongs/android/ui/pcs/n;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/j;->a(Lcom/estrongs/android/ui/pcs/n;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/j;->a(Z)V

    goto :goto_0
.end method
