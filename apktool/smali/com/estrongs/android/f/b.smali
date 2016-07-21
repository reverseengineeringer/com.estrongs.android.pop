.class Lcom/estrongs/android/f/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/f/a;

.field private b:Z

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/f/a;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/f/b;->a:Lcom/estrongs/android/f/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/f/b;->b:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/f/b;->a:Lcom/estrongs/android/f/a;

    invoke-static {v0}, Lcom/estrongs/android/f/a;->a(Lcom/estrongs/android/f/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/nativetool/c;->a(Ljava/lang/String;)Lcom/estrongs/android/nativetool/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget-boolean v2, p0, Lcom/estrongs/android/f/b;->b:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/f/b;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/nativetool/a;->a(Landroid/graphics/Bitmap;)Lcom/estrongs/android/nativetool/b;

    move-result-object v2

    iget-object v4, p0, Lcom/estrongs/android/f/b;->c:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/estrongs/android/nativetool/b;->a:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/estrongs/android/f/b;->c:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/estrongs/android/f/b;->c:Landroid/graphics/Bitmap;

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/estrongs/android/f/b;->publishProgress([Ljava/lang/Object;)V

    iget v2, v2, Lcom/estrongs/android/nativetool/b;->b:I

    if-nez v2, :cond_1

    const/16 v2, 0x64

    :cond_1
    int-to-long v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    sub-long v0, v4, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/f/b;->b:Z

    if-nez v2, :cond_2

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/estrongs/android/nativetool/a;->a()V

    :cond_4
    :goto_2
    return-object v8

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/f/b;->b:Z

    return-void
.end method

.method protected varargs a([Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/f/b;->a:Lcom/estrongs/android/f/a;

    iget-object v1, p0, Lcom/estrongs/android/f/b;->a:Lcom/estrongs/android/f/a;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/f/a;->a(Lcom/estrongs/android/f/a;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/f/b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/f/b;->a([Landroid/graphics/Bitmap;)V

    return-void
.end method
