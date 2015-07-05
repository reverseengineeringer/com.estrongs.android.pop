.class Lcom/estrongs/android/ui/dialog/kb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/jw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/jw;->c(Lcom/estrongs/android/ui/dialog/jw;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/kc;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/kc;-><init>(Lcom/estrongs/android/ui/dialog/kb;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jw;->d(Lcom/estrongs/android/ui/dialog/jw;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jw;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/jw;->a(Lcom/estrongs/a/a;)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jw;->a(Lcom/estrongs/a/p;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-virtual {v1, p1}, Lcom/estrongs/android/ui/dialog/jw;->b(Lcom/estrongs/a/a;)V

    :goto_2
    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jw;->c(Lcom/estrongs/android/ui/dialog/jw;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/kd;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/kd;-><init>(Lcom/estrongs/android/ui/dialog/kb;Lcom/estrongs/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jw;->d(Lcom/estrongs/android/ui/dialog/jw;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jw;->dismiss()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jw;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jw;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/jw;->a(Lcom/estrongs/android/ui/dialog/jw;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kb;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jw;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
