.class final Lcom/estrongs/io/archive/sevenzip/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Ljava/io/File;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Landroid/os/ConditionVariable;

.field final synthetic i:[Z

.field final synthetic j:Ljava/lang/Runnable;

.field final synthetic k:Z

.field final synthetic l:[Z


# direct methods
.method constructor <init>([ZLandroid/app/Activity;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;[ZLjava/lang/Runnable;Z[Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/h;->a:[Z

    iput-object p2, p0, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/estrongs/io/archive/sevenzip/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/io/archive/sevenzip/h;->d:Ljava/io/File;

    iput-object p5, p0, Lcom/estrongs/io/archive/sevenzip/h;->e:Ljava/io/File;

    iput-object p6, p0, Lcom/estrongs/io/archive/sevenzip/h;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/estrongs/io/archive/sevenzip/h;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/estrongs/io/archive/sevenzip/h;->h:Landroid/os/ConditionVariable;

    iput-object p9, p0, Lcom/estrongs/io/archive/sevenzip/h;->i:[Z

    iput-object p10, p0, Lcom/estrongs/io/archive/sevenzip/h;->j:Ljava/lang/Runnable;

    iput-boolean p11, p0, Lcom/estrongs/io/archive/sevenzip/h;->k:Z

    iput-object p12, p0, Lcom/estrongs/io/archive/sevenzip/h;->l:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v1, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/h;->a:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    const v2, 0x7f080703

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/h;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    const v2, 0x7f08042c

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/h;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v3, p0, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v2, 0x7f080226

    new-instance v3, Lcom/estrongs/io/archive/sevenzip/j;

    invoke-direct {v3, p0, v1}, Lcom/estrongs/io/archive/sevenzip/j;-><init>(Lcom/estrongs/io/archive/sevenzip/h;[Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/io/archive/sevenzip/i;

    invoke-direct {v2, p0}, Lcom/estrongs/io/archive/sevenzip/i;-><init>(Lcom/estrongs/io/archive/sevenzip/h;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    const v2, 0x7f0802a2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/h;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    const v2, 0x7f08029d

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/h;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
