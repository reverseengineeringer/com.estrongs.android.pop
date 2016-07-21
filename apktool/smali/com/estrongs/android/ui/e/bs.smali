.class final Lcom/estrongs/android/ui/e/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/estrongs/android/ui/dialog/ProgressDialog;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>([Lcom/estrongs/android/ui/dialog/ProgressDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bs;->a:[Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/bs;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bs;->a:[Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/bs;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bs;->b:Landroid/content/Context;

    const v3, 0x7f080404

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/e/bs;->b:Landroid/content/Context;

    const v4, 0x7f080425

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v1

    aput-object v1, v0, v5

    :cond_0
    return-void
.end method
