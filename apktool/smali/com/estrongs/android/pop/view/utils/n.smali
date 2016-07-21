.class public Lcom/estrongs/android/pop/view/utils/n;
.super Ljava/lang/Object;


# static fields
.field private static C:Lcom/estrongs/android/pop/view/utils/n;

.field private static D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/view/utils/u;",
            ">;"
        }
    .end annotation
.end field

.field private static E:Z

.field private static F:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:I

.field private static e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static o:I

.field private static p:[Ljava/lang/String;

.field private static r:[Lcom/estrongs/android/pop/view/utils/v;

.field private static s:Ljava/lang/Object;


# instance fields
.field private A:Z

.field private B:Z

.field a:J

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private q:Z

.field private t:Ljava/lang/Object;

.field private u:Landroid/os/Handler;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    sput v3, Lcom/estrongs/android/pop/view/utils/n;->d:I

    sput-object v4, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/pop/a;->h:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recomm_items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recomm_items_abroad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/icons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/thumbnail_pics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recomm_items_download_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->k:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/estrongs/android/pop/view/utils/n;->o:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/estrongs/android/pop/app/DownloaderActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Lcom/estrongs/android/pop/app/BrowserDownloaderActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->p:[Ljava/lang/String;

    sput-object v4, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->s:Ljava/lang/Object;

    sput-object v4, Lcom/estrongs/android/pop/view/utils/n;->C:Lcom/estrongs/android/pop/view/utils/n;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    sput-boolean v3, Lcom/estrongs/android/pop/view/utils/n;->E:Z

    const-string v0, "PreferActivity"

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/utils/n;->a:J

    iput-object v3, p0, Lcom/estrongs/android/pop/view/utils/n;->l:Ljava/lang/String;

    iput-object v3, p0, Lcom/estrongs/android/pop/view/utils/n;->m:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/utils/n;->n:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/utils/n;->q:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/n;->t:Ljava/lang/Object;

    iput-object v3, p0, Lcom/estrongs/android/pop/view/utils/n;->u:Landroid/os/Handler;

    iput v2, p0, Lcom/estrongs/android/pop/view/utils/n;->v:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/utils/n;->w:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/estrongs/android/pop/view/utils/n;->x:I

    iput v2, p0, Lcom/estrongs/android/pop/view/utils/n;->y:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/utils/n;->z:J

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/utils/n;->A:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/utils/n;->B:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/utils/n;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/utils/n;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/u;
    .locals 3

    sget-boolean v0, Lcom/estrongs/android/pop/view/utils/n;->E:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/pop/view/utils/n;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/view/utils/n;->E:Z

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/u;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    sget-object v2, Lcom/estrongs/android/pop/z;->X:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/estrongs/android/pop/z;->X:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/pop/z;->d(Ljava/lang/String;)Lcom/estrongs/android/pop/view/utils/u;

    move-result-object v0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/net/Uri;[ILjava/util/Comparator;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "[I",
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz p4, :cond_0

    invoke-static {v1, p4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    if-eqz p3, :cond_1

    array-length v2, p3

    if-ne v5, v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    aput v2, p3, v4

    :cond_1
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz p4, :cond_2

    invoke-static {v0, p4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    array-length v0, p3

    if-ne v5, v0, :cond_5

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    aget v3, p3, v4

    sub-int/2addr v2, v3

    aput v2, p3, v0

    :cond_5
    return-object v1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->F:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/android/pop/view/utils/u;)V
    .locals 3

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    monitor-enter v1

    if-nez p2, :cond_0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p0}, Lcom/estrongs/android/pop/view/utils/n;->b(Landroid/app/Activity;)V

    monitor-exit v1

    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/u;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/utils/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/utils/n;->j()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/utils/n;Lcom/estrongs/android/util/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/util/aa;)V

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/util/aa;)V
    .locals 1

    iget-object v0, p1, Lcom/estrongs/android/util/aa;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/v;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/v;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->d(Lcom/estrongs/android/pop/view/utils/v;)V

    return-void
.end method

.method private declared-synchronized a([Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v5, "######"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x2

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    array-length v0, p1

    if-ge v2, v0, :cond_1

    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    aget-object v1, p1, v2

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    aget-object v5, p1, v2

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_2
    iput v0, v5, Lcom/estrongs/android/pop/view/utils/v;->q:I

    aget-object v5, p1, v2

    if-nez v1, :cond_7

    const-wide/16 v0, 0x0

    :goto_3
    iput-wide v0, v5, Lcom/estrongs/android/pop/view/utils/v;->t:J

    aget-object v0, p1, v2

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    aget-object v0, p1, v2

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    aget-object v0, p1, v2

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    :cond_3
    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_4

    aget-object v0, p1, v2

    iget-wide v6, v0, Lcom/estrongs/android/pop/view/utils/v;->t:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_8

    :cond_4
    aget-object v0, p1, v2

    const/4 v1, 0x0

    iput v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    :cond_5
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_3

    :cond_8
    aget-object v0, p1, v2

    iget v0, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_9

    aget-object v0, p1, v2

    const/4 v5, 0x4

    iput v5, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    :cond_9
    aget-object v0, p1, v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/estrongs/android/pop/view/utils/v;->u:J

    aget-object v0, p1, v2

    iget-wide v0, v0, Lcom/estrongs/android/pop/view/utils/v;->u:J

    aget-object v5, p1, v2

    iget-wide v6, v5, Lcom/estrongs/android/pop/view/utils/v;->t:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_5

    aget-object v0, p1, v2

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/utils/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/utils/n;->n:Z

    return p1
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)[Lcom/estrongs/android/pop/view/utils/t;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    const-string v0, ""

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v5, "*/*"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-static {v2, v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    aput v5, v4, v3

    :goto_0
    invoke-static {p0, v2, v1, v4, v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;[ILjava/lang/String;)[Lcom/estrongs/android/pop/view/utils/t;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/net/Uri;[ILjava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static a(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;[ILjava/lang/String;)[Lcom/estrongs/android/pop/view/utils/t;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;[I",
            "Ljava/lang/String;",
            ")[",
            "Lcom/estrongs/android/pop/view/utils/t;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_a

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    sget-object v6, Lcom/estrongs/android/pop/view/utils/n;->p:[Ljava/lang/String;

    array-length v7, v6

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v7, :cond_4

    aget-object v8, v6, v2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v1, 0x1

    :cond_4
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_7

    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "none"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->i()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-nez v1, :cond_2

    new-instance v6, Lcom/estrongs/android/pop/view/utils/t;

    invoke-direct {v6}, Lcom/estrongs/android/pop/view/utils/t;-><init>()V

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Lcom/estrongs/android/pop/view/utils/t;->c:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/estrongs/android/pop/view/utils/t;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/estrongs/android/pop/view/utils/t;->a:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    aget v0, p3, v0

    if-lt v3, v0, :cond_8

    const-string v0, "android.intent.action.EDIT"

    :goto_5
    iput-object v0, v6, Lcom/estrongs/android/pop/view/utils/t;->e:Ljava/lang/String;

    iput-object v2, v6, Lcom/estrongs/android/pop/view/utils/t;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v7, :cond_e

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/t;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/view/utils/t;->a(Lcom/estrongs/android/pop/view/utils/t;)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :try_start_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_4

    :cond_8
    const-string v0, "android.intent.action.VIEW"

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_a
    :try_start_2
    invoke-static {p4}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p4}, Lcom/estrongs/android/util/bg;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p4}, Lcom/estrongs/android/util/bg;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    new-instance v0, Lcom/estrongs/android/pop/view/utils/t;

    invoke-direct {v0}, Lcom/estrongs/android/pop/view/utils/t;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/view/utils/t;->c:Ljava/lang/String;

    const-class v1, Lcom/estrongs/android/pop/app/PopChromecastPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/view/utils/t;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/view/utils/t;->a:Landroid/graphics/drawable/Drawable;

    const-string v1, "android.intent.action.VIEW"

    iput-object v1, v0, Lcom/estrongs/android/pop/view/utils/t;->e:Ljava/lang/String;

    const v1, 0x7f0802c1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/view/utils/t;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_c
    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_d
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-array v0, v0, [Lcom/estrongs/android/pop/view/utils/t;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/estrongs/android/pop/view/utils/t;

    goto/16 :goto_0

    :catch_1
    move-exception v6

    goto/16 :goto_4

    :cond_e
    move v0, v1

    goto :goto_7
.end method

.method public static declared-synchronized b()Lcom/estrongs/android/pop/view/utils/n;
    .locals 2

    const-class v1, Lcom/estrongs/android/pop/view/utils/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->C:Lcom/estrongs/android/pop/view/utils/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/view/utils/n;

    invoke-direct {v0}, Lcom/estrongs/android/pop/view/utils/n;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->C:Lcom/estrongs/android/pop/view/utils/n;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->C:Lcom/estrongs/android/pop/view/utils/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/app/Activity;)V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->F:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/utils/u;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "######"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/estrongs/android/pop/view/utils/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "######"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/estrongs/android/pop/view/utils/u;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/estrongs/android/pop/view/utils/u;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/u;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_2
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public static b(Lcom/estrongs/android/pop/view/utils/v;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, p1

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/utils/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/utils/n;->B:Z

    return p1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static c(Lcom/estrongs/android/pop/view/utils/v;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/utils/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, v1, p1

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)I
    .locals 13

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    new-array v3, v2, [B

    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v9, "r"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v3, v9, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/util/zip/InflaterInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v9}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_1
    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v7, v3, v9, v10}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v9

    if-lez v9, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move v2, v4

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/InflaterInputStream;->close()V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v2, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v2}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v7, "channel_title"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/view/utils/n;->l:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v7, "pic_url"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/view/utils/n;->m:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v7, "hash_code"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v7, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v7, :cond_3

    move v2, v5

    goto/16 :goto_0

    :cond_3
    sput-object v2, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    check-cast v3, Ljava/util/Map;

    const-string v2, "content"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v2, v3, Lorg/json/simple/JSONArray;

    if-eqz v2, :cond_14

    move-object v0, v3

    check-cast v0, Lorg/json/simple/JSONArray;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/json/simple/JSONArray;->size()I

    move-result v2

    new-array v9, v2, [Lcom/estrongs/android/pop/view/utils/v;

    check-cast v3, Lorg/json/simple/JSONArray;

    invoke-virtual {v3}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v7, v5

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    new-instance v11, Lcom/estrongs/android/pop/view/utils/v;

    invoke-direct {v11}, Lcom/estrongs/android/pop/view/utils/v;-><init>()V

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "icon"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->a:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "title"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->c:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "pic"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    iget-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    iget-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Lcom/estrongs/android/util/aa;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/aa;

    iget-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    iget-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Lcom/estrongs/android/util/aa;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->o:[Lcom/estrongs/android/util/aa;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "size"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->s:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "aid"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->b:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "package"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "url"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "shortDesc"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->g:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "longDesc"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->h:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "version"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->i:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "types"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->j:Ljava/lang/String;

    const-string v2, "flags"

    invoke-static {v3, v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/estrongs/android/pop/view/utils/v;->A:I

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "market_url"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->C:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    const-string v12, "alias_name"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->B:Ljava/lang/String;

    iget-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->j:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    const-string v12, "cn.wps.moffice_eng"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    const-string v12, "cn.wps.moffice"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    const-string v2, "text/plain;application/msexcel;application/ms-excel;application/vnd.ms-excel;application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;application/vnd.openxmlformats-officedocument.spreadsheetml.template;application/mspowerpoint;application/ms-powerpoint;application/vnd.ms-powerpoint;application/vnd.openxmlformats-officedocument.presentationml.presentation;application/vnd.openxmlformats-officedocument.presentationml.template;application/vnd.openxmlformats-officedocument.presentationml.slideshow;application/msword;application/ms-word;application/vnd.ms-word;application/vnd.ms-works;application/vnd.openxmlformats-officedocument.wordprocessingml.document;application/vnd.openxmlformats-officedocument.wordprocessingml.template;application/octet-stream;application/log;application/kswps;application/kset;application/ksdps;application/wps;application/et;application/dps;application/dpt;application/wpt;application/ett"

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->j:Ljava/lang/String;

    :cond_5
    :goto_3
    invoke-virtual {p0, v11}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/v;)I

    move-result v2

    iput v2, v11, Lcom/estrongs/android/pop/view/utils/v;->v:I

    const-string v2, "show"

    invoke-static {v3, v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/estrongs/android/pop/view/utils/v;->w:Z

    :cond_6
    :goto_4
    const-string v2, "vcode"

    invoke-static {v3, v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    iput v2, v11, Lcom/estrongs/android/pop/view/utils/v;->x:I

    const-string v2, "root_recomm"

    invoke-static {v3, v2}, Lcom/estrongs/android/pop/netfs/utils/HttpUtils;->getInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_a

    move v2, v6

    :goto_5
    iput-boolean v2, v11, Lcom/estrongs/android/pop/view/utils/v;->z:Z

    add-int/lit8 v2, v7, 0x1

    aput-object v11, v9, v7

    move v7, v2

    goto/16 :goto_2

    :cond_7
    iget-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    const-string v12, "com.uc.browser"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    const-string v12, "com.uc.browser.hd"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    const-string v12, "com.uc.browser.en"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_8
    const-string v2, "text/plain;text/html"

    iput-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->j:Ljava/lang/String;

    goto :goto_3

    :cond_9
    iget-object v2, v11, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/estrongs/android/pop/view/utils/v;->w:Z

    goto :goto_4

    :cond_a
    move v2, v5

    goto :goto_5

    :cond_b
    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/utils/n;->B:Z

    if-eqz v2, :cond_f

    move v3, v5

    :goto_6
    array-length v2, v9

    if-ge v3, v2, :cond_10

    move v2, v5

    :goto_7
    sget-object v7, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v7, v7

    if-ge v2, v7, :cond_d

    sget-object v7, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    aget-object v10, v9, v3

    iget-object v10, v10, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    aget-object v7, v9, v3

    sget-object v10, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    iput-object v10, v7, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    aget-object v7, v9, v3

    iget-object v7, v7, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    sget-object v10, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    invoke-static {v7, v10}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    aget-object v7, v9, v3

    sget-object v10, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    iput-object v10, v7, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v7, v9, v3

    sget-object v10, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/estrongs/android/pop/view/utils/v;->o:[Lcom/estrongs/android/util/aa;

    iput-object v10, v7, Lcom/estrongs/android/pop/view/utils/v;->o:[Lcom/estrongs/android/util/aa;

    aget-object v7, v9, v3

    sget-object v10, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    iput-object v10, v7, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v7, v9, v3

    sget-object v10, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/aa;

    iput-object v10, v7, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/aa;

    :cond_c
    aget-object v7, v9, v3

    sget-object v10, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v10, v10, v2

    iget-boolean v10, v10, Lcom/estrongs/android/pop/view/utils/v;->p:Z

    iput-boolean v10, v7, Lcom/estrongs/android/pop/view/utils/v;->p:Z

    aget-object v7, v9, v3

    sget-object v10, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v10, v10, v2

    iget v10, v10, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iput v10, v7, Lcom/estrongs/android/pop/view/utils/v;->q:I

    aget-object v7, v9, v3

    sget-object v10, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/aa;

    iput-object v10, v7, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/aa;

    aget-object v7, v9, v3

    sget-object v10, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v10, v10, v2

    iget-wide v10, v10, Lcom/estrongs/android/pop/view/utils/v;->t:J

    iput-wide v10, v7, Lcom/estrongs/android/pop/view/utils/v;->t:J

    aget-object v7, v9, v3

    sget-object v10, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v2, v10, v2

    iget-wide v10, v2, Lcom/estrongs/android/pop/view/utils/v;->u:J

    iput-wide v10, v7, Lcom/estrongs/android/pop/view/utils/v;->u:J

    :cond_d
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_6

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_f
    invoke-direct {p0, v9}, Lcom/estrongs/android/pop/view/utils/n;->a([Lcom/estrongs/android/pop/view/utils/v;)V

    :cond_10
    array-length v2, v9

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/utils/n;->q:Z

    if-nez v2, :cond_11

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->s:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/utils/n;->B:Z

    if-nez v2, :cond_12

    sput-object v9, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v2, v2

    iput v2, p0, Lcom/estrongs/android/pop/view/utils/n;->v:I

    :goto_8
    monitor-exit v3

    :cond_11
    move v2, v6

    goto/16 :goto_0

    :cond_12
    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    if-nez v2, :cond_13

    sput-object v9, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    goto :goto_8

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_13
    :try_start_4
    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v2, v2

    iget v5, p0, Lcom/estrongs/android/pop/view/utils/n;->v:I

    sub-int/2addr v2, v5

    array-length v5, v9

    add-int/2addr v2, v5

    new-array v2, v2, [Lcom/estrongs/android/pop/view/utils/v;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v10, v9

    invoke-static {v9, v5, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v5, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    iget v7, p0, Lcom/estrongs/android/pop/view/utils/n;->v:I

    array-length v9, v9

    sget-object v10, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v10, v10

    iget v11, p0, Lcom/estrongs/android/pop/view/utils/n;->v:I

    sub-int/2addr v10, v11

    invoke-static {v5, v7, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v2, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :cond_14
    move v2, v4

    goto/16 :goto_0
.end method

.method public static d(Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.estrongs.com/channel?aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/util/aa;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/aa;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/v;->y:Z

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 13

    const/4 v12, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/estrongs/android/pop/view/utils/n;->F:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sget-object v4, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v5, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "######"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-ne v12, v6, :cond_3

    sget-object v6, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    new-instance v8, Lcom/estrongs/android/pop/view/utils/u;

    const/4 v9, 0x1

    aget-object v9, v5, v9

    const/4 v10, 0x2

    aget-object v5, v5, v10

    const/4 v10, 0x0

    invoke-direct {v8, v9, v5, v10}, Lcom/estrongs/android/pop/view/utils/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    const/4 v6, 0x4

    :try_start_3
    array-length v7, v5

    if-ne v6, v7, :cond_2

    sget-object v6, Lcom/estrongs/android/pop/view/utils/n;->D:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    new-instance v8, Lcom/estrongs/android/pop/view/utils/u;

    const/4 v9, 0x1

    aget-object v9, v5, v9

    const/4 v10, 0x2

    aget-object v10, v5, v10

    const/4 v11, 0x3

    aget-object v5, v5, v11

    invoke-direct {v8, v9, v10, v5}, Lcom/estrongs/android/pop/view/utils/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v0, v1

    goto/16 :goto_0
.end method

.method private g(Lcom/estrongs/android/pop/view/utils/v;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p1, Lcom/estrongs/android/pop/view/utils/v;->w:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->m()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    const-string v3, "market://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->C:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->C:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private h(Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/v;)I

    move-result v0

    iput v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/v;)I

    move-result v0

    iput v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput v6, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput v6, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iput v6, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/v;)I

    move-result v0

    iput v0, p1, Lcom/estrongs/android/pop/view/utils/v;->v:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static i()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    sget v3, Lcom/estrongs/android/pop/view/utils/n;->o:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/bk;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput v0, Lcom/estrongs/android/pop/view/utils/n;->o:I

    :cond_0
    sget v0, Lcom/estrongs/android/pop/view/utils/n;->o:I

    if-ne v1, v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private declared-synchronized j()V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v0, v0, v1

    iget-object v3, v0, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/estrongs/android/pop/view/utils/v;->q:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v4, v4, v1

    iget-wide v4, v4, Lcom/estrongs/android/pop/view/utils/v;->t:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    const-string v0, "0"

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "######"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "######"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)J
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/pop/view/utils/n;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->E()J

    move-result-wide v0

    :goto_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/view/utils/n;->a:J

    goto :goto_0
.end method

.method public a(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/n;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/n;->u:Landroid/os/Handler;

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/n;->u:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/utils/n;->d()[Lcom/estrongs/android/pop/view/utils/v;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a([Lcom/estrongs/android/pop/view/utils/v;I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/utils/n;->g()V

    return-void
.end method

.method public a(Landroid/os/Message;J)V
    .locals 4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/n;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/n;->u:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/n;->u:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/n;->u:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/estrongs/android/pop/view/utils/v;I)V
    .locals 2

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/aa;

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iput p2, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/util/aa;->b()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/aa;

    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/estrongs/android/pop/view/utils/v;->u:J

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/utils/n;->j()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/estrongs/android/pop/esclasses/i;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/esclasses/i;->a:Ljava/lang/String;

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/i;->a:Ljava/lang/String;

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string v0, "zh"

    :cond_2
    :goto_0
    const-string v1, "http://www.estrongs.com/channel?"

    sget v2, Lcom/estrongs/android/pop/view/utils/n;->d:I

    if-nez v2, :cond_6

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&s=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/utils/n;->n:Z

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/android/pop/view/utils/n;->a:J

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/pop/view/utils/n;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/ad;->c(J)V

    new-instance v1, Lcom/estrongs/android/util/aa;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/view/utils/o;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/utils/o;-><init>(Lcom/estrongs/android/pop/view/utils/n;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/af;)V

    invoke-virtual {v1, v1}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/aa;->c()V

    return-void

    :cond_4
    const-string v0, "en"

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/estrongs/android/pop/view/utils/n;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/estrongs/android/pop/view/utils/n;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public a([Lcom/estrongs/android/pop/view/utils/v;I)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget-object v1, p1, v0

    iget-object v2, v1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/aa;

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :cond_1
    iput p2, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    :cond_2
    iget-object v2, v1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/aa;

    invoke-virtual {v2}, Lcom/estrongs/android/util/aa;->b()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/aa;

    :cond_3
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/estrongs/android/pop/view/utils/v;->u:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/utils/n;->j()V

    goto :goto_0
.end method

.method public b(Lcom/estrongs/android/pop/view/utils/v;)I
    .locals 5

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v3}, Lcom/estrongs/android/pop/FexApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v3, p1, Lcom/estrongs/android/pop/view/utils/v;->x:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, p1, Lcom/estrongs/android/pop/view/utils/v;->x:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/estrongs/android/pop/view/utils/v;->y:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    :cond_2
    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/estrongs/android/pop/view/utils/v;->y:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.estrongs.com/channel?iid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/v;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/util/aa;

    invoke-direct {v2, v1}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/estrongs/android/util/aa;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/content/Context;)[Lcom/estrongs/android/pop/view/utils/v;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/util/an;->b()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/estrongs/android/pop/view/utils/v;->z:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/estrongs/android/pop/view/utils/v;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/n;->B:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Z)V

    return-void
.end method

.method public c(Lcom/estrongs/android/pop/view/utils/v;)Z
    .locals 3

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/estrongs/android/util/aa;

    iget-object v1, p1, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/estrongs/android/util/aa;->d:Ljava/lang/Object;

    new-instance v1, Lcom/estrongs/android/pop/view/utils/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/utils/p;-><init>(Lcom/estrongs/android/pop/view/utils/n;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/af;)V

    iput-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/aa;

    iget v1, p1, Lcom/estrongs/android/pop/view/utils/v;->q:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/util/aa;->f()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/util/aa;->c()V

    goto :goto_1
.end method

.method public c(Landroid/content/Context;)[Lcom/estrongs/android/pop/view/utils/v;
    .locals 5

    const/4 v1, 0x0

    sget-boolean v0, Lcom/estrongs/android/pop/z;->g:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->m()Z

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    sget-object v4, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/estrongs/android/pop/view/utils/v;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_0

    sget-object v4, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/estrongs/android/pop/view/utils/v;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/estrongs/android/pop/view/utils/v;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public d(Lcom/estrongs/android/pop/view/utils/v;I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/view/utils/n;->b(Lcom/estrongs/android/pop/view/utils/v;I)V

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/view/utils/n;->f(Lcom/estrongs/android/pop/view/utils/v;I)V

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    goto :goto_0
.end method

.method public d()[Lcom/estrongs/android/pop/view/utils/v;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/utils/n;->q:Z

    if-eqz v2, :cond_3

    :cond_0
    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->e:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/view/utils/n;->d(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    new-array v0, v1, [Lcom/estrongs/android/pop/view/utils/v;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v2, :cond_1

    :cond_3
    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/utils/n;->q:Z

    move v0, v1

    move v2, v1

    :goto_1
    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/view/utils/n;->g(Lcom/estrongs/android/pop/view/utils/v;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v0, v0

    if-ne v2, v0, :cond_6

    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    goto :goto_0

    :cond_6
    new-array v2, v2, [Lcom/estrongs/android/pop/view/utils/v;

    move v0, v1

    :goto_2
    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v3, v3

    if-ge v1, v3, :cond_8

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/view/utils/n;->g(Lcom/estrongs/android/pop/view/utils/v;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move-object v0, v2

    goto :goto_0
.end method

.method public e(Lcom/estrongs/android/pop/view/utils/v;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/v;)V

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->a:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/utils/n;->f(Lcom/estrongs/android/pop/view/utils/v;)V

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public e(Lcom/estrongs/android/pop/view/utils/v;I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/view/utils/n;->c(Lcom/estrongs/android/pop/view/utils/v;I)V

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/view/utils/n;->g(Lcom/estrongs/android/pop/view/utils/v;I)V

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    goto :goto_0
.end method

.method public e()V
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/view/utils/n;->h(Lcom/estrongs/android/pop/view/utils/v;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/n;->q:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/utils/n;->a([Lcom/estrongs/android/pop/view/utils/v;I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/utils/n;->g()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/n;->q:Z

    :cond_0
    return-void
.end method

.method public f(Lcom/estrongs/android/pop/view/utils/v;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/util/aa;

    iget-object v1, p1, Lcom/estrongs/android/pop/view/utils/v;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/estrongs/android/util/aa;->d:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/icon_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/estrongs/android/pop/view/utils/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/utils/q;-><init>(Lcom/estrongs/android/pop/view/utils/n;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/af;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/aa;->c()V

    return-void
.end method

.method public f(Lcom/estrongs/android/pop/view/utils/v;I)V
    .locals 3

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->o:[Lcom/estrongs/android/util/aa;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/util/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/utils/n;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    iput-object p1, v0, Lcom/estrongs/android/util/aa;->d:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/aa;->e:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/view/utils/n;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/estrongs/android/pop/view/utils/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/utils/r;-><init>(Lcom/estrongs/android/pop/view/utils/n;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/af;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/aa;->c()V

    iget-object v1, p1, Lcom/estrongs/android/pop/view/utils/v;->o:[Lcom/estrongs/android/util/aa;

    aput-object v0, v1, p2

    goto :goto_0
.end method

.method public g()V
    .locals 3

    sget-object v0, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v1, Lcom/estrongs/android/pop/view/utils/n;->r:[Lcom/estrongs/android/pop/view/utils/v;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(Lcom/estrongs/android/pop/view/utils/v;I)V
    .locals 4

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/aa;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->d:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/util/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/utils/n;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/util/aa;-><init>(Ljava/lang/String;)V

    iput-object p1, v1, Lcom/estrongs/android/util/aa;->d:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/util/aa;->e:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/view/utils/n;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/estrongs/android/pop/view/utils/v;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v1}, Lcom/estrongs/android/util/aa;->a(Ljava/lang/Object;)V

    new-instance v0, Lcom/estrongs/android/pop/view/utils/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/utils/s;-><init>(Lcom/estrongs/android/pop/view/utils/n;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/af;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/aa;->c()V

    iget-object v0, p1, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/aa;

    aput-object v1, v0, p2

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/n;->n:Z

    return v0
.end method
