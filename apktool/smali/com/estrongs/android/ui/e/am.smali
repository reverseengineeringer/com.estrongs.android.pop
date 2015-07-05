.class Lcom/estrongs/android/ui/e/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/al;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/al;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/am;->a:Lcom/estrongs/android/ui/e/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-static {p3}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/am;->a:Lcom/estrongs/android/ui/e/al;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/al;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/aw;->b(Z)V

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/m;->Q:Lcom/estrongs/fs/m;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/m;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/am;->a:Lcom/estrongs/android/ui/e/al;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/al;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->e(J)V

    :cond_1
    return-void
.end method
