.class public Lcom/estrongs/android/pop/utils/cv;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/utils/cx;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/utils/cv;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/utils/cv;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/utils/cv;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/utils/cy;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/estrongs/android/pop/utils/cv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/utils/cy;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/utils/cy;
    .locals 6

    sget-object v2, Lcom/estrongs/android/pop/utils/cv;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/utils/cv;->a()V

    invoke-static {p3}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    sget-object v0, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "all"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    const-string v4, "Amazon"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/estrongs/android/pop/ad;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, p3, v3, v4}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/ArrayList;Ljava/lang/String;ZI)Lcom/estrongs/android/pop/utils/cy;

    move-result-object v1

    if-eqz v1, :cond_3

    monitor-exit v2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    sget-object v1, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    sget-object v1, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    invoke-static {p0, p2}, Lcom/estrongs/android/pop/utils/cv;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_4

    const-string p3, ""

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_5
    const/4 v1, 0x0

    invoke-static {v0, p3, v1, v4}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/ArrayList;Ljava/lang/String;ZI)Lcom/estrongs/android/pop/utils/cy;

    move-result-object v0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;ZI)Lcom/estrongs/android/pop/utils/cy;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/utils/cx;",
            ">;",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/estrongs/android/pop/utils/cy;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    :cond_0
    move p3, v3

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v2, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->e:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/pop/utils/cy;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/pop/utils/cy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    if-nez p2, :cond_2

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v2, Lcom/estrongs/android/pop/utils/cy;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->b:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_1
    invoke-direct {v2, v4, v0}, Lcom/estrongs/android/pop/utils/cy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->c:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, "image"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "music"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "video"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "apk"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "document"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/pop/utils/cv;->a()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/utils/cx;

    iget-object v3, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method static synthetic a(Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 1

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/utils/cv;->b(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    return-object p0
.end method

.method public static a()V
    .locals 8

    sget-object v1, Lcom/estrongs/android/pop/utils/cv;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aM()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/utils/cv;->b()V

    :cond_1
    monitor-exit v1

    :goto_0
    return-void

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v0, Lcom/estrongs/android/pop/a;->r:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/cv;->b(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v0

    sget-object v7, Lcom/estrongs/android/pop/utils/cv;->d:Ljava/lang/Object;

    monitor-enter v7

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "baidu_all"

    const-string v2, "baidu"

    const-string v3, "http://m.baidu.com/s?from=1648a&word=%1s"

    const-string v4, "http://m.baidu.com/s?from=1648a"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "baidu_image"

    const-string v2, "\u767e\u5ea6\u56fe\u7247"

    const-string v3, "http://m.baidu.com/s?from=1648a&vit=union&st=103041&word=%1s"

    const-string v4, "http://m.hao123.com/a/tupian/?tagid=shenghuo_shoujibizhi"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "baidu_video"

    const-string v2, "\u767e\u5ea6\u89c6\u9891"

    const-string v3, "http://m.baidu.com/video?from=1648a&word=%1s"

    const-string v4, "http://tv.baidu.com/m?from=es_file_explorer"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/util/bd;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "baidu_music"

    const-string v2, "\u767e\u5ea6\u97f3\u4e50"

    const-string v3, "http://music.baidu.com/#search/%1s/?fr=ch_es&pa=1&da=1&bb=1&lr=1&vd=1&td=1&ta=1&mgd=0&bi=1&sl=1&dsa=1&tn=1&noad=1"

    const-string v4, "http://music.baidu.com/?fr=ch_es&pa=1&da=1&bb=1&lr=1&vd=1&td=1&ta=1&mgd=0&bi=1&sl=1&dsa=1&tn=1&noad=1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "\u5929\u732b\u9b54\u76d2"

    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "baidu_apk"

    const-string v2, "\u767e\u5ea6\u5e94\u7528"

    const-string v3, "http://down.znds.com/plus/search.php?kwtype=0&q=%1s&searchtype=title"

    const-string v4, "http://down.znds.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v1, "baidu_document"

    const-string v2, "\u767e\u5ea6\u4e66\u57ce"

    const-string v3, "http://m.baidu.com/s?st=11n041&tn=xsd&pn=0&pu=sz@1320_1001&ssid=0&from=1648a&bd_page_type=1&word=%1s"

    const-string v4, "http://m.baidu.com/book/?ref=es_file_explorer&from=1648a"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "baidu_weather"

    const-string v2, "\u5929\u6c14"

    const-string v3, "http://m.baidu.com/s?from=1648a&word=\u5929\u6c14"

    const-string v4, "http://m.baidu.com/s?from=1648a&word=\u5929\u6c14"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "baidu_news"

    const-string v2, "\u767e\u5ea6\u65b0\u95fb"

    const-string v3, "http://m.baidu.com/news?from=1648a"

    const-string v4, "http://m.baidu.com/news?from=1648a"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_all"

    const-string v2, "Google"

    const-string v3, "http://www.google.com/search?safe=strict&q=%1s"

    const-string v4, "http://www.google.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_image"

    const-string v2, "Google Images"

    const-string v3, "http://www.google.com/search?safe=strict&tbm=isch&q=%1s"

    const-string v4, "http://images.google.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_video"

    const-string v2, "Youtube"

    const-string v3, "http://www.youtube.com/results?search_query=%1s"

    const-string v4, "http://m.youtube.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_music"

    const-string v2, "Google Music"

    const-string v3, "https://play.google.com/store/search?q=%1s"

    const-string v4, "https://play.google.com/music/"

    const-string v5, "market://search?q=%1s&c=music"

    const-string v6, "https://market.android.com/music/"

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_apk"

    const-string v2, "Google APKs"

    const-string v3, "https://play.google.com/store/search?q=%1s"

    const-string v4, "https://play.google.com/apps/"

    const-string v5, "market://search?q=%1s&c=apps"

    const-string v6, "https://market.android.com/apps/"

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_document"

    const-string v2, "Google Books"

    const-string v3, "https://www.google.com/search?&tbm=bks&q=%1s"

    const-string v4, "https://play.google.com/books/"

    const-string v5, "market://search?q=%1s&c=books"

    const-string v6, "https://market.android.com/books/"

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_weather"

    const-string v2, "Google Weather"

    const-string v3, "https://www.google.com/search?&q=weather"

    const-string v4, "https://www.google.com/search?&q=weather"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_news"

    const-string v2, "Google News"

    const-string v3, "https://news.google.com"

    const-string v4, "https://news.google.com"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yandex_all"

    const-string v2, "Yandex"

    const-string v3, "http://www.yandex.com/touchsearch?text=%1s"

    const-string v4, "http://www.yandex.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yandex_image"

    const-string v2, "Yandex Images"

    const-string v3, "http://www.yandex.com/images/search?text=%1s"

    const-string v4, "http://yandex.com/images/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yandex_video"

    const-string v2, "Yandex Video"

    const-string v3, "http://m.video.yandex.com/#!/search?text=%1s"

    const-string v4, "http://yandex.com/video/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yandex_music"

    const-string v2, "Google Music"

    const/4 v3, 0x0

    const-string v4, "https://play.google.com/music/"

    const/4 v5, 0x0

    const-string v6, "https://market.android.com/music/"

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yandex_apk"

    const-string v2, "Google APKs"

    const-string v3, "https://play.google.com/store/search?q=%1s"

    const-string v4, "https://play.google.com/apps/"

    const-string v5, "market://search?q=%1s&c=apps"

    const-string v6, "https://market.android.com/appks/"

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yandex_document"

    const-string v2, "Google Books"

    const/4 v3, 0x0

    const-string v4, "https://play.google.com/books/"

    const/4 v5, 0x0

    const-string v6, "https://market.android.com/books/"

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yandex_weather"

    const-string v2, "Google Weather"

    const-string v3, "https://www.google.com/search?&q=weather"

    const-string v4, "https://www.google.com/search?&q=weather"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yandex_news"

    const-string v2, "Google News"

    const-string v3, "https://news.google.com"

    const-string v4, "https://news.google.com"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "naver_all"

    const-string v2, "Naver"

    const-string v3, "http://search.naver.com/search.naver?query=%1s"

    const-string v4, "http://wwww.naver.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "naver_image"

    const-string v2, "Naver Images"

    const-string v3, "http://image.search.naver.com/search.naver?query=%1s"

    const-string v4, "http://photo.naver.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "naver_video"

    const-string v2, "Naver Video"

    const-string v3, "http://video.search.naver.com/search.naver?query=%1s"

    const-string v4, "http://movie.naver.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "naver_music"

    const-string v2, "Naver Music"

    const-string v3, "http://m.music.naver.com/search/search.nhn?query=%1s"

    const-string v4, "http://music.naver.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "naver_apk"

    const-string v2, "Naver APKs"

    const-string v3, "http://nstore.naver.com/search/search.nhn?t=all&fs=appstore&q=%1s"

    const-string v4, "http://appstore.naver.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "naver_document"

    const-string v2, "Naver Books"

    const-string v3, "http://book.naver.com/search/search.nhn?query=%1s"

    const-string v4, "http://book.naver.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "naver_weather"

    const-string v2, "Google Weather"

    const-string v3, "https://www.google.com/search?&q=weather"

    const-string v4, "https://www.google.com/search?&q=weather"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "naver_news"

    const-string v2, "Google News"

    const-string v3, "https://news.google.com"

    const-string v4, "https://news.google.com"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yahoo_all"

    const-string v2, "Yahoo"

    const-string v3, "https://search.yahoo.com/search?p=%1s"

    const-string v4, "http://www.yahoo.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yahoo_video"

    const-string v2, "Yahoo Video"

    const-string v3, "https://video.search.yahoo.com/search/video?p=%1s"

    const-string v4, "http://movies.yahoo.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yahoo_music"

    const-string v2, "Yahoo Music"

    const-string v3, "http://search.yahoo.com/search/?p=%1s&vs=music.yahoo.com"

    const-string v4, "http://music.yahoo.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yahoo_image"

    const-string v2, "Flickr"

    const-string v3, "https://images.search.yahoo.com/search/images?p=%1s"

    const-string v4, "http://m.flickr.com/#/explore/interesting/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yahoo_apk"

    const-string v2, "Yahoo Games"

    const/4 v3, 0x0

    const-string v4, "http://games.yahoo.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yahoo_document"

    const-string v2, "Yahoo Books"

    const/4 v3, 0x0

    const-string v4, "http://books.yahoo.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yahoo_weather"

    const-string v2, "Google Weather"

    const-string v3, "https://www.google.com/search?&q=weather"

    const-string v4, "https://www.google.com/search?&q=weather"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yahoo_news"

    const-string v2, "Google News"

    const-string v3, "https://news.google.com"

    const-string v4, "https://news.google.com"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amazon_all"

    const-string v2, "Amazon"

    const-string v3, "http://www.amazon.com/s/field-keywords=%1s"

    const-string v4, "http://www.amazon.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amazon_image"

    const-string v2, "Google Images"

    const-string v3, "http://www.google.com/search?safe=strict&tbm=isch&q=%1s"

    const-string v4, "http://images.google.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amazon_video"

    const-string v2, "Movies and TV"

    const/4 v3, 0x0

    const-string v4, "http://video.amazon.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amazon_music"

    const-string v2, "Amazon Music"

    const/4 v3, 0x0

    const-string v4, "http://music.amazon.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amazon_apk"

    const-string v2, "Appstore for Android"

    const/4 v3, 0x0

    const-string v4, "http://www.amazon.com/appstore"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amazon_document"

    const-string v2, "Books"

    const/4 v3, 0x0

    const-string v4, "http://books.amazon.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amazon_weather"

    const-string v2, "Google Weather"

    const-string v3, "https://www.google.com/search?&q=weather"

    const-string v4, "https://www.google.com/search?&q=weather"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amazon_news"

    const-string v2, "Google News"

    const-string v3, "https://news.google.com"

    const-string v4, "https://news.google.com"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sput-object v0, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_6
    :try_start_3
    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    const-string v2, "\u5b89\u667a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "baidu_apk"

    const-string v2, "\u767e\u5ea6\u5e94\u7528"

    const/4 v3, 0x0

    const-string v4, "http://m.anzhi.com"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    const-string v2, "\u667a\u6c47\u4e91"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "baidu_apk"

    const-string v2, "\u767e\u5ea6\u5e94\u7528"

    const/4 v3, 0x0

    const-string v4, "http://app.vmall.com"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    const-string v2, "Shafa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "baidu_apk"

    const-string v2, "\u767e\u5ea6\u5e94\u7528"

    const-string v3, "http://m.shafa.com/search?kw=%1s"

    const-string v4, "http://m.shafa.com/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v1, "baidu_apk"

    const-string v2, "\u767e\u5ea6\u5e94\u7528"

    const-string v3, "http://m.baidu.com/app?action=search&from=1000364e&pu=osname@esbrowser#word=%1s"

    const-string v4, "http://m.baidu.com/app?from=1000364e&pu=osname@esbrowser"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/utils/cx;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/pop/utils/cx;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/cx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/util/HashMap;Ljava/lang/String;Lorg/json/simple/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/utils/cx;",
            ">;>;",
            "Ljava/lang/String;",
            "Lorg/json/simple/JSONArray;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "api>="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    if-lt v2, v1, :cond_0

    invoke-static {p0, v0, p2}, Lcom/estrongs/android/pop/utils/cv;->b(Ljava/util/HashMap;Ljava/lang/String;Lorg/json/simple/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/FexApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/utils/cx;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/pop/utils/cv;->a()V

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/utils/cv;->c:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/utils/cx;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/utils/cv;->b()V

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    new-array v1, v0, [B

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v2, v5, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/util/zip/InflaterInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_1
    const/4 v4, 0x0

    const/16 v6, 0x400

    invoke-virtual {v2, v1, v4, v6}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/estrongs/android/pop/a;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_3
    if-eqz p1, :cond_4

    sput-object v3, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/utils/cv;->b()V

    :cond_4
    move-object v0, v3

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/InflaterInputStream;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v0, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v0, v1}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "hash_code"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    move-object v2, v0

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    const-string v7, "("

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v4, v1, v0}, Lcom/estrongs/android/pop/utils/cv;->a(Ljava/util/HashMap;Ljava/lang/String;Lorg/json/simple/JSONArray;)V

    move-object v0, v2

    goto :goto_3

    :cond_7
    invoke-static {v4, v1, v0}, Lcom/estrongs/android/pop/utils/cv;->b(Ljava/util/HashMap;Ljava/lang/String;Lorg/json/simple/JSONArray;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_3

    :cond_8
    :try_start_3
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_9

    sput-object v2, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_9
    move-object v0, v4

    goto/16 :goto_0
.end method

.method public static b()V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/estrongs/android/pop/utils/cv;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/estrongs/android/pop/utils/cv;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/ak;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/utils/cv;->b:Z

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/a;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/lang/String;

    :cond_2
    new-instance v1, Lcom/estrongs/android/util/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.estrongs.com/console/service/searchaddrs?v="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "0"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/y;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/y;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/utils/cw;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/utils/cw;-><init>(Lcom/estrongs/android/util/y;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/y;->a(Lcom/estrongs/android/util/ab;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/y;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/estrongs/android/pop/utils/cv;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private static b(Ljava/util/HashMap;Ljava/lang/String;Lorg/json/simple/JSONArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/utils/cx;",
            ">;>;",
            "Ljava/lang/String;",
            "Lorg/json/simple/JSONArray;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/simple/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {p2}, Lorg/json/simple/JSONArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v4, Lcom/estrongs/android/pop/utils/cx;

    invoke-direct {v4}, Lcom/estrongs/android/pop/utils/cx;-><init>()V

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/estrongs/android/pop/utils/cx;->a:Ljava/lang/String;

    const-string v1, "surl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/estrongs/android/pop/utils/cx;->b:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/estrongs/android/pop/utils/cx;->d:Ljava/lang/String;

    const-string v1, "m_url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/estrongs/android/pop/utils/cx;->e:Ljava/lang/String;

    const-string v1, "m_surl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/estrongs/android/pop/utils/cx;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    const-string v0, "google"

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "baidu"

    :cond_0
    :goto_0
    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/a;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "amazon"

    :cond_2
    return-object v0

    :cond_3
    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "google"

    goto :goto_0

    :cond_4
    const-string v2, "ru"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "yandex"

    goto :goto_0

    :cond_5
    const-string v2, "kr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    const-string v0, "naver"

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/utils/cv;->d:Ljava/lang/Object;

    return-object v0
.end method
