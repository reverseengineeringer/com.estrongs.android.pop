.class Lcom/estrongs/android/pop/app/unlock/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/estrongs/android/pop/app/unlock/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/unlock/s;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/unlock/x;->d:Lcom/estrongs/android/pop/app/unlock/s;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/unlock/x;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/unlock/x;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/unlock/x;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "feature"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "leftNavi"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/x;->d:Lcom/estrongs/android/pop/app/unlock/s;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/unlock/s;->a(Lcom/estrongs/android/pop/app/unlock/s;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    const-string v2, "unlockswitch"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/x;->c:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "lock_id"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "lock_from"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/x;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    :try_start_1
    const-string v1, "positon"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action"

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/x;->d:Lcom/estrongs/android/pop/app/unlock/s;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/unlock/s;->a(Lcom/estrongs/android/pop/app/unlock/s;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    const-string v2, "unlockc"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
