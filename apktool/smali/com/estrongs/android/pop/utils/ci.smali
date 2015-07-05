.class public Lcom/estrongs/android/pop/utils/ci;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/estrongs/android/pop/utils/cj;",
            ">;"
        }
    .end annotation
.end field

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/utils/ci;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/utils/ci;->b:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput v0, Lcom/estrongs/android/pop/utils/ci;->c:I

    const/4 v0, 0x1

    sput v0, Lcom/estrongs/android/pop/utils/ci;->d:I

    const/4 v0, 0x2

    sput v0, Lcom/estrongs/android/pop/utils/ci;->e:I

    const/4 v0, 0x3

    sput v0, Lcom/estrongs/android/pop/utils/ci;->f:I

    const/4 v0, 0x4

    sput v0, Lcom/estrongs/android/pop/utils/ci;->g:I

    const/4 v0, 0x5

    sput v0, Lcom/estrongs/android/pop/utils/ci;->h:I

    const/4 v0, 0x6

    sput v0, Lcom/estrongs/android/pop/utils/ci;->i:I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/estrongs/android/pop/utils/ci;->d:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/am;->ay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/estrongs/android/pop/utils/ci;->e:I

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    sget v0, Lcom/estrongs/android/pop/utils/ci;->e:I

    goto :goto_0

    :cond_3
    const-string v0, "/.estrongs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "/.estrongs/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "/.estrongs/recycle/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "/.estrongs/recycle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/estrongs/android/pop/utils/ci;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cj;

    iget-object v2, v0, Lcom/estrongs/android/pop/utils/cj;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v0, v0, Lcom/estrongs/android/pop/utils/cj;->b:I

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/estrongs/android/pop/utils/ci;->b(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/estrongs/android/pop/utils/ci;->g:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/estrongs/android/pop/utils/ci;->h:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/estrongs/android/pop/utils/ci;->i:I

    if-eq v0, v1, :cond_0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/utils/ci;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/utils/cj;

    invoke-direct {v1}, Lcom/estrongs/android/pop/utils/cj;-><init>()V

    iput-object v0, v1, Lcom/estrongs/android/pop/utils/cj;->a:Ljava/lang/String;

    iput p1, v1, Lcom/estrongs/android/pop/utils/cj;->b:I

    sget-object v0, Lcom/estrongs/android/pop/utils/ci;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    sget-object v0, Lcom/estrongs/android/pop/utils/ci;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/utils/ci;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method protected static b(Ljava/lang/String;)I
    .locals 9

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/estrongs/android/pop/utils/ci;->f:I

    :goto_0
    return v0

    :cond_0
    const-string v1, "/.estrongs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/.estrongs/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/util/am;->bU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v0, Lcom/estrongs/android/pop/utils/ci;->g:I

    goto :goto_0

    :cond_2
    const-string v1, "/.estrongs/recycle/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "/.estrongs/recycle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-static {v0}, Lcom/estrongs/android/util/am;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v0, Lcom/estrongs/android/pop/utils/ci;->h:I

    goto :goto_0

    :cond_4
    const-string v1, "/.estrongs/recycle/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bW(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v0, Lcom/estrongs/android/pop/utils/ci;->i:I

    goto :goto_0

    :cond_5
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/estrongs/android/pop/utils/ci;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/.es_recycle_test____"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    move v0, v2

    move-object v2, v8

    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v2, v0, 0x1

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    move v0, v2

    move-object v2, v8

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    sget-object v2, Lcom/estrongs/android/pop/utils/ci;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/estrongs/android/pop/utils/ci;->c:I

    goto/16 :goto_0

    :cond_8
    :try_start_1
    new-instance v0, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_3

    :cond_9
    sget v0, Lcom/estrongs/android/pop/utils/ci;->e:I

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method
