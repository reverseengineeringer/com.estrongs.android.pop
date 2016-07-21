.class final Lcom/estrongs/android/pop/app/analysis/l;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/estrongs/android/pop/app/analysis/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/a/b/f;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/estrongs/android/pop/app/analysis/o;


# direct methods
.method constructor <init>(ZLcom/estrongs/android/a/b/f;Landroid/content/Context;Lcom/estrongs/android/pop/app/analysis/o;)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/analysis/l;->a:Z

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/l;->b:Lcom/estrongs/android/a/b/f;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/analysis/l;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/analysis/l;->d:Lcom/estrongs/android/pop/app/analysis/o;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/estrongs/android/pop/app/analysis/m;
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/l;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/l;->b:Lcom/estrongs/android/a/b/f;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/b;->a(Lcom/estrongs/android/a/b/f;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/l;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/l;->b:Lcom/estrongs/android/a/b/f;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/k;->a(Landroid/content/Context;Lcom/estrongs/android/a/b/f;)Lcom/estrongs/android/pop/app/analysis/m;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/estrongs/android/pop/app/analysis/m;)V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/l;->d:Lcom/estrongs/android/pop/app/analysis/o;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    const/4 v2, 0x1

    move-wide v4, v6

    :goto_0
    const-string v0, "appInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isUninstalled = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " , processCount = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " , cacheSize = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ", memorySize = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/l;->d:Lcom/estrongs/android/pop/app/analysis/o;

    invoke-interface/range {v1 .. v7}, Lcom/estrongs/android/pop/app/analysis/o;->a(ZIJJ)V

    :cond_0
    return-void

    :cond_1
    iget v0, p1, Lcom/estrongs/android/pop/app/analysis/m;->b:I

    iget-wide v4, p1, Lcom/estrongs/android/pop/app/analysis/m;->a:J

    iget-wide v6, p1, Lcom/estrongs/android/pop/app/analysis/m;->c:J

    move v2, v3

    move v3, v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/analysis/l;->a([Ljava/lang/Void;)Lcom/estrongs/android/pop/app/analysis/m;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/pop/app/analysis/m;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/analysis/l;->a(Lcom/estrongs/android/pop/app/analysis/m;)V

    return-void
.end method
