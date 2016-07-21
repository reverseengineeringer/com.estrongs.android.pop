.class public Lcom/estrongs/android/pop/app/a/n;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/pop/app/a/o;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/a/o;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/app/a/n;->b(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/app/a/n;->b(Landroid/app/Activity;Z)V

    return-void
.end method

.method private static b(Landroid/app/Activity;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    const-string v1, "key_last_shown_unlock_dialog_by_charging_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "key_shown_unlock_dialog_by_charging"

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "key_shown_unlock_dialog_by_charging"

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;I)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801ef

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f0806fb

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f0806f4

    new-instance v2, Lcom/estrongs/android/pop/app/a/q;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/a/q;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f08008c

    new-instance v2, Lcom/estrongs/android/pop/app/a/p;

    invoke-direct {v2}, Lcom/estrongs/android/pop/app/a/p;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    invoke-static {p0, v5}, Lcom/estrongs/android/pop/app/a/n;->b(Landroid/app/Activity;Z)V

    return-void
.end method

.method private static b(Landroid/app/Activity;Z)V
    .locals 3

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "from"

    const-string v2, "charge"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "feature"

    const-string v2, "lock_realtimemonitor"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "action"

    if-eqz p1, :cond_0

    const-string v0, "show"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v2, "unlockd"

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "click"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
