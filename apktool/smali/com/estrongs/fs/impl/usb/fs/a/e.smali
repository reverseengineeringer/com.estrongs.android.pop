.class public Lcom/estrongs/fs/impl/usb/fs/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/impl/usb/fs/c;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Lcom/estrongs/fs/impl/usb/fs/a/a;

.field private d:Lcom/estrongs/fs/impl/usb/driver/a;

.field private e:Lcom/estrongs/fs/impl/usb/fs/a/b;

.field private f:Lcom/estrongs/fs/impl/usb/fs/a/c;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/impl/usb/fs/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/b/a;",
            "Lcom/estrongs/fs/impl/usb/fs/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/estrongs/fs/impl/usb/fs/a/e;

.field private k:Lcom/estrongs/fs/impl/usb/fs/a/h;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/fs/impl/usb/fs/c;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/fs/impl/usb/fs/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/usb/fs/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;Lcom/estrongs/fs/impl/usb/fs/a/e;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->n:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->o:Z

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    iput-object p2, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->e:Lcom/estrongs/fs/impl/usb/fs/a/b;

    iput-object p3, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->f:Lcom/estrongs/fs/impl/usb/fs/a/c;

    iput-object p4, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->j:Lcom/estrongs/fs/impl/usb/fs/a/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->g:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->i:Ljava/util/Map;

    return-void
.end method

.method static a(Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;)Lcom/estrongs/fs/impl/usb/fs/a/e;
    .locals 7

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/estrongs/fs/impl/usb/fs/a/e;-><init>(Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;Lcom/estrongs/fs/impl/usb/fs/a/e;)V

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/a/a;

    invoke-virtual {p2}, Lcom/estrongs/fs/impl/usb/fs/a/c;->e()J

    move-result-wide v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/a/a;-><init>(JLcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;)V

    iput-object v1, v0, Lcom/estrongs/fs/impl/usb/fs/a/e;->c:Lcom/estrongs/fs/impl/usb/fs/a/a;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->o()V

    return-object v0
.end method

.method static a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;Lcom/estrongs/fs/impl/usb/fs/a/e;)Lcom/estrongs/fs/impl/usb/fs/a/e;
    .locals 1

    new-instance v0, Lcom/estrongs/fs/impl/usb/fs/a/e;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/estrongs/fs/impl/usb/fs/a/e;-><init>(Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;Lcom/estrongs/fs/impl/usb/fs/a/e;)V

    iput-object p0, v0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    return-object v0
.end method

