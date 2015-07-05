.class Lcom/estrongs/android/appinfo/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/appinfo/t;


# instance fields
.field final synthetic a:Lcom/estrongs/android/appinfo/u;

.field final synthetic b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;


# direct methods
.method constructor <init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Lcom/estrongs/android/appinfo/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/appinfo/g;->b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iput-object p2, p0, Lcom/estrongs/android/appinfo/g;->a:Lcom/estrongs/android/appinfo/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/appinfo/g;->b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-static {v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/appinfo/g;->b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-static {v0, p1}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Lcom/estrongs/android/appinfo/AppFolderInfoManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/appinfo/g;->b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->q:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/appinfo/g;->b:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    iget-object v0, v0, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a()V

    iget-object v0, p0, Lcom/estrongs/android/appinfo/g;->a:Lcom/estrongs/android/appinfo/u;

    invoke-interface {v0}, Lcom/estrongs/android/appinfo/u;->a()V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->h(J)V

    return-void
.end method
