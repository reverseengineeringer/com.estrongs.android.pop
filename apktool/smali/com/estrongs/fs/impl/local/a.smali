.class public Lcom/estrongs/fs/impl/local/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/fs/impl/local/d;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/fs/impl/local/d;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/local/a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/local/a;->a:Ljava/util/ArrayList;

    sput-object v1, Lcom/estrongs/fs/impl/local/a;->c:Ljava/lang/Class;

    sput-object v1, Lcom/estrongs/fs/impl/local/a;->d:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/estrongs/fs/impl/local/a;->e:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/estrongs/fs/impl/local/a;->f:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/estrongs/fs/impl/local/a;->g:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/estrongs/fs/impl/local/a;->h:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 13

    const-class v8, Lcom/estrongs/fs/impl/local/a;

    monitor-enter v8

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    sget-object v0, Lcom/estrongs/fs/impl/local/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/local/a;->a()V

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/local/a;->c:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "android.provider.DocumentsContract"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/local/a;->c:Ljava/lang/Class;

    sget-object v0, Lcom/estrongs/fs/impl/local/a;->c:Ljava/lang/Class;

    const-string v1, "getTreeDocumentId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/net/Uri;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/local/a;->d:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/estrongs/fs/impl/local/a;->c:Ljava/lang/Class;

    const-string v1, "buildDocumentUriUsingTree"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/net/Uri;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/local/a;->e:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/estrongs/fs/impl/local/a;->c:Ljava/lang/Class;

    const-string v1, "createDocument"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Landroid/net/Uri;

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/local/a;->f:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/estrongs/fs/impl/local/a;->c:Ljava/lang/Class;

    const-string v1, "deleteDocument"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Landroid/net/Uri;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/local/a;->g:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/estrongs/fs/impl/local/a;->c:Ljava/lang/Class;

    const-string v1, "renameDocument"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Landroid/net/Uri;

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/estrongs/fs/impl/local/a;->h:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/estrongs/fs/impl/local/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_23

    sget-object v0, Lcom/estrongs/fs/impl/local/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/d;

    iget-object v4, v0, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    move-object v7, v0

    :goto_2
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v0, Lcom/estrongs/fs/impl/local/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/estrongs/android/util/al;

    invoke-direct {v0, v9}, Lcom/estrongs/android/util/al;-><init>(Ljava/lang/Object;)V

    const-string v1, "getPersistedUriPermissions"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-ge v2, v1, :cond_6

    :try_start_3
    new-instance v4, Lcom/estrongs/fs/impl/local/d;

    invoke-direct {v4}, Lcom/estrongs/fs/impl/local/d;-><init>()V

    new-instance v1, Lcom/estrongs/android/util/al;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/estrongs/android/util/al;-><init>(Ljava/lang/Object;)V

    const-string v5, "getUri"

    invoke-virtual {v1, v5}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v4, Lcom/estrongs/fs/impl/local/d;->a:Landroid/net/Uri;

    sget-object v1, Lcom/estrongs/fs/impl/local/a;->d:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v4, Lcom/estrongs/fs/impl/local/d;->a:Landroid/net/Uri;

    aput-object v11, v6, v10

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-gtz v5, :cond_5

    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_4
    sput-object v0, Lcom/estrongs/fs/impl/local/a;->c:Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    :cond_3
    :goto_5
    monitor-exit v8

    return-object v0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/estrongs/fs/impl/local/d;->b:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    sget-object v1, Lcom/estrongs/fs/impl/local/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    const/4 v6, 0x0

    if-nez v7, :cond_d

    :try_start_6
    invoke-static {v3}, Lcom/estrongs/android/util/am;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cant get storage for path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stor_info is null, get storage:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", left"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    :goto_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v2, 0x0

    :cond_8
    if-eqz v7, :cond_22

    const/4 v0, 0x0

    move v5, v0

    :goto_8
    sget-object v0, Lcom/estrongs/fs/impl/local/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_22

    sget-object v0, Lcom/estrongs/fs/impl/local/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/local/d;

    iget-object v3, v0, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_f

    :cond_9
    const/4 v3, 0x1

    move v4, v3

    :goto_9
    if-nez v2, :cond_10

    const/4 v3, 0x1

    :goto_a
    iget-object v10, v0, Lcom/estrongs/fs/impl/local/d;->b:Ljava/lang/String;

    iget-object v11, v7, Lcom/estrongs/fs/impl/local/d;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    if-nez v4, :cond_b

    if-eqz v3, :cond_a

    if-nez v4, :cond_b

    :cond_a
    if-nez v3, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v3

    if-eqz v3, :cond_11

    :cond_b
    :goto_b
    const/4 v1, 0x1

    move-object v3, v0

    :goto_c
    if-nez v3, :cond_1f

    :try_start_7
    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    if-nez v4, :cond_12

    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_d
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, v7, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_e

    iget-object v0, v7, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    :goto_d
    move-object v2, v0

    goto/16 :goto_7

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    :cond_f
    const/4 v3, 0x0

    move v4, v3

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    goto :goto_a

    :cond_11
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_8

    :cond_12
    :try_start_9
    const-class v5, Lcom/estrongs/a/a/j;

    const/4 v0, 0x3

    new-array v10, v0, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-nez v7, :cond_14

    move-object v0, v6

    :goto_e
    aput-object v0, v10, v11

    const/4 v11, 0x1

    if-nez v7, :cond_15

    invoke-static {v6}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    aput-object v0, v10, v11

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v10, v0

    invoke-virtual {v4, v5, v10}, Lcom/estrongs/a/a;->getDecision(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/estrongs/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/j;

    iget-object v1, v0, Lcom/estrongs/a/a/j;->a:Landroid/net/Uri;

    if-eqz v1, :cond_13

    iget v1, v0, Lcom/estrongs/a/a/j;->g:I

    const/4 v4, 0x4

    if-eq v1, v4, :cond_16

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_14
    iget-object v0, v7, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    goto :goto_e

    :cond_15
    iget-object v0, v7, Lcom/estrongs/fs/impl/local/d;->d:Ljava/lang/String;

    goto :goto_f

    :cond_16
    new-instance v4, Lcom/estrongs/fs/impl/local/d;

    invoke-direct {v4}, Lcom/estrongs/fs/impl/local/d;-><init>()V

    iget-object v1, v0, Lcom/estrongs/a/a/j;->a:Landroid/net/Uri;

    iput-object v1, v4, Lcom/estrongs/fs/impl/local/d;->a:Landroid/net/Uri;

    sget-object v1, Lcom/estrongs/fs/impl/local/a;->d:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v4, Lcom/estrongs/fs/impl/local/d;->a:Landroid/net/Uri;

    aput-object v12, v10, v11

    invoke-virtual {v1, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gtz v5, :cond_17

    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_17
    const/4 v10, 0x0

    invoke-virtual {v1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/estrongs/fs/impl/local/d;->b:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    sget-object v1, Lcom/estrongs/fs/impl/local/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User selected path is:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v4, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", input left path is:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, v4, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    :cond_18
    const/4 v1, 0x1

    move v5, v1

    :goto_10
    if-nez v2, :cond_1d

    const/4 v1, 0x1

    :goto_11
    if-eqz v7, :cond_19

    iget-object v10, v4, Lcom/estrongs/fs/impl/local/d;->b:Ljava/lang/String;

    iget-object v11, v7, Lcom/estrongs/fs/impl/local/d;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e

    :cond_19
    if-nez v5, :cond_1b

    if-eqz v1, :cond_1a

    if-nez v5, :cond_1b

    :cond_1a
    if-nez v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v4, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1b
    :try_start_a
    new-instance v1, Lcom/estrongs/android/util/al;

    invoke-direct {v1, v9}, Lcom/estrongs/android/util/al;-><init>(Ljava/lang/Object;)V

    const-string v3, "takePersistableUriPermission"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/net/Uri;

    aput-object v11, v5, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v5, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v4, Lcom/estrongs/fs/impl/local/d;->a:Landroid/net/Uri;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1, v3, v5, v10}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v1, v4

    :goto_12
    const/4 v3, 0x0

    :try_start_b
    iput-boolean v3, v0, Lcom/estrongs/a/a/j;->e:Z

    const/4 v0, 0x0

    move-object v3, v1

    move v1, v0

    goto/16 :goto_c

    :cond_1c
    const/4 v1, 0x0

    move v5, v1

    goto :goto_10

    :cond_1d
    const/4 v1, 0x0

    goto :goto_11

    :catch_2
    move-exception v1

    move-object v1, v4

    goto :goto_12

    :cond_1e
    const-string v1, "User selected wrong path\n"

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v1, v3

    goto :goto_12

    :catch_3
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_1f
    if-nez v3, :cond_20

    const/4 v0, 0x0

    :goto_13
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build tree uri is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/v;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-nez v7, :cond_3

    new-instance v1, Lcom/estrongs/fs/impl/local/d;

    invoke-direct {v1}, Lcom/estrongs/fs/impl/local/d;-><init>()V

    iput-object v6, v1, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    iget-object v2, v3, Lcom/estrongs/fs/impl/local/d;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/estrongs/fs/impl/local/d;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/fs/impl/local/d;->d:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    iget-object v3, v1, Lcom/estrongs/fs/impl/local/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lcom/estrongs/android/pop/ad;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/estrongs/fs/impl/local/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :catch_4
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_20
    sget-object v1, Lcom/estrongs/fs/impl/local/a;->e:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v9, v3, Lcom/estrongs/fs/impl/local/d;->a:Landroid/net/Uri;

    aput-object v9, v5, v0

    const/4 v9, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcom/estrongs/fs/impl/local/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v2, :cond_21

    const-string v0, ""

    :goto_14
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_13

    :cond_21
    move-object v0, v2

    goto :goto_14

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_22
    move-object v0, v1

    goto/16 :goto_b

    :cond_23
    move-object v7, v1

    goto/16 :goto_2

    :cond_24
    move-object v3, v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v7}, Lcom/estrongs/fs/impl/local/a;->b(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/fs/impl/local/a;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v0

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, v0, Lcom/estrongs/fs/b/r;

    if-eqz v5, :cond_2

    check-cast v0, Lcom/estrongs/fs/b/r;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v6, v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static declared-synchronized a()V
    .locals 9

    const/4 v4, 0x0

    const-class v6, Lcom/estrongs/fs/impl/local/a;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/estrongs/fs/impl/local/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lcom/estrongs/android/util/al;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/al;-><init>(Ljava/lang/Object;)V

    const-string v0, "getVolumeList"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v7, v0

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v1, v0, v5

    new-instance v8, Lcom/estrongs/android/util/al;

    invoke-direct {v8, v1}, Lcom/estrongs/android/util/al;-><init>(Ljava/lang/Object;)V

    const-string v1, "mounted"

    const-string v2, "getState"

    invoke-virtual {v8, v2}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mounted_ro"

    const-string v2, "getState"

    invoke-virtual {v8, v2}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_5

    :cond_3
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
    const-string v1, "getPathFile"

    invoke-virtual {v8, v1}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-string v2, "getUuid"

    invoke-virtual {v8, v2}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "isPrimary"

    invoke-virtual {v8, v3}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "isEmulated"

    invoke-virtual {v8, v3}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v2, "primary"

    move-object v3, v2

    :goto_4
    const-string v2, "getUserLabel"

    invoke-virtual {v8, v2}, Lcom/estrongs/android/util/al;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v3, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/estrongs/android/pop/ad;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_3

    new-instance v8, Lcom/estrongs/fs/impl/local/d;

    invoke-direct {v8}, Lcom/estrongs/fs/impl/local/d;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    iput-object v3, v8, Lcom/estrongs/fs/impl/local/d;->b:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v1, v8, Lcom/estrongs/fs/impl/local/d;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    iput-object v2, v8, Lcom/estrongs/fs/impl/local/d;->d:Ljava/lang/String;

    sget-object v1, Lcom/estrongs/fs/impl/local/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_8
    move-object v3, v2

    goto :goto_4
.end method

.method public static a(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/impl/local/c;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/estrongs/android/pop/esclasses/c;

    new-instance v2, Lcom/estrongs/fs/impl/local/b;

    invoke-direct {v2, p1, p0, v1}, Lcom/estrongs/fs/impl/local/b;-><init>(Lcom/estrongs/fs/impl/local/c;Lcom/estrongs/android/pop/esclasses/ESActivity;[Lcom/estrongs/android/pop/esclasses/c;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Lcom/estrongs/android/pop/esclasses/c;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v1, 0x100101f

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/a;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/estrongs/fs/impl/local/a;->h:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    invoke-static {p1}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 9

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/a;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_2

    const-string v0, "vnd.android.document/directory"

    :goto_1
    const-string v4, "*/*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "application/octet-stream"

    :cond_1
    :try_start_0
    sget-object v4, Lcom/estrongs/fs/impl/local/a;->f:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v2, 0x2

    aput-object v0, v6, v2

    const/4 v0, 0x3

    aput-object v3, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/estrongs/android/util/bc;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/estrongs/fs/impl/local/a;->b(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Z)Z
    .locals 7

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/fs/impl/local/a;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v2, Lcom/estrongs/fs/impl/local/a;->g:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
