.class public Lcom/estrongs/android/pop/app/diskusage/e;
.super Lcom/estrongs/android/widget/ag;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static final h:Ljava/text/DecimalFormat;

.field private static final t:Lcom/estrongs/android/pop/app/diskusage/g;


# instance fields
.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/util/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Ljava/io/File;

.field private o:Lcom/estrongs/fs/util/g;

.field private p:Lcom/estrongs/fs/util/h;

.field private q:J

.field private r:Landroid/content/ContextWrapper;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/io/File;",
            "Lcom/estrongs/fs/util/g;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "fileIcon"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->a:Ljava/lang/String;

    const-string v0, "fileName"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    const-string v0, "fileSize"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->c:Ljava/lang/String;

    const-string v0, "fileType"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->d:Ljava/lang/String;

    const-string v0, "fileNum"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->e:Ljava/lang/String;

    const-string v0, "fileSizePrecent"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->f:Ljava/lang/String;

    const-string v0, "fileSizeRate"

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->g:Ljava/lang/String;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->h:Ljava/text/DecimalFormat;

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/g;-><init>(Lcom/estrongs/android/pop/app/diskusage/f;)V

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->t:Lcom/estrongs/android/pop/app/diskusage/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/widget/ag;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->m:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->s:Ljava/util/List;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->r:Landroid/content/ContextWrapper;

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0}, Lcom/estrongs/android/widget/ag;->c()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/estrongs/android/util/q;->a:Lcom/estrongs/android/util/t;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/util/t;->a(Z)V

    invoke-super {p0}, Lcom/estrongs/android/widget/ag;->c()[Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/util/q;->a:Lcom/estrongs/android/util/t;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0}, Lcom/estrongs/android/widget/ag;->c()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/q;->b:Lcom/estrongs/android/util/u;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/util/u;->a(Z)V

    invoke-super {p0}, Lcom/estrongs/android/widget/ag;->c()[Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/util/q;->b:Lcom/estrongs/android/util/u;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->t:Lcom/estrongs/android/pop/app/diskusage/g;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/app/diskusage/g;->a(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->s:Ljava/util/List;

    sget-object v1, Lcom/estrongs/android/pop/app/diskusage/e;->t:Lcom/estrongs/android/pop/app/diskusage/g;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/io/File;

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-super {p0, v2}, Lcom/estrongs/android/widget/ag;->a([Ljava/io/File;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/estrongs/fs/util/g;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->i:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/util/g;

    return-object v0
.end method

.method protected a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->n:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->n:Ljava/io/File;

    if-eq v0, p1, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->n:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->i:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/util/g;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->o:Lcom/estrongs/fs/util/g;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->o:Lcom/estrongs/fs/util/g;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->r:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/estrongs/android/util/bc;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".lnk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ".lnk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    const-string v2, ".lnk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->o:Lcom/estrongs/fs/util/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/util/g;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->e:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->o:Lcom/estrongs/fs/util/g;

    invoke-virtual {v1}, Lcom/estrongs/fs/util/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->o:Lcom/estrongs/fs/util/g;

    invoke-virtual {v1}, Lcom/estrongs/fs/util/g;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->f:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/app/diskusage/e;->h:Ljava/text/DecimalFormat;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->o:Lcom/estrongs/fs/util/g;

    invoke-virtual {v2}, Lcom/estrongs/fs/util/g;->b()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/e;->q:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->g:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->o:Lcom/estrongs/fs/util/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/util/g;->b()J

    move-result-wide v0

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/e;->q:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->l:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->o:Lcom/estrongs/fs/util/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->o:Lcom/estrongs/fs/util/g;

    invoke-virtual {v0}, Lcom/estrongs/fs/util/g;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    const/4 v1, 0x1

    const-string v0, ""

    if-eqz p1, :cond_0

    if-ne v1, p1, :cond_3

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->b:Ljava/lang/String;

    :cond_1
    :goto_0
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/lang/String;Z)V

    return-void

    :cond_3
    const/4 v2, 0x2

    if-eq v2, p1, :cond_4

    const/4 v2, 0x3

    if-ne v2, p1, :cond_5

    :cond_4
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->d:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    if-eq v2, p1, :cond_6

    const/4 v2, 0x5

    if-ne v2, p1, :cond_1

    :cond_6
    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/e;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->q:J

    return-void
.end method

.method public a(Lcom/estrongs/fs/util/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->p:Lcom/estrongs/fs/util/h;

    return-void
.end method

.method public a([Ljava/io/File;)Z
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/e;->l:Z

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->m:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, p1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, p1, v1

    iget-boolean v5, p0, Lcom/estrongs/android/pop/app/diskusage/e;->l:Z

    if-eqz v5, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->l:Z

    if-eqz v3, :cond_6

    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->l:Z

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/e;->i:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/estrongs/fs/util/i;

    iget-object v6, p0, Lcom/estrongs/android/pop/app/diskusage/e;->p:Lcom/estrongs/fs/util/h;

    iget-wide v8, p0, Lcom/estrongs/android/pop/app/diskusage/e;->k:J

    invoke-direct {v5, v6, v8, v9}, Lcom/estrongs/fs/util/i;-><init>(Lcom/estrongs/fs/util/h;J)V

    iput-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/e;->o:Lcom/estrongs/fs/util/g;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/e;->o:Lcom/estrongs/fs/util/g;

    invoke-virtual {v5, v4}, Lcom/estrongs/fs/util/g;->a(Ljava/io/File;)V

    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/e;->i:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/estrongs/android/pop/app/diskusage/e;->o:Lcom/estrongs/fs/util/g;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/e;->i:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/estrongs/android/pop/app/diskusage/e;->p:Lcom/estrongs/fs/util/h;

    invoke-interface {v5, v4}, Lcom/estrongs/fs/util/h;->a(Ljava/io/File;)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/e;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-super {p0, p1}, Lcom/estrongs/android/widget/ag;->a([Ljava/io/File;)Z

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/diskusage/e;->k:J

    return-void
.end method
