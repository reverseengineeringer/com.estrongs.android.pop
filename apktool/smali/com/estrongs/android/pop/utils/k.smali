.class Lcom/estrongs/android/pop/utils/k;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field b:[I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/estrongs/android/pop/utils/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/c;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/k;->g:Lcom/estrongs/android/pop/utils/c;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/k;->c:Landroid/content/Context;

    iput-wide p3, p0, Lcom/estrongs/android/pop/utils/k;->d:J

    iput-object p5, p0, Lcom/estrongs/android/pop/utils/k;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/estrongs/android/pop/utils/k;->f:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/utils/k;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/k;->b:[I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/utils/k;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/estrongs/android/pop/utils/k;->d:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "charset_name"

    sget-object v2, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "password"

    const-string v2, "s!*123.estrongs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/k;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/io/archive/d;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/k;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/impl/local/m;->f(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/r;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v1, Lcom/estrongs/fs/impl/local/r;->b:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->c:I

    aput v1, v2, v3

    iput-object v2, p0, Lcom/estrongs/android/pop/utils/k;->b:[I

    :cond_1
    new-instance v1, Lcom/estrongs/android/pop/utils/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/l;-><init>(Lcom/estrongs/android/pop/utils/k;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/i;->a(Lcom/estrongs/io/a/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/utils/k;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    iput-boolean v5, p0, Lcom/estrongs/android/pop/utils/k;->a:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/utils/k;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/k;->c:Landroid/content/Context;

    const v1, 0x7f08012b

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/utils/k;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/utils/k;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/k;->c:Landroid/content/Context;

    const v1, 0x7f080134

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/content/Context;I)V

    return-void
.end method
