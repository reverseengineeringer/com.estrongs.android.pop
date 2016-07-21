.class public Lcom/estrongs/android/scanner/l;
.super Ljava/lang/Object;


# static fields
.field private static o:Lcom/estrongs/android/scanner/l;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/estrongs/android/scanner/ae;

.field private c:Lcom/estrongs/android/scanner/y;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/estrongs/android/scanner/d/m;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/g",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/g",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/scanner/l;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/l;-><init>()V

    sput-object v0, Lcom/estrongs/android/scanner/l;->o:Lcom/estrongs/android/scanner/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cataloger"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/scanner/x;->a()Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->h:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->i:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->g:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->m:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->n:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-static {}, Lcom/estrongs/android/scanner/ab;->a()Lcom/estrongs/android/scanner/ab;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/scanner/ab;->a(Z)Lcom/estrongs/android/scanner/y;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->c:Lcom/estrongs/android/scanner/y;

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->c:Lcom/estrongs/android/scanner/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/y;->a(Ljava/util/concurrent/ExecutorService;)V

    new-instance v0, Lcom/estrongs/android/scanner/ae;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/ae;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->b:Lcom/estrongs/android/scanner/ae;

    new-instance v0, Lcom/estrongs/android/scanner/d/m;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/d/m;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->j:Lcom/estrongs/android/scanner/d/m;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->k:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/estrongs/android/scanner/am;

    const-string v0, "CatalogerThread"

    invoke-direct {v8, v0}, Lcom/estrongs/android/scanner/am;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/estrongs/android/scanner/l;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/l;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/scanner/l;->e(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/estrongs/android/scanner/l;
    .locals 1

    sget-object v0, Lcom/estrongs/android/scanner/l;->o:Lcom/estrongs/android/scanner/l;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/l;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->h:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/scanner/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->c:Lcom/estrongs/android/scanner/y;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/scanner/y;->a(Lcom/estrongs/android/scanner/a/a;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Cataloger"

    const-string v1, "\u626b\u63cf\u6a21\u5757\u8fd8\u672a\u5b8c\u6210\uff0c\u5148\u628a\u8bbe\u7f6e\u9879\u7f13\u5b58\u8d77\u6765"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/scanner/a/f;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->c:Lcom/estrongs/android/scanner/y;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/scanner/y;->a(Lcom/estrongs/android/scanner/a/f;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Cataloger"

    const-string v1, "\u626b\u63cf\u6a21\u5757\u8fd8\u672a\u5b8c\u6210\uff0c\u5148\u628a\u626b\u63cf\u9879\u7f13\u5b58\u8d77\u6765"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/scanner/a/g;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->c:Lcom/estrongs/android/scanner/y;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/scanner/y;->a(Lcom/estrongs/android/scanner/a/g;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Cataloger"

    const-string v1, "\u626b\u63cf\u6a21\u5757\u8fd8\u672a\u5b8c\u6210\uff0c\u5148\u628a\u540c\u6b65\u9879\u7f13\u5b58\u8d77\u6765"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/l;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/scanner/l;->b(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/l;Lcom/estrongs/android/scanner/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/scanner/l;->a(Lcom/estrongs/android/scanner/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/l;Lcom/estrongs/android/scanner/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/scanner/l;->a(Lcom/estrongs/android/scanner/a/g;)V

    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/scanner/l;->m:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Cataloger"

    const-string v2, "\u91cd\u590d\u521b\u5efa\u547d\u4ee4"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/scanner/l;->m:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->m:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/scanner/l;->m:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/l;->n:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "Cataloger"

    const-string v2, "\u91cd\u590d\u5220\u9664\u547d\u4ee4"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/scanner/l;->n:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    invoke-virtual {v1, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->n:Lcom/estrongs/android/pop/app/imageviewer/gallery/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/scanner/l;)Lcom/estrongs/android/scanner/y;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->c:Lcom/estrongs/android/scanner/y;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/scanner/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/l;->k:Ljava/lang/String;

    return-object p1
.end method

.method private b(ILjava/lang/String;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/scanner/l;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Cataloger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/l;->j:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/scanner/d/m;->e(Ljava/lang/String;)Lcom/estrongs/android/scanner/d/q;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string v0, "Cataloger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6570\u636e\u5e93\u4e2d\u4e0d\u5b58\u5728\uff0c\u4f46\u662f\u7269\u7406\u6587\u4ef6\u5939\u5b58\u5728:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/estrongs/android/scanner/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/estrongs/android/scanner/l;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    if-ne p3, v3, :cond_3

    const-string v0, "Cataloger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521b\u5efa\u4e00\u4e2a\u76ee\u5f55:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/estrongs/android/scanner/l;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/l;->c:Lcom/estrongs/android/scanner/y;

    invoke-virtual {v1, p2, v0, p1}, Lcom/estrongs/android/scanner/y;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/android/scanner/a/c;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/estrongs/android/scanner/a/g;

    invoke-direct {v1, p1, p2}, Lcom/estrongs/android/scanner/a/g;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/scanner/a/g;->a(Lcom/estrongs/android/scanner/a/c;)V

    invoke-virtual {v1, p3}, Lcom/estrongs/android/scanner/a/g;->a(I)V

    invoke-direct {p0, v1}, Lcom/estrongs/android/scanner/l;->a(Lcom/estrongs/android/scanner/a/g;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "Cataloger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need not sync path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :goto_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/scanner/l;->j:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/scanner/d/m;->e(Ljava/lang/String;)Lcom/estrongs/android/scanner/d/q;

    move-result-object v1

    if-nez v1, :cond_1

    move-object p1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/scanner/l;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/scanner/l;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->g:Ljava/util/List;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 12

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->b:Lcom/estrongs/android/scanner/ae;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/ae;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->b:Lcom/estrongs/android/scanner/ae;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/ae;->a()V

    :cond_0
    const-string v0, "Cataloger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u626b\u63cf\u65b0\u5efa\u76ee\u5f55\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v6, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->b:Lcom/estrongs/android/scanner/ae;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/scanner/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/scanner/a/b;

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v2, v4, v3, v8, v9}, Lcom/estrongs/android/scanner/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v3, Lcom/estrongs/android/scanner/a/g;

    invoke-direct {v3, v1, v4}, Lcom/estrongs/android/scanner/a/g;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/estrongs/android/scanner/a/g;->a(Lcom/estrongs/android/scanner/a/c;)V

    invoke-virtual {v3, v1}, Lcom/estrongs/android/scanner/a/g;->a(I)V

    invoke-direct {p0, v3}, Lcom/estrongs/android/scanner/l;->a(Lcom/estrongs/android/scanner/a/g;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_6

    aget-object v7, v2, v0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".nomedia"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/estrongs/android/scanner/l;->b:Lcom/estrongs/android/scanner/ae;

    invoke-virtual {v9, v8}, Lcom/estrongs/android/scanner/ae;->c(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lcom/estrongs/android/scanner/l;->c:Lcom/estrongs/android/scanner/y;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8}, Lcom/estrongs/android/util/ap;->bR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/estrongs/android/scanner/y;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/estrongs/android/scanner/a/d;->b(J)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/estrongs/android/scanner/a/d;->d(J)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/estrongs/android/scanner/a/f;

    const-wide/16 v2, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/scanner/a/f;-><init>(IJLjava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/estrongs/android/scanner/l;->a(Lcom/estrongs/android/scanner/a/f;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private e(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/scanner/l;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/scanner/l;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/scanner/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->k:Ljava/lang/String;

    return-object v0
.end method

.method private final i()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/l;->l:Ljava/util/Set;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->a(I)Ljava/util/List;

    move-result-object v0

    const-string v1, "Cataloger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/scanner/l;->l:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/estrongs/android/scanner/p;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/estrongs/android/scanner/p;-><init>(Lcom/estrongs/android/scanner/l;ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Cataloger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLastAccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "/.estrongs/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/estrongs/android/scanner/v;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/scanner/v;-><init>(Lcom/estrongs/android/scanner/l;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/estrongs/android/scanner/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/estrongs/android/scanner/s;-><init>(Lcom/estrongs/android/scanner/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/estrongs/android/scanner/t;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/scanner/t;-><init>(Lcom/estrongs/android/scanner/l;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cataloger"

    const-string v1, "\u6587\u4ef6\u76d1\u63a7\u6682\u65f6\u5173\u95ed!\u8df3\u8fc7flush"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/estrongs/android/scanner/q;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/scanner/q;-><init>(Lcom/estrongs/android/scanner/l;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/scanner/b/b;->a()Lcom/estrongs/android/scanner/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/b/b;->d()V

    invoke-direct {p0}, Lcom/estrongs/android/scanner/l;->i()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Cataloger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDownloadPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/l;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/scanner/l;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/estrongs/android/scanner/o;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/scanner/o;-><init>(Lcom/estrongs/android/scanner/l;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->l:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/estrongs/android/scanner/w;

    invoke-direct {v1, p0, p1, p2}, Lcom/estrongs/android/scanner/w;-><init>(Lcom/estrongs/android/scanner/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/estrongs/android/scanner/u;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/scanner/u;-><init>(Lcom/estrongs/android/scanner/l;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "Cataloger"

    const-string v1, "\u6536\u5230\u626b\u63cf\u5f00\u59cb\u901a\u77e5"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/estrongs/android/scanner/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/estrongs/android/scanner/n;-><init>(Lcom/estrongs/android/scanner/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "Cataloger"

    const-string v1, "\u6536\u5230\u626b\u63cf\u7ed3\u675f\u901a\u77e5"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/estrongs/android/scanner/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/scanner/m;-><init>(Lcom/estrongs/android/scanner/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "Cataloger"

    const-string v1, "\u5173\u95ed\u6587\u4ef6\u76d1\u63a7!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/l;->a(Z)V

    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "Cataloger"

    const-string v1, "\u901a\u77e5\u5e94\u7528\u5173\u8054\u6587\u4ef6\u5939\u8bbe\u7f6e\u5f00\u59cb!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "Cataloger"

    const-string v1, "\u901a\u77e5\u5e94\u7528\u5173\u8054\u6587\u4ef6\u5939\u8bbe\u7f6e\u7ed3\u675f!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
