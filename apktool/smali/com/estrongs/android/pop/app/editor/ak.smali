.class Lcom/estrongs/android/pop/app/editor/ak;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

.field private b:Ljava/lang/StringBuilder;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;IZ)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->b:Ljava/lang/StringBuilder;

    iput v3, p0, Lcom/estrongs/android/pop/app/editor/ak;->c:I

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/editor/ak;->d:Z

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->b:Ljava/lang/StringBuilder;

    invoke-static {p1, v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I

    iput p2, p0, Lcom/estrongs/android/pop/app/editor/ak;->c:I

    iput-boolean p3, p0, Lcom/estrongs/android/pop/app/editor/ak;->d:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 14

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->w(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->v(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/editor/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->F(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->F(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/b;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->c(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    new-instance v2, Lcom/estrongs/android/pop/app/editor/b;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->l(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;

    move-result-object v3

    iget-object v7, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v7}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->C(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v8}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v3, v7, v8}, Lcom/estrongs/android/pop/app/editor/b;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/b;)Lcom/estrongs/android/pop/app/editor/b;

    const/16 v0, 0x1000

    new-array v7, v0, [C

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->c:I

    int-to-long v8, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->J(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)J

    move-result-wide v10

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    const-wide/32 v10, 0xc000

    sub-long/2addr v8, v10

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->E(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/an;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/estrongs/android/pop/app/editor/an;->a(J)Lcom/estrongs/android/pop/app/editor/ao;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_3
    iget-object v10, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v10}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->F(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v10

    iget-wide v12, v0, Lcom/estrongs/android/pop/app/editor/ao;->b:J

    invoke-virtual {v10, v12, v13}, Lcom/estrongs/android/pop/app/editor/b;->a(J)V

    iget-object v10, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    iget v0, v0, Lcom/estrongs/android/pop/app/editor/ao;->a:I

    invoke-static {v10, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->F(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/estrongs/android/pop/app/editor/b;->read([C)I

    move-result v0

    if-gez v0, :cond_5

    :goto_2
    if-gez v0, :cond_3

    move-wide v2, v4

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p0, Lcom/estrongs/android/pop/app/editor/ak;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->D(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v0

    rsub-int/lit8 v8, v0, 0x3

    move v0, v1

    :goto_3
    if-ge v0, v8, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->F(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/estrongs/android/pop/app/editor/b;->read([C)I

    move-result v1

    if-gez v1, :cond_8

    :cond_4
    iget v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->c:I

    int-to-double v0, v0

    sub-double v0, v2, v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->J(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    double-to-int v5, v0

    new-instance v7, Lcom/estrongs/android/pop/app/editor/am;

    iget-object v8, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/ak;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/ReaderTextView;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/estrongs/android/pop/app/editor/am;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->s(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->s(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->H(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    :goto_4
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const v1, 0x7f0b010a

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->H(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :catch_2
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->F(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/b;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_c
    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->H(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_5
    :try_start_d
    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->F(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/editor/b;->b()J

    move-result-wide v2

    iget-object v10, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v10}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->I(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    array-length v10, v7

    if-ne v0, v10, :cond_6

    iget-object v10, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v10}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->E(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/an;

    move-result-object v10

    iget-object v11, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v11}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->D(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v11

    invoke-virtual {v10, v11, v2, v3}, Lcom/estrongs/android/pop/app/editor/an;->a(IJ)V

    :cond_6
    cmp-long v10, v2, v8

    if-ltz v10, :cond_7

    iget-object v10, p0, Lcom/estrongs/android/pop/app/editor/ak;->b:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/estrongs/android/pop/app/editor/ak;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const/16 v11, 0x3000

    if-le v10, v11, :cond_7

    iget-object v10, p0, Lcom/estrongs/android/pop/app/editor/ak;->b:Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    const/16 v12, 0x1000

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_7
    long-to-double v2, v2

    iget-object v10, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v10}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->J(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v2, v10

    mul-double/2addr v2, v4

    iget v10, p0, Lcom/estrongs/android/pop/app/editor/ak;->c:I

    int-to-double v10, v10

    cmpl-double v10, v2, v10

    if-ltz v10, :cond_2

    goto/16 :goto_2

    :cond_8
    iget-object v9, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v9}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/ak;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->I(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method
