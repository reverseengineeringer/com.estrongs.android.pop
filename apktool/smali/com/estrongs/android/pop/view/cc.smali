.class Lcom/estrongs/android/pop/view/cc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cc;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/view/cc;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cc;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cc;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/cc;->a:Z

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cc;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cc;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/cc;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method
