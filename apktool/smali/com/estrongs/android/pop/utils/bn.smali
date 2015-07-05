.class Lcom/estrongs/android/pop/utils/bn;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/fs/b/am;

.field b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/bn;->a:Lcom/estrongs/fs/b/am;

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/bn;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/utils/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/utils/bn;-><init>()V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;ZZZZLcom/estrongs/fs/h;ZZ)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;ZZZZ",
            "Lcom/estrongs/fs/h;",
            "ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    const v5, 0x7f0b0257

    const v2, 0x7f0b01ba

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_5

    if-eqz p8, :cond_3

    if-nez p5, :cond_1

    if-nez p9, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b00fc

    invoke-virtual {p1, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

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
    return-object v0

    :cond_0
    const v0, 0x7f0b0256

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez p9, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b0443

    invoke-virtual {p1, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b00fc

    invoke-virtual {p1, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

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

    :cond_2
    const v0, 0x7f0b0444

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-nez p5, :cond_4

    invoke-virtual {p1, v5}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f0b0445

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    invoke-interface {p7}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0b036d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    if-eqz p6, :cond_8

    if-eqz p8, :cond_7

    invoke-virtual {p1, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1, v5}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    if-eqz p8, :cond_a

    if-nez p9, :cond_9

    invoke-virtual {p1, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const v0, 0x7f0b0256

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1, v5}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
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

    invoke-static {v2}, Lcom/estrongs/android/util/am;->au(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/pcs/r;->a(I)V

    invoke-virtual {v2, v4}, Lcom/estrongs/android/ui/pcs/r;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SP://:@pcs"

    check-cast v0, Lcom/estrongs/fs/impl/m/b;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/m/b;->setPath(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/m/b;->setAbsolutePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    const v3, 0x7f0b04c7

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/m/b;->setDisplayName(Ljava/lang/String;)V

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

.method private a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;ZZLcom/estrongs/a/a/p;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
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

    invoke-direct/range {v0 .. v8}, Lcom/estrongs/android/pop/utils/bn;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;ZZLcom/estrongs/a/a/p;ZZZ)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;ZZLcom/estrongs/a/a/p;ZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;ZZ",
            "Lcom/estrongs/a/a/p;",
            "ZZZ)V"
        }
    .end annotation

    const v1, 0x7f0b02c1

    const/4 v5, 0x0

    new-instance v3, Lcom/estrongs/fs/b/ab;

    invoke-static {p1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-direct {v3, v0, p2, p3, p4}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;ZZ)V

    new-instance v0, Lcom/estrongs/android/pop/m;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/b/ab;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    if-nez p4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/b/ab;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Lcom/estrongs/fs/b/ab;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    invoke-virtual {v3, p7}, Lcom/estrongs/fs/b/ab;->a(Z)V

    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->z()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f0b043f

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    new-instance v2, Lcom/estrongs/android/pop/utils/by;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/utils/by;-><init>(Lcom/estrongs/android/pop/utils/bn;Z)V

    invoke-virtual {v3, v2}, Lcom/estrongs/fs/b/ab;->addPostListener(Lcom/estrongs/a/a/o;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ix;

    invoke-virtual {p1, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v4, p8

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZZ)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    invoke-virtual {v3}, Lcom/estrongs/fs/b/ab;->execute()V

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_2
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/bn;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/utils/bn;->a(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/bn;Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;ZZLcom/estrongs/a/a/p;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/android/pop/utils/bn;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;ZZLcom/estrongs/a/a/p;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/utils/bn;Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;ZZLcom/estrongs/a/a/p;ZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/estrongs/android/pop/utils/bn;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;ZZLcom/estrongs/a/a/p;ZZZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/aw;Lcom/estrongs/a/a/p;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/android/view/aw;",
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

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/bn;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/aw;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/cb;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/aw;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/cb;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/android/view/aw;",
            "Lcom/estrongs/a/a/p;",
            "Lcom/estrongs/android/pop/utils/cb;",
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

    invoke-virtual/range {v0 .. v8}, Lcom/estrongs/android/pop/utils/bn;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/aw;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/cb;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/android/view/aw;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/cb;ILjava/lang/String;Z)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/esclasses/ESActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/android/view/aw;",
            "Lcom/estrongs/a/a/p;",
            "Lcom/estrongs/android/pop/utils/cb;",
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
    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/estrongs/android/ui/dialog/ct;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0013

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    const v3, 0x7f0b0516

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    const v3, 0x7f0b000b

    new-instance v4, Lcom/estrongs/android/pop/utils/bo;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/pop/utils/bo;-><init>(Lcom/estrongs/android/pop/utils/bn;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/ui/dialog/ct;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v7

    :goto_1
    if-nez p4, :cond_1b

    new-instance v2, Lcom/estrongs/android/pop/utils/bp;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/pop/utils/bp;-><init>(Lcom/estrongs/android/pop/utils/bn;Lcom/estrongs/android/view/aw;Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Ljava/lang/String;)V

    move-object v12, v2

    :goto_2
    invoke-static {v7}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->aD()Z

    move-result v6

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-eqz v5, :cond_6

    const/4 v3, 0x0

    move/from16 v16, v2

    move/from16 v17, v3

    :goto_3
    if-eqz v5, :cond_a

    invoke-static {v7}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    const/4 v8, 0x1

    move v15, v2

    :goto_4
    const/4 v3, 0x1

    if-nez p6, :cond_2

    if-eqz v6, :cond_d

    if-eqz v17, :cond_b

    const v2, 0x7f0b0433

    move/from16 p6, v2

    :cond_2
    :goto_5
    if-eqz p7, :cond_e

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/estrongs/android/pop/utils/bn;->b:Ljava/lang/String;

    const/4 v13, 0x0

    move v10, v13

    :goto_6
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030036

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;

    const v2, 0x102000b

    invoke-virtual {v13, v2}, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    if-nez v5, :cond_17

    const v2, 0x7f0a0113

    invoke-virtual {v13, v2}, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    const v2, 0x7f0a0114

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v17, :cond_4

    const v3, 0x7f0b043a

    sget v5, Lcom/estrongs/android/pop/utils/ci;->d:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_13

    const v3, 0x7f0b043b

    :cond_3
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_8
    new-instance v2, Lcom/estrongs/android/ui/dialog/ct;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v16

    const v19, 0x7f0b000b

    new-instance v2, Lcom/estrongs/android/pop/utils/bs;

    move-object/from16 v3, p0

    move/from16 v4, v18

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    move v9, v15

    move/from16 v11, v17

    invoke-direct/range {v2 .. v12}, Lcom/estrongs/android/pop/utils/bs;-><init>(Lcom/estrongs/android/pop/utils/bn;ZLjava/util/List;Lcom/estrongs/android/pop/utils/cb;Lcom/estrongs/android/view/aw;Lcom/estrongs/android/pop/esclasses/ESActivity;ZZZLcom/estrongs/a/a/p;)V

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    const v3, 0x7f0b000c

    new-instance v4, Lcom/estrongs/android/pop/utils/br;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/pop/utils/br;-><init>(Lcom/estrongs/android/pop/utils/bn;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/utils/bt;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/estrongs/android/pop/utils/bt;-><init>(Lcom/estrongs/android/pop/utils/bn;Lcom/estrongs/android/pop/esclasses/ESActivity;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz v10, :cond_18

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/utils/bn;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0b00fd

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0b0064

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0b00fc

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v13}, Lcom/estrongs/android/ui/dialog/cg;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/utils/bn;->b:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/fs/b/am;

    invoke-static/range {p1 .. p1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3}, Lcom/estrongs/fs/b/am;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bn;->a:Lcom/estrongs/fs/b/am;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/utils/bn;->a:Lcom/estrongs/fs/b/am;

    new-instance v2, Lcom/estrongs/android/pop/utils/bu;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object v7, v14

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/pop/utils/bu;-><init>(Lcom/estrongs/android/pop/utils/bn;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/estrongs/android/pop/esclasses/ESActivity;Landroid/widget/TextView;)V

    invoke-virtual {v8, v2}, Lcom/estrongs/fs/b/am;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/estrongs/android/pop/utils/bn;->a:Lcom/estrongs/fs/b/am;

    new-instance v2, Lcom/estrongs/android/pop/utils/bw;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object v7, v14

    invoke-direct/range {v2 .. v7}, Lcom/estrongs/android/pop/utils/bw;-><init>(Lcom/estrongs/android/pop/utils/bn;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/estrongs/android/pop/esclasses/ESActivity;Landroid/widget/TextView;)V

    invoke-virtual {v8, v2}, Lcom/estrongs/fs/b/am;->addProgressListener(Lcom/estrongs/a/a/l;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/pop/utils/bn;->a:Lcom/estrongs/fs/b/am;

    invoke-virtual {v2}, Lcom/estrongs/fs/b/am;->execute()V

    :goto_9
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

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_6
    invoke-static {v7}, Lcom/estrongs/android/util/am;->bP(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz p8, :cond_8

    :cond_7
    const/4 v3, 0x0

    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_3

    :cond_8
    if-eqz v6, :cond_1a

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/utils/ci;->a(Ljava/lang/String;)I

    move-result v2

    sget v4, Lcom/estrongs/android/pop/utils/ci;->c:I

    if-eq v2, v4, :cond_9

    const/4 v3, 0x0

    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    move v15, v2

    goto/16 :goto_4

    :cond_b
    if-nez v5, :cond_c

    const v2, 0x7f0b0013

    move/from16 p6, v2

    goto/16 :goto_5

    :cond_c
    const v2, 0x7f0b0013

    move/from16 p6, v2

    goto/16 :goto_5

    :cond_d
    const v2, 0x7f0b0013

    move/from16 p6, v2

    goto/16 :goto_5

    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/estrongs/fs/h;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    const/4 v10, 0x1

    :goto_a
    invoke-interface {v9}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/m;->a()Z

    move-result v11

    if-eqz v5, :cond_12

    const/4 v2, 0x0

    move v13, v2

    :goto_b
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, v17

    invoke-direct/range {v2 .. v11}, Lcom/estrongs/android/pop/utils/bn;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;ZZZZLcom/estrongs/fs/h;ZZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bn;->b:Ljava/lang/String;

    invoke-interface {v9}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->aL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_f
    if-eqz v18, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/utils/bn;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0517

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/pop/utils/bn;->b:Ljava/lang/String;

    :cond_10
    move v10, v13

    goto/16 :goto_6

    :cond_11
    const/4 v10, 0x0

    goto :goto_a

    :cond_12
    if-eqz v10, :cond_19

    if-nez v11, :cond_19

    const/4 v2, 0x0

    move v13, v2

    goto :goto_b

    :cond_13
    sget v5, Lcom/estrongs/android/pop/utils/ci;->e:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_14

    const v3, 0x7f0b043c

    goto/16 :goto_7

    :cond_14
    sget v5, Lcom/estrongs/android/pop/utils/ci;->f:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_15

    const v3, 0x7f0b043d

    goto/16 :goto_7

    :cond_15
    sget v5, Lcom/estrongs/android/pop/utils/ci;->g:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_16

    const v3, 0x7f0b043e

    goto/16 :goto_7

    :cond_16
    sget v5, Lcom/estrongs/android/pop/utils/ci;->h:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_3

    const v3, 0x7f0b043e

    goto/16 :goto_7

    :cond_17
    if-nez v8, :cond_4

    const v2, 0x7f0a0113

    invoke-virtual {v13, v2}, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a0114

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0440

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/pop/utils/bn;->b:Ljava/lang/String;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v13}, Lcom/estrongs/android/ui/dialog/cg;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto/16 :goto_9

    :cond_19
    move v13, v3

    goto/16 :goto_b

    :cond_1a
    move/from16 v16, v2

    move/from16 v17, v6

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v12, p4

    goto/16 :goto_2
.end method
