.class Lcom/estrongs/android/ui/e/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/ha;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/t;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/t;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/v;->a:Lcom/estrongs/android/ui/e/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/e/v;->a:Lcom/estrongs/android/ui/e/t;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/v;->a:Lcom/estrongs/android/ui/e/t;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/e/v;->a:Lcom/estrongs/android/ui/e/t;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/ad;->A(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/view/utils/ac;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/util/a/a;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/v;->a:Lcom/estrongs/android/ui/e/t;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->h(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/ui/dialog/gx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/gx;->dismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/v;->a:Lcom/estrongs/android/ui/e/t;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/t;->a:Lcom/estrongs/android/ui/e/m;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/m;->a(Lcom/estrongs/android/ui/e/m;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/ad;->z(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/cr;->b(Lcom/estrongs/fs/util/a/a;)V

    goto :goto_1
.end method
