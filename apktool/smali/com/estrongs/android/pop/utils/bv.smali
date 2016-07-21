.class Lcom/estrongs/android/pop/utils/bv;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/fs/b/ao;

.field b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/bv;->a:Lcom/estrongs/fs/b/ao;

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/bv;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/utils/ap;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/bv;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/bv;ZZZZIZ)I
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/estrongs/android/pop/utils/bv;->a(ZZZZIZ)I

    move-result v0

    return v0
.end method

.method private a(ZZZZIZ)I
    .locals 2

    const v0, 0x7f080502

    const v1, 0x7f08007d

    if-nez p5, :cond_4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    if-eqz p6, :cond_1

    const v0, 0x7f08009e

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p3, :cond_2

    if-nez p4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-nez p4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, p5

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZZZLcom/estrongs/fs/h;ZZZZ)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;ZZZZ",
            "Lcom/estrongs/fs/h;",
            "ZZZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p3, :cond_8

    if-eqz p8, :cond_5

    if-eqz p5, :cond_0

    if-nez p11, :cond_3

    :cond_0
    if-nez p9, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f080250

    invoke-interface {p1, v1}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0805da

    invoke-interface {p1, v1}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p10, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080408

    invoke-interface {p1, v1}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const v0, 0x7f080405

    invoke-interface {p1, v0}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-nez p9, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0805fe

    invoke-interface {p1, v1}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0805da

    invoke-interface {p1, v1}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const v0, 0x7f080601

    invoke-interface {p1, v0}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    if-eqz p5, :cond_6

    if-nez p11, :cond_7

    :cond_6
    const v0, 0x7f080406

    invoke-interface {p1, v0}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const v0, 0x7f080423

    invoke-interface {p1, v0}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    invoke-interface {p7}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aV(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f080501

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    if-eqz p6, :cond_b

    if-eqz p8, :cond_a

    const v0, 0x7f080250

    invoke-interface {p1, v0}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const v0, 0x7f080406

    invoke-interface {p1, v0}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    if-eqz p8, :cond_d

    if-nez p9, :cond_c

    const v0, 0x7f080250

    invoke-interface {p1, v0}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const v0, 0x7f080405

    invoke-interface {p1, v0}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const v0, 0x7f080406

    invoke-interface {p1, v0}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/bv;Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZZZLcom/estrongs/fs/h;ZZZZ)Ljava/lang/String;
    .locals 1

    invoke-direct/range {p0 .. p11}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZZZLcom/estrongs/fs/h;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aE(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/pcs/u;->a(I)V

    invoke-virtual {v2, v4}, Lcom/estrongs/android/ui/pcs/u;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SP://:@pcs"

    check-cast v0, Lcom/estrongs/fs/impl/r/b;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/r/b;->setPath(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/r/b;->setAbsolutePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const v3, 0x7f0801a1

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/r/b;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/ad;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZLcom/estrongs/a/a/p;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;ZZ",
            "Lcom/estrongs/a/a/p;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZLcom/estrongs/a/a/p;ZZZ)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZLcom/estrongs/a/a/p;ZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;ZZ",
            "Lcom/estrongs/a/a/p;",
            "ZZZ)V"
        }
    .end annotation

    const v2, 0x7f080255

    const/4 v5, 0x0

    new-instance v3, Lcom/estrongs/fs/b/ab;

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/d/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-direct {v3, v0, p2, p3, p4}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;ZZ)V

    new-instance v0, Lcom/estrongs/android/pop/m;

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/d/a;->G()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/b/ab;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    if-nez p4, :cond_0

    move v0, v2

    :goto_0
    invoke-interface {p1, v0}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/b/ab;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Lcom/estrongs/fs/b/ab;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    invoke-virtual {v3, p7}, Lcom/estrongs/fs/b/ab;->a(Z)V

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/d/a;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f080256

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    new-instance v1, Lcom/estrongs/android/pop/utils/ch;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/utils/ch;-><init>(Lcom/estrongs/android/pop/utils/bv;Z)V

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/b/ab;->addPostListener(Lcom/estrongs/a/a/o;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/jh;

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/d/a;->G()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {p1, v2}, Lcom/estrongs/android/pop/app/d/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v4, p8

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZZ)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    invoke-virtual {v3}, Lcom/estrongs/fs/b/ab;->execute()V

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_2
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/bv;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/utils/bv;->a(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/bv;Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZLcom/estrongs/a/a/p;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZLcom/estrongs/a/a/p;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/bv;Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZLcom/estrongs/a/a/p;ZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZLcom/estrongs/a/a/p;ZZZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/android/view/cr;Lcom/estrongs/a/a/p;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/android/view/cr;",
            "Lcom/estrongs/a/a/p;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/android/view/cr;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/ck;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/android/view/cr;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/ck;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/android/view/cr;",
            "Lcom/estrongs/a/a/p;",
            "Lcom/estrongs/android/pop/utils/ck;",
            ")Z"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/android/view/cr;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/ck;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/android/view/cr;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/ck;ILjava/lang/String;Z)Z
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/app/d/a;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/android/view/cr;",
            "Lcom/estrongs/a/a/p;",
            "Lcom/estrongs/android/pop/utils/ck;",
            "I",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/estrongs/android/pop/app/d/a;->G()Landroid/app/Activity;

    move-result-object v8

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v2, v8}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08007d

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v2

    const v3, 0x7f080407

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v2

    const v3, 0x7f080226

    new-instance v4, Lcom/estrongs/android/pop/utils/bw;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/pop/utils/bw;-><init>(Lcom/estrongs/android/pop/utils/bv;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/ui/dialog/cv;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v7

    :goto_1
    if-nez p4, :cond_2

    new-instance v2, Lcom/estrongs/android/pop/utils/bx;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/estrongs/android/pop/utils/bx;-><init>(Lcom/estrongs/android/pop/utils/bv;Lcom/estrongs/android/view/cr;Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Ljava/lang/String;Landroid/app/Activity;)V

    move-object/from16 p4, v2

    :cond_2
    invoke-static {v7}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v8}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->aE()Z

    move-result v13

    const/4 v15, 0x0

    const/4 v2, 0x0

    if-eqz v12, :cond_6

    const/4 v14, 0x0

    move v5, v2

    :goto_2
    new-instance v27, Lcom/estrongs/android/ui/dialog/ci;

    move-object/from16 v0, v27

    invoke-direct {v0, v8}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    const v2, 0x7f030081

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ci;->setContentView(I)V

    const v2, 0x7f0e0108

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ci;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    const v2, 0x7f0e02a4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ci;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e02a5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/ci;->findViewById(I)Landroid/view/View;

    move-result-object v42

    const v3, 0x7f0e02a6

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/ci;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e02a7

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/ci;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/AppCompatCheckBox;

    if-eqz v12, :cond_a

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    const/4 v15, 0x1

    move/from16 v41, v6

    :goto_3
    const/4 v6, 0x1

    const/16 v25, 0x0

    if-eqz p7, :cond_b

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/estrongs/android/pop/utils/bv;->b:Ljava/lang/String;

    const/4 v6, 0x0

    :cond_3
    :goto_4
    new-instance v20, Lcom/estrongs/android/pop/utils/bz;

    move-object/from16 v21, p0

    move/from16 v22, v13

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v26, p6

    move-object/from16 v28, p7

    move-object/from16 v29, p2

    move-object/from16 v30, p1

    move/from16 v31, v12

    move/from16 v32, v19

    invoke-direct/range {v20 .. v33}, Lcom/estrongs/android/pop/utils/bz;-><init>(Lcom/estrongs/android/pop/utils/bv;ZZZZILcom/estrongs/android/ui/dialog/ci;Ljava/lang/String;Ljava/util/List;Lcom/estrongs/android/pop/app/d/a;ZZLandroid/widget/TextView;)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v40

    move-object/from16 v34, p0

    move/from16 v35, v13

    move/from16 v36, v14

    move/from16 v37, v15

    move/from16 v38, v25

    move/from16 v39, p6

    invoke-direct/range {v34 .. v40}, Lcom/estrongs/android/pop/utils/bv;->a(ZZZZIZ)I

    move-result v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/pop/utils/bv;->b:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v13, :cond_4

    if-nez v12, :cond_14

    if-nez v14, :cond_13

    const v7, 0x7f080251

    sget v9, Lcom/estrongs/android/pop/utils/cr;->d:I

    if-ne v5, v9, :cond_f

    const v5, 0x7f080252

    :goto_5
    invoke-virtual {v8, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/AppCompatCheckBox;->setVisibility(I)V

    :cond_4
    :goto_6
    const v3, 0x7f080226

    invoke-virtual {v8, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v28, Lcom/estrongs/android/pop/utils/ca;

    move-object/from16 v29, p0

    move/from16 v30, v19

    move-object/from16 v31, p2

    move-object/from16 v32, p5

    move-object/from16 v33, p1

    move/from16 v34, v41

    move-object/from16 v35, v8

    move/from16 v36, v14

    move-object/from16 v37, v4

    move/from16 v38, v6

    move-object/from16 v39, p4

    invoke-direct/range {v28 .. v39}, Lcom/estrongs/android/pop/utils/ca;-><init>(Lcom/estrongs/android/pop/utils/bv;ZLjava/util/List;Lcom/estrongs/android/pop/utils/ck;Lcom/estrongs/android/pop/app/d/a;ZLandroid/app/Activity;ZLandroid/support/v7/widget/AppCompatCheckBox;ZLcom/estrongs/a/a/p;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/android/ui/dialog/ci;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v3, 0x7f080221

    invoke-virtual {v8, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/pop/utils/cb;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/pop/utils/cb;-><init>(Lcom/estrongs/android/pop/utils/bv;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/ui/dialog/ci;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    new-instance v3, Lcom/estrongs/android/pop/utils/cc;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/estrongs/android/pop/utils/cc;-><init>(Lcom/estrongs/android/pop/utils/bv;Landroid/app/Activity;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz v6, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0805ce

    invoke-virtual {v8, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f08019c

    invoke-virtual {v8, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0805da

    invoke-virtual {v8, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {v27 .. v27}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    new-instance v4, Lcom/estrongs/fs/b/ao;

    invoke-static {v8}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v5}, Lcom/estrongs/fs/b/ao;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/estrongs/android/pop/utils/bv;->a:Lcom/estrongs/fs/b/ao;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/utils/bv;->a:Lcom/estrongs/fs/b/ao;

    new-instance v5, Lcom/estrongs/android/pop/utils/cd;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v8, v2}, Lcom/estrongs/android/pop/utils/cd;-><init>(Lcom/estrongs/android/pop/utils/bv;Ljava/lang/StringBuilder;Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/b/ao;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/utils/bv;->a:Lcom/estrongs/fs/b/ao;

    new-instance v5, Lcom/estrongs/android/pop/utils/cf;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v8, v2}, Lcom/estrongs/android/pop/utils/cf;-><init>(Lcom/estrongs/android/pop/utils/bv;Ljava/lang/StringBuilder;Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Lcom/estrongs/fs/b/ao;->addProgressListener(Lcom/estrongs/a/a/l;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/utils/bv;->a:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v2}, Lcom/estrongs/fs/b/ao;->execute()V

    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_6
    invoke-static {v7}, Lcom/estrongs/android/util/ap;->cg(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz p8, :cond_8

    :cond_7
    const/4 v14, 0x0

    move v5, v2

    goto/16 :goto_2

    :cond_8
    if-eqz v13, :cond_17

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/utils/cr;->a(Ljava/lang/String;)I

    move-result v2

    sget v4, Lcom/estrongs/android/pop/utils/cr;->c:I

    if-eq v2, v4, :cond_9

    const/4 v14, 0x0

    move v5, v2

    goto/16 :goto_2

    :cond_a
    const/4 v6, 0x0

    move/from16 v41, v6

    goto/16 :goto_3

    :cond_b
    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/estrongs/fs/h;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_d

    const/16 v17, 0x1

    :goto_8
    invoke-interface/range {v16 .. v16}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v7

    invoke-virtual {v7}, Lcom/estrongs/fs/w;->a()Z

    move-result v18

    if-eqz v12, :cond_e

    const/4 v6, 0x0

    :cond_c
    :goto_9
    invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v20

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v9 .. v20}, Lcom/estrongs/android/pop/utils/bv;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;ZZZZLcom/estrongs/fs/h;ZZZZ)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/estrongs/android/pop/utils/bv;->b:Ljava/lang/String;

    invoke-interface/range {v16 .. v16}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/util/ap;->aV(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v25, 0x1

    goto/16 :goto_4

    :cond_d
    const/16 v17, 0x0

    goto :goto_8

    :cond_e
    if-eqz v17, :cond_c

    if-nez v18, :cond_c

    const/4 v6, 0x0

    goto :goto_9

    :cond_f
    sget v9, Lcom/estrongs/android/pop/utils/cr;->e:I

    if-ne v5, v9, :cond_10

    const v5, 0x7f0802e2

    goto/16 :goto_5

    :cond_10
    sget v9, Lcom/estrongs/android/pop/utils/cr;->f:I

    if-ne v5, v9, :cond_11

    const v5, 0x7f0806f3

    goto/16 :goto_5

    :cond_11
    sget v9, Lcom/estrongs/android/pop/utils/cr;->g:I

    if-ne v5, v9, :cond_12

    const v5, 0x7f0802db

    goto/16 :goto_5

    :cond_12
    sget v9, Lcom/estrongs/android/pop/utils/cr;->h:I

    if-ne v5, v9, :cond_16

    const v5, 0x7f0802db

    goto/16 :goto_5

    :cond_13
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/AppCompatCheckBox;->setVisibility(I)V

    goto/16 :goto_6

    :cond_14
    if-nez v15, :cond_4

    if-eqz v42, :cond_4

    const v5, 0x7f080253

    invoke-virtual {v8, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_15
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {v27 .. v27}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto/16 :goto_7

    :cond_16
    move v5, v7

    goto/16 :goto_5

    :cond_17
    move v5, v2

    move v14, v13

    goto/16 :goto_2
.end method
