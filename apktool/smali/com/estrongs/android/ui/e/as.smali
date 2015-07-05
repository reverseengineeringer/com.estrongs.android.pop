.class Lcom/estrongs/android/ui/e/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/as;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/as;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/as;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ac()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/as;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    const v1, 0x7f0b0501

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/dialog/dj;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/as;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/as;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    const v4, 0x7f0b04f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, v5}, Lcom/estrongs/android/ui/dialog/dj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/estrongs/android/ui/e/at;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/at;-><init>(Lcom/estrongs/android/ui/e/as;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/dj;->a(Lcom/estrongs/android/ui/dialog/dm;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/dj;->a()V

    return v6
.end method