.method private a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/f;)V
    .locals 5

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->i:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->n()Lcom/estrongs/fs/impl/usb/fs/b/a;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->e()[Lcom/estrongs/fs/impl/usb/fs/c;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit v1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->n:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->e:Lcom/estrongs/fs/impl/usb/fs/a/b;

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->f:Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-static {p1, v2, v3, v4, p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;Lcom/estrongs/fs/impl/usb/fs/a/e;)Lcom/estrongs/fs/impl/usb/fs/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    monitor-exit v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->n:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->e:Lcom/estrongs/fs/impl/usb/fs/a/b;

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->f:Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-static {p1, v2, v3, v4, p0}, Lcom/estrongs/fs/impl/usb/fs/a/g;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;Lcom/estrongs/fs/impl/usb/fs/a/e;)Lcom/estrongs/fs/impl/usb/fs/a/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private b(Lcom/estrongs/fs/impl/usb/fs/a/h;)Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/c;

    invoke-interface {v0}, Lcom/estrongs/fs/impl/usb/fs/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    if-ltz v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/c;

    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private c(Lcom/estrongs/fs/impl/usb/fs/a/h;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->b(Lcom/estrongs/fs/impl/usb/fs/a/h;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private o()V
    .locals 7

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->c:Lcom/estrongs/fs/impl/usb/fs/a/a;

    if-nez v0, :cond_1

    new-instance v1, Lcom/estrongs/fs/impl/usb/fs/a/a;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->d:Lcom/estrongs/fs/impl/usb/driver/a;

    iget-object v5, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->e:Lcom/estrongs/fs/impl/usb/fs/a/b;

    iget-object v6, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->f:Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-direct/range {v1 .. v6}, Lcom/estrongs/fs/impl/usb/fs/a/a;-><init>(JLcom/estrongs/fs/impl/usb/driver/a;Lcom/estrongs/fs/impl/usb/fs/a/b;Lcom/estrongs/fs/impl/usb/fs/a/c;)V

    iput-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->c:Lcom/estrongs/fs/impl/usb/fs/a/a;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->p()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->o:Z

    goto :goto_0
.end method

.method private p()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->c:Lcom/estrongs/fs/impl/usb/fs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/a;->b()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->c:Lcom/estrongs/fs/impl/usb/fs/a/a;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/estrongs/fs/impl/usb/fs/a/a;->a(JLjava/nio/ByteBuffer;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(Ljava/nio/ByteBuffer;)Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->q()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->b:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/estrongs/fs/impl/usb/fs/a/e;->a:Ljava/lang/String;

    const-string v4, "volume label in non root dir!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->l:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->f:Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/c;->l()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->l:Ljava/lang/String;

    :cond_5
    iget-boolean v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->b:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/a/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->j()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    invoke-static {v2, v1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->a(Lcom/estrongs/fs/impl/usb/fs/a/f;Ljava/util/List;)Lcom/estrongs/fs/impl/usb/fs/a/h;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/f;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Lcom/estrongs/fs/impl/usb/fs/a/h;
    .locals 5

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(JLjava/nio/ByteBuffer;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a directory!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Lcom/estrongs/fs/impl/usb/fs/a/h;)V
    .locals 4

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->i()Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/f;->n()Lcom/estrongs/fs/impl/usb/fs/b/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->c(Lcom/estrongs/fs/impl/usb/fs/a/h;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/c;)V
    .locals 4

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p2}, Lcom/estrongs/fs/impl/usb/fs/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "destination cannot be a file!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    instance-of v0, p2, Lcom/estrongs/fs/impl/usb/fs/a/e;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "cannot move between different filesystems!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->o()V

    check-cast p2, Lcom/estrongs/fs/impl/usb/fs/a/e;

    invoke-direct {p2}, Lcom/estrongs/fs/impl/usb/fs/a/e;->o()V

    iget-object v0, p2, Lcom/estrongs/fs/impl/usb/fs/a/e;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v2, "item already exists in destination!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;)V

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->i()Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/f;)V

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->m()V

    invoke-virtual {p2}, Lcom/estrongs/fs/impl/usb/fs/a/e;->m()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method a(Lcom/estrongs/fs/impl/usb/fs/a/h;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/estrongs/fs/impl/usb/fs/b/b;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/estrongs/fs/impl/usb/fs/b/a;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/fs/b/a;)V

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->i()Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/f;)V

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->m()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/fs/impl/usb/fs/c;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot rename root dir!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->j:Lcom/estrongs/fs/impl/usb/fs/a/e;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0, v2, p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic b(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->e(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/a/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->f:Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->l:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(JLjava/nio/ByteBuffer;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a directory!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/estrongs/fs/impl/usb/fs/c;)V
    .locals 4

    sget-object v2, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot move root dir!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/estrongs/fs/impl/usb/fs/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "destination cannot be a file!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p1, Lcom/estrongs/fs/impl/usb/fs/a/e;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot move between different filesystems!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->o()V

    check-cast p1, Lcom/estrongs/fs/impl/usb/fs/a/e;

    invoke-direct {p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->o()V

    iget-object v0, p1, Lcom/estrongs/fs/impl/usb/fs/a/e;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "item already exists in destination!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->j:Lcom/estrongs/fs/impl/usb/fs/a/e;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;)V

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->r()Lcom/estrongs/fs/impl/usb/fs/a/h;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct {p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b(J)V

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->m()V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->i()Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/f;)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->j:Lcom/estrongs/fs/impl/usb/fs/a/e;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->m()V

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->m()V

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->j:Lcom/estrongs/fs/impl/usb/fs/a/e;

    monitor-exit v2

    return-void

    :cond_5
    iget-object v0, p1, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->d()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0
.end method

.method public c()Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->j:Lcom/estrongs/fs/impl/usb/fs/a/e;

    return-object v0
.end method

.method public synthetic c(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/fs/impl/usb/fs/a/e;->d(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/a/g;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a directory!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/a/g;
    .locals 6

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->o()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->h:Ljava/util/Map;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Item already exists!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/estrongs/fs/impl/usb/fs/b/b;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/estrongs/fs/impl/usb/fs/b/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/fs/b/a;)Lcom/estrongs/fs/impl/usb/fs/a/h;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->e:Lcom/estrongs/fs/impl/usb/fs/a/b;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Long;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/fs/impl/usb/fs/a/b;->a([Ljava/lang/Long;I)[Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b(J)V

    iget-boolean v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->b:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/estrongs/fs/impl/usb/fs/a/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with short name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/h;->i()Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/f;)V

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->m()V

    invoke-direct {p0, v2}, Lcom/estrongs/fs/impl/usb/fs/a/e;->b(Lcom/estrongs/fs/impl/usb/fs/a/h;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/estrongs/fs/impl/usb/fs/a/g;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/a/g;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public d()[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    sget-object v3, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->o()V

    iget-object v1, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->q()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x2

    :cond_0
    new-array v4, v1, [Ljava/lang/String;

    move v2, v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".."

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v3

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/a/e;
    .locals 9

    const/4 v1, 0x0

    sget-object v4, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->o()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->h:Ljava/util/Map;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Item already exists!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/estrongs/fs/impl/usb/fs/b/b;->a(Ljava/lang/String;Ljava/util/Collection;)Lcom/estrongs/fs/impl/usb/fs/b/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/fs/b/a;)Lcom/estrongs/fs/impl/usb/fs/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/h;->h()V

    iget-object v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->e:Lcom/estrongs/fs/impl/usb/fs/a/b;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Long;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/estrongs/fs/impl/usb/fs/a/b;->a([Ljava/lang/Long;I)[Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b(J)V

    iget-boolean v3, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->b:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/estrongs/fs/impl/usb/fs/a/e;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adding entry: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " with short name: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/h;->i()Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/f;)V

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->m()V

    invoke-direct {p0, v2}, Lcom/estrongs/fs/impl/usb/fs/a/e;->b(Lcom/estrongs/fs/impl/usb/fs/a/h;)Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v3, v0, Lcom/estrongs/fs/impl/usb/fs/a/e;

    if-eqz v3, :cond_4

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/a/e;

    const/4 v1, 0x0

    new-instance v3, Lcom/estrongs/fs/impl/usb/fs/b/a;

    const-string v5, "."

    const-string v8, ""

    invoke-direct {v3, v5, v8}, Lcom/estrongs/fs/impl/usb/fs/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/estrongs/fs/impl/usb/fs/a/h;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/fs/b/a;)Lcom/estrongs/fs/impl/usb/fs/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->h()V

    invoke-virtual {v1, v6, v7}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b(J)V

    invoke-static {v2, v1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/h;)V

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->i()Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/f;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/estrongs/fs/impl/usb/fs/b/a;

    const-string v3, ".."

    const-string v5, ""

    invoke-direct {v2, v3, v5}, Lcom/estrongs/fs/impl/usb/fs/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/estrongs/fs/impl/usb/fs/a/h;->a(Ljava/lang/String;Lcom/estrongs/fs/impl/usb/fs/b/a;)Lcom/estrongs/fs/impl/usb/fs/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->h()V

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/h;->b(J)V

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->q()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-static {v2, v1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/h;)V

    :cond_2
    invoke-virtual {v1}, Lcom/estrongs/fs/impl/usb/fs/a/h;->i()Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;Lcom/estrongs/fs/impl/usb/fs/a/f;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->m()V

    monitor-exit v4

    :goto_1
    return-object v0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/usb/fs/a/h;->d()J

    move-result-wide v2

    goto :goto_0

    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_1
.end method

.method public e()[Lcom/estrongs/fs/impl/usb/fs/c;
    .locals 3

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->o()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->n:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/estrongs/fs/impl/usb/fs/c;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/fs/impl/usb/fs/c;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->m:Ljava/lang/String;

    return-void
.end method

.method public g()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a directory!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()V
    .locals 5

    sget-object v1, Lcom/estrongs/fs/impl/usb/fs/a/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Root dir cannot be deleted!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->o()V

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->e()[Lcom/estrongs/fs/impl/usb/fs/c;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-interface {v4}, Lcom/estrongs/fs/impl/usb/fs/c;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->j:Lcom/estrongs/fs/impl/usb/fs/a/e;

    iget-object v2, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/usb/fs/a/e;->a(Lcom/estrongs/fs/impl/usb/fs/a/h;)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->j:Lcom/estrongs/fs/impl/usb/fs/a/e;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->m()V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->c:Lcom/estrongs/fs/impl/usb/fs/a/a;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/a;->a(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->j()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->k()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->l()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->k:Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->m()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->o()V

    invoke-direct {p0}, Lcom/estrongs/fs/impl/usb/fs/a/e;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/h;->a()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    mul-int/lit8 v0, v2, 0x20

    int-to-long v2, v0

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->c:Lcom/estrongs/fs/impl/usb/fs/a/a;

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/impl/usb/fs/a/a;->a(J)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->c:Lcom/estrongs/fs/impl/usb/fs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/a;->b()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/fs/a/f;->a(Ljava/lang/String;)Lcom/estrongs/fs/impl/usb/fs/a/f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/impl/usb/fs/a/f;->b(Ljava/nio/ByteBuffer;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/usb/fs/a/h;

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/impl/usb/fs/a/h;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->f:Lcom/estrongs/fs/impl/usb/fs/a/c;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/usb/fs/a/c;->i()I

    move-result v0

    int-to-long v0, v0

    rem-long v0, v2, v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->c:Lcom/estrongs/fs/impl/usb/fs/a/a;

    invoke-virtual {v0, v6, v7, v4}, Lcom/estrongs/fs/impl/usb/fs/a/a;->b(JLjava/nio/ByteBuffer;)V

    return-void
.end method

.method n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/usb/fs/a/e;->l:Ljava/lang/String;

    return-object v0
.end method
