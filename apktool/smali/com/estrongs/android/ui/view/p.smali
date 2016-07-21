.class Lcom/estrongs/android/ui/view/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/p;->a:Lcom/estrongs/android/ui/view/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const v2, 0x7f080647

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/p;->a:Lcom/estrongs/android/ui/view/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/b;->m(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sftp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/p;->a:Lcom/estrongs/android/ui/view/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/view/b;->e(Lcom/estrongs/android/ui/view/b;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SFTP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/p;->a:Lcom/estrongs/android/ui/view/o;

    iget-object v3, v3, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/b;->k(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/view/p;->a:Lcom/estrongs/android/ui/view/o;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/b;->n(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/p;->a:Lcom/estrongs/android/ui/view/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/view/b;->f(Lcom/estrongs/android/ui/view/b;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTP("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/p;->a:Lcom/estrongs/android/ui/view/o;

    iget-object v3, v3, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/b;->k(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
