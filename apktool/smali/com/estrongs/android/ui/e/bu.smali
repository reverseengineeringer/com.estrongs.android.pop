.class final Lcom/estrongs/android/ui/e/bu;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:[Lcom/estrongs/android/ui/dialog/ProgressDialog;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;[Lcom/estrongs/android/ui/dialog/ProgressDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bu;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/bu;->b:[Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/bu;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->e()Lcom/estrongs/android/pop/app/c/j;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bu;->a:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/e/bv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/bv;-><init>(Lcom/estrongs/android/ui/e/bu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
