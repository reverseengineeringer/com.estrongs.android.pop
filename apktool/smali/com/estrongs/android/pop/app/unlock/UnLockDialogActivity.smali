.class public Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;
.super Lcom/estrongs/android/pop/esclasses/ESResourceActivity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private d:Lcom/estrongs/android/pop/app/unlock/q;

.field private e:Lcom/estrongs/android/pop/app/unlock/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;-><init>()V

    return-void
.end method

.method private a()Lcom/duapps/ad/e;
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/unlock/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/unlock/j;-><init>(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)V

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Lcom/estrongs/android/pop/app/unlock/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->d:Lcom/estrongs/android/pop/app/unlock/q;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/an;->a(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lock_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lock_from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->finish()V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/k/h;->a(Ljava/lang/String;)Lcom/estrongs/android/k/d;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->finish()V

    :cond_2
    new-instance v1, Lcom/estrongs/android/pop/app/unlock/a;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/unlock/a;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/estrongs/android/pop/app/unlock/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->b()Lcom/estrongs/android/k/f;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "dialog_title"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/pop/app/unlock/a;->b:Ljava/lang/String;

    const-string v2, "dialog_icon"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/pop/app/unlock/a;->c:Ljava/lang/String;

    const-string v2, "dialog_msg"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/app/unlock/a;->d:Ljava/lang/String;

    :cond_3
    const v0, 0x7f0806f5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/app/unlock/a;->e:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/app/unlock/q;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/unlock/q;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/unlock/a;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->d:Lcom/estrongs/android/pop/app/unlock/q;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->d:Lcom/estrongs/android/pop/app/unlock/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/unlock/q;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->d:Lcom/estrongs/android/pop/app/unlock/q;

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/unlock/h;-><init>(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/q;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Lcom/estrongs/android/pop/app/unlock/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/unlock/i;-><init>(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->e:Lcom/estrongs/android/pop/app/unlock/y;

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->e:Lcom/estrongs/android/pop/app/unlock/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/s;->a(Lcom/estrongs/android/pop/app/unlock/y;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/s;->c(Ljava/lang/String;)Lcom/duapps/ad/c;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->d:Lcom/estrongs/android/pop/app/unlock/q;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/unlock/q;->a(Lcom/duapps/ad/c;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "from"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "feature"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action"

    const-string v2, "show"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    const-string v2, "unlockd"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/unlock/s;->b:Lcom/duapps/ad/f;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/app/unlock/s;->b:Lcom/duapps/ad/f;

    invoke-virtual {v1}, Lcom/duapps/ad/f;->l()Lcom/duapps/ad/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duapps/ad/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/s;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->d:Lcom/estrongs/android/pop/app/unlock/q;

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/app/unlock/s;->b:Lcom/duapps/ad/f;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/q;->a(Lcom/duapps/ad/f;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/duapps/ad/f;

    const/16 v1, 0x2dc6

    invoke-direct {v0, p0, v1}, Lcom/duapps/ad/f;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->a()Lcom/duapps/ad/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/e;)V

    invoke-virtual {v0}, Lcom/duapps/ad/f;->d()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onDestroy()V

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->e:Lcom/estrongs/android/pop/app/unlock/y;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/s;->b(Lcom/estrongs/android/pop/app/unlock/y;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESResourceActivity;->onResume()V

    return-void
.end method
