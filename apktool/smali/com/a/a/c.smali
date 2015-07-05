.class Lcom/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/b;

.field final synthetic b:Lcom/a/a/b;


# direct methods
.method constructor <init>(Lcom/a/a/b;Lcom/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/c;->b:Lcom/a/a/b;

    iput-object p2, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/a/a/c;->b:Lcom/a/a/b;

    invoke-static {v0}, Lcom/a/a/b;->a(Lcom/a/a/b;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/a/a/c;->b:Lcom/a/a/b;

    invoke-static {v0}, Lcom/a/a/b;->b(Lcom/a/a/b;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/f;->a(Ljava/io/InputStream;)Lcom/a/a/f;

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/e;->a(Lcom/a/a/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/a/a/f;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    invoke-static {v0}, Lcom/a/a/b;->c(Lcom/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c;->b:Lcom/a/a/b;

    invoke-static {v0}, Lcom/a/a/b;->d(Lcom/a/a/b;)Ljava/util/HashMap;

    move-result-object v0

    iget v2, v1, Lcom/a/a/f;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/g;

    if-eqz v0, :cond_0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v2, v1, Lcom/a/a/f;->a:I

    const v3, 0x59414b4f

    if-ne v2, v3, :cond_3

    iget v1, v1, Lcom/a/a/f;->b:I

    invoke-virtual {v0, v1}, Lcom/a/a/g;->a(I)V

    invoke-virtual {v0}, Lcom/a/a/g;->b()V

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/a/a/c;->b:Lcom/a/a/b;

    invoke-static {v0}, Lcom/a/a/b;->h(Lcom/a/a/b;)V

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/a/a/b;->c(Lcom/a/a/b;Z)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :cond_3
    :try_start_4
    iget v2, v1, Lcom/a/a/f;->a:I

    const v3, 0x45545257

    if-ne v2, v3, :cond_4

    iget-object v1, v1, Lcom/a/a/f;->g:[B

    invoke-virtual {v0, v1}, Lcom/a/a/g;->a([B)V

    invoke-virtual {v0}, Lcom/a/a/g;->a()V

    goto :goto_1

    :cond_4
    iget v2, v1, Lcom/a/a/f;->a:I

    const v3, 0x45534c43

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    invoke-static {v2}, Lcom/a/a/b;->d(Lcom/a/a/b;)Ljava/util/HashMap;

    move-result-object v2

    iget v1, v1, Lcom/a/a/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/a/a/g;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :sswitch_1
    :try_start_5
    iget v0, v1, Lcom/a/a/f;->b:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    invoke-static {v0}, Lcom/a/a/b;->e(Lcom/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    invoke-static {v1}, Lcom/a/a/b;->f(Lcom/a/a/b;)Lcom/a/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/d;->a()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/e;->a(I[B)[B

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    iget-object v1, v1, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    iget-object v0, v0, Lcom/a/a/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    invoke-static {v2}, Lcom/a/a/b;->f(Lcom/a/a/b;)Lcom/a/a/d;

    move-result-object v2

    iget-object v1, v1, Lcom/a/a/f;->g:[B

    invoke-virtual {v2, v1}, Lcom/a/a/d;->a([B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/e;->a(I[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/a/a/b;->a(Lcom/a/a/b;Z)Z

    goto :goto_2

    :sswitch_2
    iget-object v2, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    iget v1, v1, Lcom/a/a/f;->c:I

    invoke-static {v0, v1}, Lcom/a/a/b;->a(Lcom/a/a/b;I)I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxData = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/a/a/c;->b:Lcom/a/a/b;

    invoke-static {v3}, Lcom/a/a/b;->g(Lcom/a/a/b;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/a/a/b;->b(Lcom/a/a/b;Z)Z

    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x45534c43 -> :sswitch_0
        0x45545257 -> :sswitch_0
        0x48545541 -> :sswitch_1
        0x4e584e43 -> :sswitch_2
        0x59414b4f -> :sswitch_0
    .end sparse-switch
.end method
