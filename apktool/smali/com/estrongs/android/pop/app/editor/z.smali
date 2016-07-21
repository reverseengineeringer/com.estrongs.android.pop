.class Lcom/estrongs/android/pop/app/editor/z;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/editor/z;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->u(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->u(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    new-instance v3, Lcom/estrongs/android/pop/app/editor/b;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->i(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->v(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v6}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/estrongs/android/pop/app/editor/b;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/b;)Lcom/estrongs/android/pop/app/editor/b;

    const/16 v0, 0x1000

    new-array v3, v0, [C

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->x(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/af;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->w(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/editor/af;->a(I)Lcom/estrongs/android/pop/app/editor/ag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v4

    iget-wide v6, v0, Lcom/estrongs/android/pop/app/editor/ag;->b:J

    invoke-virtual {v4, v6, v7}, Lcom/estrongs/android/pop/app/editor/b;->a(J)V

    iget v0, v0, Lcom/estrongs/android/pop/app/editor/ag;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->w(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    add-int/lit8 v0, v0, 0x1

    if-le v4, v0, :cond_1

    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/estrongs/android/pop/app/editor/b;->read([C)I

    move-result v4

    if-gtz v4, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I

    move v0, v1

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/estrongs/android/pop/app/editor/b;->read([C)I

    move-result v1

    if-gez v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->u(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/estrongs/android/pop/app/editor/ae;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    iget-object v7, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v7}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/ReaderTextView;Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/estrongs/android/pop/app/editor/ae;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;II)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->u(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/z;->a:Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    const v1, 0x7f080473

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method
