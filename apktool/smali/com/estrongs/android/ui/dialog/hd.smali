.class Lcom/estrongs/android/ui/dialog/hd;
.super Lcom/estrongs/android/ui/adapter/f;


# instance fields
.field final synthetic b:Lcom/estrongs/android/ui/dialog/hc;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hc;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hd;->b:Lcom/estrongs/android/ui/dialog/hc;

    invoke-direct {p0, p2}, Lcom/estrongs/android/ui/adapter/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hd;->b:Lcom/estrongs/android/ui/dialog/hc;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hc;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/dialog/hd;->a:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v2, p0, Lcom/estrongs/android/ui/dialog/hd;->a:I

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/estrongs/android/ui/dialog/hd;->a:I

    goto :goto_0
.end method
