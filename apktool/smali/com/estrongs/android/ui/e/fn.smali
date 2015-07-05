.class Lcom/estrongs/android/ui/e/fn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/fn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->b(Lcom/estrongs/android/ui/e/cp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01be

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/fn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    return v3

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/fs/impl/b/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/fn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/utils/c;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/e/fn;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/utils/c;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/util/List;)V

    goto :goto_0
.end method
