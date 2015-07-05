.class Lcom/estrongs/android/ui/e/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/gy;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ah;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ai;->a:Lcom/estrongs/android/ui/e/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ai;->a:Lcom/estrongs/android/ui/e/ah;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ah;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    const-string v1, "gallery://local/buckets/"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/aw;->g(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ai;->a:Lcom/estrongs/android/ui/e/ah;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ah;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/w;->j(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gz;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ai;->a:Lcom/estrongs/android/ui/e/ah;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ah;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    const-string v1, "pic://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/aw;->g(Ljava/lang/String;)V

    goto :goto_0
.end method
