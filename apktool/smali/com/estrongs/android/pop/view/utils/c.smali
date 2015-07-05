.class final Lcom/estrongs/android/pop/view/utils/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Ljava/io/File;

.field final synthetic g:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/d;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;ZLjava/io/File;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/estrongs/android/pop/view/utils/c;->a:Lcom/estrongs/fs/d;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/utils/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/estrongs/android/pop/view/utils/c;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/estrongs/android/pop/view/utils/c;->e:Z

    iput-object p7, p0, Lcom/estrongs/android/pop/view/utils/c;->f:Ljava/io/File;

    iput-object p8, p0, Lcom/estrongs/android/pop/view/utils/c;->g:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/c;->a:Lcom/estrongs/fs/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    const v2, 0x7f0b02f7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/pop/view/utils/c;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/util/am;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->o()Z

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/utils/c;->c:Landroid/app/Activity;

    new-instance v3, Lcom/estrongs/android/pop/view/utils/d;

    invoke-direct {v3, p0, v1, v0}, Lcom/estrongs/android/pop/view/utils/d;-><init>(Lcom/estrongs/android/pop/view/utils/c;ZLcom/estrongs/fs/h;)V

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
