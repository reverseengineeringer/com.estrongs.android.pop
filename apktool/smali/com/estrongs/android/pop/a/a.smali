.class public Lcom/estrongs/android/pop/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/a/i;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/a/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/a/i;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "ESPermMgrService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/estrongs/android/pop/FexApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lcom/estrongs/android/pop/a/j;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/a/e;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/a/e;-><init>(Lcom/estrongs/android/pop/a/j;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "ESPermMgrService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/estrongs/android/pop/FexApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/a/c;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "ESPermMgrService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/estrongs/android/pop/FexApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/a/d;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "ESPermMgrService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/estrongs/android/pop/FexApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
