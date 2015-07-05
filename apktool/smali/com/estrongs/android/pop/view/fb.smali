.class Lcom/estrongs/android/pop/view/fb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fb;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fb;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "pcs://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/fb;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/fb;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b051a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/fb;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "pcs://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    goto :goto_0
.end method
