.class Lcom/estrongs/android/ui/e/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/ContentViewSwitcher;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/bf;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/w;->d(I)V

    return v2
.end method
