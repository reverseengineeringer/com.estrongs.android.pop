.class Lcom/estrongs/android/ui/e/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/ha;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/y;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/e/y;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/y;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v2

    rem-int/lit8 v3, p1, 0x4

    div-int/lit8 v4, p1, 0x4

    invoke-static {v0, v2, v3, v4}, Lcom/estrongs/android/pop/view/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/y;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/ad;->A(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/cr;->b(Lcom/estrongs/fs/util/a/a;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/y;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->i(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/hc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/hc;->dismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/y;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/ad;->z(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;

    move-result-object v0

    goto :goto_0
.end method
