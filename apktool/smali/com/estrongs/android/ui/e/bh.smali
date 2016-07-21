.class Lcom/estrongs/android/ui/e/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/m;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bh;->a:Lcom/estrongs/android/ui/e/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bh;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->c()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bh;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0806c6

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    return v2

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/gd;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/bh;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/gd;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/ui/e/bi;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/bi;-><init>(Lcom/estrongs/android/ui/e/bh;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/gd;->a(Lcom/estrongs/android/ui/dialog/gj;)Lcom/estrongs/android/ui/dialog/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gd;->a()V

    goto :goto_0
.end method
