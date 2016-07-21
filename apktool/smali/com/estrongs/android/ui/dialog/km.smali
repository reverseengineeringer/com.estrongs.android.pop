.class Lcom/estrongs/android/ui/dialog/km;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/kh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/kh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/kh;->c(Lcom/estrongs/android/ui/dialog/kh;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/kn;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/kn;-><init>(Lcom/estrongs/android/ui/dialog/km;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kh;->d(Lcom/estrongs/android/ui/dialog/kh;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kh;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/kh;->a(Lcom/estrongs/a/a;)V

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

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/kh;->a(Lcom/estrongs/a/p;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-virtual {v1, p1}, Lcom/estrongs/android/ui/dialog/kh;->b(Lcom/estrongs/a/a;)V

    :goto_2
    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kh;->c(Lcom/estrongs/android/ui/dialog/kh;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ko;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/ko;-><init>(Lcom/estrongs/android/ui/dialog/km;Lcom/estrongs/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/kh;->d(Lcom/estrongs/android/ui/dialog/kh;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kh;->dismiss()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kh;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kh;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080234

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/kh;->a(Lcom/estrongs/android/ui/dialog/kh;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/km;->a:Lcom/estrongs/android/ui/dialog/kh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kh;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0803f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
