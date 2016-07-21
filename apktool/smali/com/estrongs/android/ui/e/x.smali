.class Lcom/estrongs/android/ui/e/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/hb;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/x;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/x;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    const-string v1, "gallery://local/buckets/"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->j(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/x;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->i(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hc;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/x;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    const-string v1, "pic://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->j(Ljava/lang/String;)V

    goto :goto_0
.end method
