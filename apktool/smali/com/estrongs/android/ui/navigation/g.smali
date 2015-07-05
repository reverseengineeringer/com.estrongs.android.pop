.class Lcom/estrongs/android/ui/navigation/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/g;->a:Lcom/estrongs/android/ui/navigation/a;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/g;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/a;->b(Lcom/estrongs/android/ui/navigation/a;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const v1, 0x7f0b0351

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return v2

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/ga;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/g;->a:Lcom/estrongs/android/ui/navigation/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/navigation/a;->b(Lcom/estrongs/android/ui/navigation/a;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ga;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/ui/navigation/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/navigation/h;-><init>(Lcom/estrongs/android/ui/navigation/g;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ga;->a(Lcom/estrongs/android/ui/dialog/gg;)Lcom/estrongs/android/ui/dialog/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ga;->a()V

    goto :goto_0
.end method
