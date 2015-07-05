.class Lcom/estrongs/android/ui/e/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/by;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/by;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b0351

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return v2

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/ga;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/by;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ga;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/ui/e/bz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/bz;-><init>(Lcom/estrongs/android/ui/e/by;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ga;->a(Lcom/estrongs/android/ui/dialog/gg;)Lcom/estrongs/android/ui/dialog/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ga;->a()V

    goto :goto_0
.end method
