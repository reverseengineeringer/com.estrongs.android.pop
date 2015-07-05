.class Lcom/estrongs/android/pop/app/imageviewer/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Landroid/graphics/Rect;

.field final synthetic d:Lcom/estrongs/android/pop/app/imageviewer/CropImage;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/CropImage;Landroid/os/Bundle;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->d:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->c:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->a:Landroid/os/Bundle;

    const-string v3, "customSave1"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->b:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->d:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->c:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->d:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->f(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)I

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->d:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->g(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)I

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a(Lcom/estrongs/android/pop/app/imageviewer/CropImage;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-nez v1, :cond_2

    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "can\'t get crop image 2"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v0

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->d:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->d:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->e(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/j;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/j;-><init>(Lcom/estrongs/android/pop/app/imageviewer/i;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :try_start_6
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->a:Landroid/os/Bundle;

    const-string v4, "customSave2"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->d:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    if-eqz v3, :cond_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/i;->d:Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c(Lcom/estrongs/android/pop/app/imageviewer/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_5
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    move-object v2, v3

    goto/16 :goto_0
.end method
