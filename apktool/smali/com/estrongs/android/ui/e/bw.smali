.class Lcom/estrongs/android/ui/e/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bw;->a:Lcom/estrongs/android/ui/e/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bw;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bw;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/view/g;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/bw;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/g;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/util/b;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bw;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    iget-object v3, v0, Lcom/estrongs/android/view/g;->b:Ljava/lang/String;

    new-instance v4, Lcom/estrongs/android/ui/e/bx;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/ui/e/bx;-><init>(Lcom/estrongs/android/ui/e/bw;Lcom/estrongs/android/view/g;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/android/util/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/util/d;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/b;->a()V

    goto :goto_0
.end method
