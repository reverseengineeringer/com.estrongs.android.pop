.class Lcom/estrongs/android/pop/view/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/addressbar/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cb;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cb;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, p3, -0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cb;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/cb;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/by;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/by;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cb;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->j()Lcom/estrongs/fs/h;

    goto :goto_0
.end method
