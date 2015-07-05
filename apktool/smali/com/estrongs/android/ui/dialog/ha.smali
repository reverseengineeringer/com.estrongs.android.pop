.class Lcom/estrongs/android/ui/dialog/ha;
.super Lcom/estrongs/android/ui/a/f;


# instance fields
.field final synthetic b:Lcom/estrongs/android/ui/dialog/gz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gz;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ha;->b:Lcom/estrongs/android/ui/dialog/gz;

    invoke-direct {p0, p2}, Lcom/estrongs/android/ui/a/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ha;->b:Lcom/estrongs/android/ui/dialog/gz;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/gz;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/dialog/ha;->a:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v2, p0, Lcom/estrongs/android/ui/dialog/ha;->a:I

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/estrongs/android/ui/dialog/ha;->a:I

    goto :goto_0
.end method
