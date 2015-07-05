.class Lcom/estrongs/android/ui/e/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/an;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/an;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ao;->a:Lcom/estrongs/android/ui/e/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->i()Lcom/estrongs/android/ui/pcs/n;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->i()Lcom/estrongs/android/ui/pcs/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2, p3}, Lcom/estrongs/android/ui/pcs/n;->a(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/m;->Q:Lcom/estrongs/fs/m;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/m;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ao;->a:Lcom/estrongs/android/ui/e/an;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/an;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->e(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->i()Lcom/estrongs/android/ui/pcs/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/estrongs/android/ui/pcs/n;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
