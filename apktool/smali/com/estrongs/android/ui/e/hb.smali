.class Lcom/estrongs/android/ui/e/hb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/e/ha;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ha;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/hb;->b:Lcom/estrongs/android/ui/e/ha;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/hb;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hb;->b:Lcom/estrongs/android/ui/e/ha;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ha;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->u(Z)V

    invoke-static {}, Lcom/estrongs/android/util/am;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/hb;->b:Lcom/estrongs/android/ui/e/ha;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/ha;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/dialog/ae;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hb;->b:Lcom/estrongs/android/ui/e/ha;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ha;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v2, v0, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hb;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/dialog/ae;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;)V

    return-void
.end method
