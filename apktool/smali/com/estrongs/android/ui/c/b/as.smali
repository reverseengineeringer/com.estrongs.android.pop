.class Lcom/estrongs/android/ui/c/b/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/as;->a:Lcom/estrongs/android/ui/c/b/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/am;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/c/b/at;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/c/b/at;-><init>(Lcom/estrongs/android/ui/c/b/as;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/as;->a:Lcom/estrongs/android/ui/c/b/u;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    const-string v0, "Home_PCS"

    const-string v1, "Home_PCS"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Home_PCS_UV"

    const-string v1, "Home_PCS_UV"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/as;->a:Lcom/estrongs/android/ui/c/b/u;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/as;->a:Lcom/estrongs/android/ui/c/b/u;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/as;->a:Lcom/estrongs/android/ui/c/b/u;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v2, Lcom/estrongs/android/ui/c/b/au;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/ui/c/b/au;-><init>(Lcom/estrongs/android/ui/c/b/as;Lcom/estrongs/android/ui/pcs/n;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/as;->a:Lcom/estrongs/android/ui/c/b/u;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/u;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v2, Lcom/estrongs/android/ui/c/b/av;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/ui/c/b/av;-><init>(Lcom/estrongs/android/ui/c/b/as;Lcom/estrongs/android/ui/pcs/n;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
