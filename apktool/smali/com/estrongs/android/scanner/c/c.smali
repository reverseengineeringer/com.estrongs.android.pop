.class public Lcom/estrongs/android/scanner/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/scanner/c/g;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/estrongs/android/scanner/d/m;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/scanner/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/scanner/c/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/scanner/d/m;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/d/m;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/c/c;->b:Lcom/estrongs/android/scanner/d/m;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/c/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/android/scanner/a/c;
    .locals 8

    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/c/c;->b:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/scanner/d/m;->e(Ljava/lang/String;)Lcom/estrongs/android/scanner/d/q;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/scanner/a/b;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/q;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/scanner/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    :goto_1
    return-object v1

    :cond_0
    sget-object v0, Lcom/estrongs/android/scanner/c/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybe is not directory:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/scanner/a/b;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/estrongs/android/scanner/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_4
    move-object v2, p1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/estrongs/android/scanner/a/a;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/a;->c()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    const-string v2, "pathtype"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/scanner/c/c;->b:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/scanner/d/m;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_0
    return-void

    :cond_1
    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    const-string v2, "pathtype"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/scanner/a/f;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/estrongs/android/scanner/a/g;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/c;->b:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->b()Lcom/estrongs/android/scanner/d/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/m;->a(Lcom/estrongs/android/scanner/d/w;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->a()Lcom/estrongs/android/scanner/a/c;

    move-result-object v0

    instance-of v1, v0, Lcom/estrongs/android/scanner/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/scanner/c/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->c()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    sget-object v0, Lcom/estrongs/android/scanner/c/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync dirty directory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/c;->b:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/m;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/g;->c()I

    move-result v2

    if-ne v2, v4, :cond_3

    check-cast v0, Lcom/estrongs/android/scanner/a/b;

    sget-object v2, Lcom/estrongs/android/scanner/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync new directory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/c/c;->b:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/scanner/d/m;->a(Lcom/estrongs/android/scanner/a/b;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/estrongs/android/scanner/c/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync old directory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/scanner/c/c;->b:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/scanner/d/m;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/scanner/a/c;->a(J)V

    iget-object v1, p0, Lcom/estrongs/android/scanner/c/c;->b:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/scanner/d/m;->b(Lcom/estrongs/android/scanner/a/c;)V

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/c/c;->b:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/m;->d()V

    :cond_0
    return-void
.end method
