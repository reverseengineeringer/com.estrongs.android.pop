.class public Lcom/dianxinos/dxservice/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_3
    sget-boolean v3, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v3, :cond_1

    const-string v3, "stat.DBUtils"

    const-string v4, "GetDbSize has FileNotFoundException!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    :goto_2
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_3
    :try_start_5
    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_2

    const-string v2, "stat.DBUtils"

    const-string v4, "GetDbSize has SecurityException!"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    goto :goto_2

    :catch_4
    move-exception v1

    :goto_4
    :try_start_7
    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_3

    const-string v2, "stat.DBUtils"

    const-string v4, "GetDbSize has NullPointerException!"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_3
    if-eqz v3, :cond_0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    :catch_5
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    goto :goto_2

    :catch_6
    move-exception v1

    :goto_5
    :try_start_9
    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_4

    const-string v2, "stat.DBUtils"

    const-string v4, "GetDbSize has IOException!"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_4
    if-eqz v3, :cond_0

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_0

    :catch_7
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    goto :goto_2

    :catch_8
    move-exception v1

    :goto_6
    :try_start_b
    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_5

    const-string v2, "stat.DBUtils"

    const-string v4, "GetDbSize has Exception!"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_5
    if-eqz v3, :cond_0

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v3, :cond_6

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :cond_6
    :goto_8
    throw v0

    :catch_a
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_6

    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catch_b
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_7

    :catch_c
    move-exception v1

    move-object v3, v2

    goto :goto_6

    :catch_d
    move-exception v1

    move-object v3, v2

    goto :goto_5

    :catch_e
    move-exception v1

    move-object v3, v2

    goto :goto_4

    :catch_f
    move-exception v1

    move-object v3, v2

    goto/16 :goto_3

    :catch_10
    move-exception v1

    goto/16 :goto_1
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.DBUtils"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
