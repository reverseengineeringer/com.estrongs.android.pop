.class public Lcom/estrongs/android/view/aw;
.super Lcom/estrongs/android/view/as;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/estrongs/android/view/as",
        "<",
        "Lcom/estrongs/fs/h;",
        ">;"
    }
.end annotation


# static fields
.field protected static G:Ljava/text/DateFormat;

.field private static aA:[Lcom/estrongs/android/util/bf;

.field private static aB:Ljava/lang/Object;

.field private static aw:[Lcom/estrongs/android/util/bf;

.field private static ax:[Lcom/estrongs/android/util/bf;

.field private static ay:[Lcom/estrongs/android/util/bf;

.field private static az:[Lcom/estrongs/android/util/bf;


# instance fields
.field A:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field B:Lcom/estrongs/fs/b/aj;

.field C:Lcom/estrongs/fs/util/a/a;

.field D:Lcom/estrongs/fs/i;

.field E:Landroid/graphics/drawable/Drawable;

.field F:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field protected H:Lcom/estrongs/android/view/cb;

.field protected I:Lcom/estrongs/android/d/k;

.field protected J:Z

.field protected K:Z

.field protected L:Z

.field protected M:Z

.field protected N:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field protected O:Z

.field protected P:Lcom/estrongs/fs/i;

.field protected Q:I

.field protected R:I

.field protected S:I

.field protected final T:Landroid/os/Handler;

.field protected U:Lcom/estrongs/android/util/TypedMap;

.field protected V:Z

.field W:Landroid/os/FileObserver;

.field X:Z

.field protected Y:Lcom/estrongs/fs/a/e;

.field protected Z:Lcom/estrongs/android/a/d;

.field private a:Lcom/estrongs/android/pop/ad;

.field protected aa:Lcom/estrongs/android/pop/h;

.field ab:J

.field protected ac:I

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Ljava/lang/String;

.field private am:Landroid/view/View;

.field private an:Ljava/lang/String;

.field private ao:Lcom/estrongs/android/ui/theme/al;

.field private ap:J

.field private aq:Z

.field private ar:Z

.field private as:Lcom/estrongs/android/ui/dialog/ProgressDialog;

.field private at:F

.field private au:F

.field private av:F

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/android/util/TypedMap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ljava/lang/String;

.field protected v:Ljava/lang/String;

.field protected w:Lcom/estrongs/fs/h;

.field x:Lcom/estrongs/android/view/cc;

.field protected y:Lcom/estrongs/android/view/ca;

.field z:Lcom/estrongs/fs/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    sput-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    sput-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    sput-object v0, Lcom/estrongs/android/view/aw;->az:[Lcom/estrongs/android/util/bf;

    sput-object v0, Lcom/estrongs/android/view/aw;->aA:[Lcom/estrongs/android/util/bf;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/aw;->aB:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/view/aw;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;Z)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/as;-><init>(Landroid/app/Activity;)V

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->r:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->s:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->t:Z

    iput-object v2, p0, Lcom/estrongs/android/view/aw;->u:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    new-instance v0, Lcom/estrongs/fs/util/a/d;

    invoke-direct {v0, v4}, Lcom/estrongs/fs/util/a/d;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->F:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->J:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->K:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->L:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->M:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->b:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->O:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->c:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->d:Z

    iput-object v2, p0, Lcom/estrongs/android/view/aw;->P:Lcom/estrongs/fs/i;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->T:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->ai:Z

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    iput-boolean v4, p0, Lcom/estrongs/android/view/aw;->V:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->ak:Z

    iput-object v2, p0, Lcom/estrongs/android/view/aw;->al:Ljava/lang/String;

    const-string v0, "all"

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->an:Ljava/lang/String;

    iput-wide v6, p0, Lcom/estrongs/android/view/aw;->ap:J

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->aq:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->ar:Z

    iput-object v2, p0, Lcom/estrongs/android/view/aw;->as:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iput-object v2, p0, Lcom/estrongs/android/view/aw;->W:Landroid/os/FileObserver;

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->X:Z

    new-instance v0, Lcom/estrongs/android/view/ax;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/ax;-><init>(Lcom/estrongs/android/view/aw;)V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->Y:Lcom/estrongs/fs/a/e;

    new-instance v0, Lcom/estrongs/android/view/bh;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bh;-><init>(Lcom/estrongs/android/view/aw;)V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->Z:Lcom/estrongs/android/a/d;

    iput-wide v6, p0, Lcom/estrongs/android/view/aw;->ab:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/view/aw;->ac:I

    iput v3, p0, Lcom/estrongs/android/view/aw;->at:F

    iput v3, p0, Lcom/estrongs/android/view/aw;->au:F

    iput v3, p0, Lcom/estrongs/android/view/aw;->av:F

    iput-object p2, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    iput-boolean p4, p0, Lcom/estrongs/android/view/aw;->aj:Z

    invoke-static {p1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->z:Lcom/estrongs/fs/d;

    iput-object p3, p0, Lcom/estrongs/android/view/aw;->H:Lcom/estrongs/android/view/cb;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->E:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->a:Lcom/estrongs/android/pop/ad;

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->E()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/view/aw;->G:Ljava/text/DateFormat;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->ao:Lcom/estrongs/android/ui/theme/al;

    iput-object p3, p0, Lcom/estrongs/android/view/aw;->H:Lcom/estrongs/android/view/cb;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-direct {v0, p1}, Lcom/estrongs/android/ui/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->as:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->i()V

    return-void
.end method

.method private a(Landroid/widget/TextView;FLjava/lang/String;)F
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    if-eqz p1, :cond_0

    cmpg-float v0, p2, v4

    if-lez v0, :cond_0

    if-nez p3, :cond_3

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, v2, p2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eq p3, v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    cmpg-float v2, v0, v4

    if-gez v2, :cond_1

    :cond_2
    cmpg-float v2, v0, v4

    if-ltz v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/view/aw;F)F
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/aw;->at:F

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/aw;Landroid/widget/TextView;FLjava/lang/String;)F
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/aw;->a(Landroid/widget/TextView;FLjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/e;

    iget-object v0, v0, Lcom/estrongs/android/widget/e;->h:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/view/aw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->al:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/aw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/aw;->al:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/aw;Lcom/estrongs/fs/b/aj;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/b/aj;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/estrongs/fs/b/aj;ILjava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p1, Lcom/estrongs/fs/b/aj;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->aq:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/fs/b/aj;->d:Lcom/estrongs/android/pop/h;

    iget-object v3, p1, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/estrongs/fs/b/aj;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, p0}, Lcom/estrongs/android/pop/h;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/estrongs/android/view/aw;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/aw;->aq:Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    :cond_1
    const-string v0, "pcsres://"

    iget-object v3, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    const-string v3, "usb://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->u()V

    :cond_3
    invoke-direct {p0, v2}, Lcom/estrongs/android/view/aw;->c(Z)Lcom/estrongs/fs/h;

    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/estrongs/android/view/aw;->ai:Z

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->ai:Z

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/view/aw;->H:Lcom/estrongs/android/view/cb;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->H:Lcom/estrongs/android/view/cb;

    invoke-interface {v1, p0, v0}, Lcom/estrongs/android/view/cb;->a(Lcom/estrongs/android/view/aw;Z)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->a:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->a:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/estrongs/android/util/bd;->m()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/view/bn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/bn;-><init>(Lcom/estrongs/android/view/aw;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/pop/ad;->b(Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->al:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_8
    return-void

    :cond_9
    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->aq:Z

    const/4 v0, 0x5

    if-ne p2, v0, :cond_b

    invoke-virtual {p1}, Lcom/estrongs/fs/b/aj;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-eq v0, v2, :cond_a

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->j()Lcom/estrongs/fs/h;

    move v0, v1

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->u()V

    move v0, v1

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/estrongs/fs/b/aj;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v3, v0, Lcom/estrongs/a/p;->a:I

    if-eq v3, v2, :cond_8

    const-string v3, "ALL_LOADED"

    iget-object v4, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->u()V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->b(Lcom/estrongs/fs/util/a/a;)V

    :cond_c
    :goto_2
    iget-object v0, p1, Lcom/estrongs/fs/b/aj;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->F:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v0, :cond_10

    iget-object v4, p0, Lcom/estrongs/android/view/aw;->al:Ljava/lang/String;

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v4, v0}, Lcom/estrongs/android/widget/HeaderGridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->al:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->al:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v3}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->al:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->l(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v3, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/widget/HeaderGridView;->setSelected(Z)V

    iget-object v3, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/widget/HeaderGridView;->setSelection(I)V

    iget-object v3, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/widget/HeaderGridView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v4, Lcom/estrongs/android/view/bm;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/view/bm;-><init>(Lcom/estrongs/android/view/aw;I)V

    invoke-virtual {v3, v4}, Lcom/estrongs/android/widget/HeaderGridView;->post(Ljava/lang/Runnable;)Z

    :cond_e
    move v0, v2

    goto/16 :goto_0

    :cond_f
    iget-object v3, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_c

    iget-object v0, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/b/aj;Ljava/util/List;)V

    goto :goto_2

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setSelection(I)V

    goto :goto_3

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/adb/c;->i(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/aw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/aw;->ar:Z

    return p1
.end method

.method public static ae()V
    .locals 2

    sget-object v1, Lcom/estrongs/android/view/aw;->aB:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/aw;->aA:[Lcom/estrongs/android/util/bf;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/aw;->az:[Lcom/estrongs/android/util/bf;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/aw;F)F
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/aw;->au:F

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/view/aw;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/aw;->p()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/aw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/aw;->ai:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/view/aw;)F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/aw;->at:F

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/aw;F)F
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/aw;->av:F

    return p1
.end method

.method private c(Z)Lcom/estrongs/fs/h;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/estrongs/android/view/aw;->ak:Z

    iput-boolean v5, p0, Lcom/estrongs/android/view/aw;->M:Z

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    move-object v1, v0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v5, p0, Lcom/estrongs/android/view/aw;->ar:Z

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-nez v0, :cond_3

    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :cond_2
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/view/aw;)F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/aw;->au:F

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/view/aw;)F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/aw;->av:F

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/view/aw;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ao:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/view/aw;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->c:Z

    return v0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->H:Lcom/estrongs/android/view/cb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->H:Lcom/estrongs/android/view/cb;

    invoke-interface {v0}, Lcom/estrongs/android/view/cb;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->V()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->V:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->X()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->m(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/aw;->ai:Z

    goto :goto_0
.end method

.method private q()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/view/aw;->ac:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/aw;->ac:I

    :cond_0
    return-void
.end method


# virtual methods
.method public E()Lcom/estrongs/android/util/TypedMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    return-object v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->d:Z

    return v0
.end method

.method public G()V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public H()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/view/aw;->O:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v2

    if-ne v2, p0, :cond_3

    iget-boolean v2, p0, Lcom/estrongs/android/view/aw;->O:Z

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public I()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->aj:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->Y:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->b(Lcom/estrongs/fs/a/e;)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->Y:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/a/e;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/aw;->O:Z

    :cond_0
    return-void
.end method

.method protected J()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v1, Lcom/estrongs/android/view/by;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/by;-><init>(Lcom/estrongs/android/view/aw;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public K()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/view/bj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bj;-><init>(Lcom/estrongs/android/view/aw;)V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    return-void
.end method

.method public L()Lcom/estrongs/fs/util/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    return-object v0
.end method

.method public M()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/util/a/d;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/util/a/f;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/util/a/e;

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/util/a/c;

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method public N()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/util/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public O()Z
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public P()I
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Q()Lcom/estrongs/fs/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->z:Lcom/estrongs/fs/d;

    return-object v0
.end method

.method public R()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->B:Lcom/estrongs/fs/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->B:Lcom/estrongs/fs/b/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/aj;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    invoke-virtual {v0}, Lcom/estrongs/android/d/k;->d()V

    :cond_1
    return-void
.end method

.method protected S()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public T()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->p:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public U()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    invoke-virtual {v0}, Lcom/estrongs/android/d/k;->b()V

    :cond_0
    return-void
.end method

.method public V()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->O:Z

    return v0
.end method

.method protected W()Lcom/estrongs/android/view/bu;
    .locals 4

    new-instance v0, Lcom/estrongs/android/view/bu;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bu;-><init>(Lcom/estrongs/android/view/aw;)V

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, v0, Lcom/estrongs/android/view/bu;->b:Landroid/os/ConditionVariable;

    new-instance v1, Lcom/estrongs/fs/b/aj;

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->z:Lcom/estrongs/fs/d;

    iget-object v3, p0, Lcom/estrongs/android/view/aw;->aa:Lcom/estrongs/android/pop/h;

    invoke-direct {v1, v2, v3}, Lcom/estrongs/fs/b/aj;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/android/pop/h;)V

    new-instance v2, Lcom/estrongs/android/view/bo;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/bo;-><init>(Lcom/estrongs/android/view/aw;Lcom/estrongs/android/view/bu;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/aj;->a(Lcom/estrongs/fs/b/ak;)V

    new-instance v2, Lcom/estrongs/android/view/bq;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/bq;-><init>(Lcom/estrongs/android/view/aw;Lcom/estrongs/android/view/bu;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/aj;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    new-instance v2, Lcom/estrongs/android/view/bc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/view/bc;-><init>(Lcom/estrongs/android/view/aw;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/aj;->addProgressListener(Lcom/estrongs/a/a/l;)V

    iput-object v1, v0, Lcom/estrongs/android/view/bu;->a:Lcom/estrongs/fs/b/aj;

    return-object v0
.end method

.method protected X()I
    .locals 1

    const v0, 0x7f0b0072

    return v0
.end method

.method public Y()Lcom/estrongs/android/d/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    return-object v0
.end method

.method protected Z()V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->o()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    invoke-static {v0, v1}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/HeaderGridView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/HeaderGridView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->am:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f0a00fb

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->k(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->am:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->am:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->am:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->am:Landroid/view/View;

    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->am:Landroid/view/View;

    const v1, 0x7f0a00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0364

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v1, Lcom/estrongs/android/view/bg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/bg;-><init>(Lcom/estrongs/android/view/aw;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->am:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->am:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->am:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/view/aw;->k:I

    invoke-super {p0, p1}, Lcom/estrongs/android/view/as;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/ac;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/view/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->b(Z)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/view/aw;->ap:J

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/drag/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/aw;->o:Lcom/estrongs/android/ui/drag/d;

    return-void
.end method

.method public a(Lcom/estrongs/android/view/ca;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/aw;->y:Lcom/estrongs/android/view/ca;

    return-void
.end method

.method public a(Lcom/estrongs/android/view/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/aw;->x:Lcom/estrongs/android/view/cc;

    return-void
.end method

.method protected a(Lcom/estrongs/android/widget/e;I)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/estrongs/fs/b/aj;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/b/aj;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const v3, 0x7f0b01f1

    const/16 v1, 0xc8

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->B:Lcom/estrongs/fs/b/aj;

    invoke-static {v0, p1}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->u()V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/aw;->c:Z

    invoke-virtual {p0, p2}, Lcom/estrongs/android/view/aw;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aV(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b019d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->f(I)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->b(Ljava/util/List;)V

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/estrongs/android/ui/c/b/l;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/view/be;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/be;-><init>(Lcom/estrongs/android/view/aw;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->ar:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/HeaderGridView;->requestFocus()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/aw;->ar:Z

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v1, Lcom/estrongs/android/view/bf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/bf;-><init>(Lcom/estrongs/android/view/aw;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0b0575

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->f(I)V

    goto :goto_1

    :cond_4
    const v0, 0x7f0b01f3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->f(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->az(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0b0526

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->f(I)V

    goto :goto_1

    :cond_7
    const-string v0, "/files"

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v1, v2}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0b0527

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->f(I)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/aw;->f(I)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/estrongs/fs/impl/l/a;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->t()V

    goto/16 :goto_1

    :cond_a
    const v0, 0x7f0b0437

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->f(I)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "pcsres://"

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f0b0562

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->f(I)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const v0, 0x7f0b01f2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->f(I)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/aw;->f(I)V

    goto/16 :goto_1

    :cond_e
    if-ge v0, v1, :cond_f

    :goto_4
    iput v0, p0, Lcom/estrongs/android/view/aw;->R:I

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->b(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_f
    move v0, v1

    goto :goto_4

    :cond_10
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/j/b;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/fs/impl/j/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_3
.end method

.method public a(Lcom/estrongs/fs/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/estrongs/android/pop/z;->n:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->W:Landroid/os/FileObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->W:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v5, p0, Lcom/estrongs/android/view/aw;->W:Landroid/os/FileObserver;

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->M:Z

    if-nez v0, :cond_6

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0, v2}, Lcom/estrongs/android/util/TypedMap;-><init>(Lcom/estrongs/android/util/TypedMap;)V

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0}, Lcom/estrongs/android/util/TypedMap;->clear()V

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/util/TypedMap;->putAll(Ljava/util/Map;)V

    :cond_7
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->R()V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->F:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v2}, Lcom/estrongs/android/widget/HeaderGridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iput-object p1, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "es_recycle_content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "recycle://"

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    const-string v0, "recycle://"

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/estrongs/android/view/bz;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/view/bz;-><init>(Lcom/estrongs/android/view/aw;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->W:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->W:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    :cond_9
    iput-boolean v4, p0, Lcom/estrongs/android/view/aw;->V:Z

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "back"

    iget-boolean v2, p0, Lcom/estrongs/android/view/aw;->M:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->M:Z

    if-nez v0, :cond_c

    invoke-virtual {p0, v4}, Lcom/estrongs/android/view/aw;->b(Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->ak:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->F:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/aw;->ak:Z

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->F:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v2}, Lcom/estrongs/android/widget/HeaderGridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->g()V

    goto/16 :goto_0
.end method

.method public a(Lcom/estrongs/fs/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/aw;->P:Lcom/estrongs/fs/i;

    return-void
.end method

.method public a(Lcom/estrongs/fs/util/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/view/aw;->a(Ljava/util/List;Lcom/estrongs/fs/util/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    .locals 1

    invoke-static {p1}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method protected a(Ljava/util/List;Lcom/estrongs/fs/util/a/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/util/a/a;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Comparison method violates its general contract!"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0
.end method

.method public a(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/aw;->J:Z

    iput-boolean p2, p0, Lcom/estrongs/android/view/aw;->K:Z

    return-void
.end method

.method protected a(Lcom/estrongs/android/d/m;)Z
    .locals 2

    iget-boolean v0, p1, Lcom/estrongs/android/d/m;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/d/m;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    iget-object v1, p1, Lcom/estrongs/android/d/m;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->B:Lcom/estrongs/fs/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->B:Lcom/estrongs/fs/b/aj;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/aj;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    invoke-virtual {v0}, Lcom/estrongs/android/d/k;->d()V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    invoke-virtual {v0}, Lcom/estrongs/android/d/k;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->I:Lcom/estrongs/android/d/k;

    :cond_1
    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->O:Z

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->aj:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->Y:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->b(Lcom/estrongs/fs/a/e;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->W:Landroid/os/FileObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->W:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    :cond_3
    return-void
.end method

.method public aa()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "updateMediaStore"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/aw;->b(Z)V

    return-void
.end method

.method public ab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->an:Ljava/lang/String;

    return-object v0
.end method

.method public ac()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/view/aw;->ap:J

    return-wide v0
.end method

.method public ad()[Lcom/estrongs/android/util/bf;
    .locals 7

    const/4 v2, 0x0

    sget-object v3, Lcom/estrongs/android/view/aw;->aB:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/util/am;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v4, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-boolean v1, Lcom/estrongs/android/pop/z;->n:Z

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    new-array v0, v1, [Lcom/estrongs/android/util/bf;

    sput-object v0, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_1

    sget-object v5, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    new-instance v6, Lcom/estrongs/android/util/bf;

    invoke-direct {v6}, Lcom/estrongs/android/util/bf;-><init>()V

    aput-object v6, v5, v0

    sget-object v5, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/estrongs/android/util/bf;->f:Z

    sget-object v5, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/estrongs/android/util/bf;->h:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-boolean v0, Lcom/estrongs/android/pop/z;->n:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "/"

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v5, 0x7f0b0395

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const v1, 0x7f0200c1

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    sget-object v0, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/util/bf;->h:Z

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    add-int/lit8 v0, v2, 0x1

    sget-boolean v1, Lcom/estrongs/android/pop/z;->n:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    sget-object v0, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    aget-object v5, v0, v1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    aget-object v5, v0, v1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v1

    const v1, 0x7f0200c2

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/estrongs/android/view/aw;->aw:[Lcom/estrongs/android/util/bf;

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v0

    goto/16 :goto_0
.end method

.method public af()[Lcom/estrongs/android/util/bf;
    .locals 11

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    new-array v3, v1, [Ljava/lang/String;

    array-length v1, v0

    new-array v4, v1, [I

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/r;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    const-string v6, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    const-string v6, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/estrongs/android/util/am;->bF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/files"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const v5, 0x7f0200b2

    aput v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/pictures"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v10

    const v5, 0x7f0200c0

    aput v5, v4, v10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/documents"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    const v5, 0x7f0200b6

    aput v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/music"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    const v5, 0x7f0200ba

    aput v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/videos"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    const v5, 0x7f0200c7

    aput v5, v4, v9

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/apps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const v6, 0x7f0200b3

    aput v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/others"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const v6, 0x7f0200bc

    aput v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/files/apps/Downloads/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x7

    const v5, 0x7f0200b7

    aput v5, v4, v1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/c/b/l;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/c/b/l;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/c/b/s;

    move-result-object v1

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Lcom/estrongs/android/ui/c/b/s;->b:J

    invoke-static {v8, v9}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Lcom/estrongs/android/ui/c/b/s;->c:J

    invoke-static {v8, v9}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    array-length v1, v0

    new-array v1, v1, [Lcom/estrongs/android/util/bf;

    sput-object v1, Lcom/estrongs/android/view/aw;->az:[Lcom/estrongs/android/util/bf;

    move v1, v2

    :goto_1
    sget-object v2, Lcom/estrongs/android/view/aw;->az:[Lcom/estrongs/android/util/bf;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/estrongs/android/view/aw;->az:[Lcom/estrongs/android/util/bf;

    new-instance v5, Lcom/estrongs/android/util/bf;

    invoke-direct {v5}, Lcom/estrongs/android/util/bf;-><init>()V

    aput-object v5, v2, v1

    sget-object v2, Lcom/estrongs/android/view/aw;->az:[Lcom/estrongs/android/util/bf;

    aget-object v2, v2, v1

    aget-object v5, v3, v1

    iput-object v5, v2, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/view/aw;->az:[Lcom/estrongs/android/util/bf;

    aget-object v2, v2, v1

    aget-object v5, v0, v1

    iput-object v5, v2, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/view/aw;->az:[Lcom/estrongs/android/util/bf;

    aget-object v2, v2, v1

    aget v5, v4, v1

    iput v5, v2, Lcom/estrongs/android/util/bf;->j:I

    sget-object v2, Lcom/estrongs/android/view/aw;->az:[Lcom/estrongs/android/util/bf;

    aget-object v2, v2, v1

    iput-boolean v10, v2, Lcom/estrongs/android/util/bf;->f:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/estrongs/android/view/aw;->az:[Lcom/estrongs/android/util/bf;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public ag()[Lcom/estrongs/android/util/bf;
    .locals 8

    const/4 v1, 0x6

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x4

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    new-array v0, v0, [Lcom/estrongs/android/util/bf;

    sput-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    move v0, v2

    :goto_1
    sget-object v3, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    new-instance v4, Lcom/estrongs/android/util/bf;

    invoke-direct {v4}, Lcom/estrongs/android/util/bf;-><init>()V

    aput-object v4, v3, v0

    sget-object v3, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v3, v3, v0

    iput-boolean v7, v3, Lcom/estrongs/android/util/bf;->f:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v2

    const-string v3, "app://user"

    iput-object v3, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v3, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v4, 0x7f0b0164

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v2

    const v2, 0x7f0200c6

    iput v2, v0, Lcom/estrongs/android/util/bf;->j:I

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v7

    const-string v2, "app://system"

    iput-object v2, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v2, v0, v7

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0163

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v7

    const v2, 0x7f0200c4

    iput v2, v0, Lcom/estrongs/android/util/bf;->j:I

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const-string v2, "app://phone"

    iput-object v2, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v3, 0x7f0b036e

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const v2, 0x7f0200bd

    iput v2, v0, Lcom/estrongs/android/util/bf;->j:I

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const-string v2, "app://sdcard"

    iput-object v2, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v3, 0x7f0b036f

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const v2, 0x7f0200c3

    iput v2, v0, Lcom/estrongs/android/util/bf;->j:I

    invoke-static {}, Lcom/estrongs/android/pop/utils/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v5

    const-string v2, "app://update"

    iput-object v2, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v2, v0, v5

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0534

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v5

    const v2, 0x7f0200c5

    iput v2, v0, Lcom/estrongs/android/util/bf;->j:I

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v6

    const-string v2, "app://backuped"

    iput-object v2, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v2, v0, v6

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0168

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v6

    const v2, 0x7f0200b4

    iput v2, v0, Lcom/estrongs/android/util/bf;->j:I

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v1

    const-string v2, "apk://"

    iput-object v2, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0370

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v1

    const v1, 0x7f0200b3

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    :cond_2
    :goto_2
    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    return-object v0

    :cond_3
    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v5

    const-string v1, "app://backuped"

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v1, v0, v5

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0168

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v5

    const v1, 0x7f0200b4

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v6

    const-string v1, "apk://"

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0370

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ax:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v6

    const v1, 0x7f0200b3

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    goto :goto_2
.end method

.method public ah()[Lcom/estrongs/android/util/bf;
    .locals 9

    const/4 v5, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aF(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v4

    :goto_1
    if-ge v0, v5, :cond_2

    new-instance v1, Lcom/estrongs/android/util/bf;

    invoke-direct {v1}, Lcom/estrongs/android/util/bf;-><init>()V

    iput-boolean v3, v1, Lcom/estrongs/android/util/bf;->f:Z

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    const-string v1, "gallery://local/buckets/"

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v6, 0x7f0b0056

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    const v1, 0x7f0200b9

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    const-string v1, "SP://"

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v6, 0x7f0b02d4

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    const v1, 0x7f0200bb

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ar(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aL(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    const-string v1, "mine"

    invoke-static {v2, v1}, Lcom/estrongs/android/util/am;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v3, 0x7f0b02d5

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    const v1, 0x7f0200c0

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    const-string v1, "hot"

    invoke-static {v2, v1}, Lcom/estrongs/android/util/am;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v3, 0x7f0b02d6

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    const v1, 0x7f0200bf

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aq(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    const-string v1, "album"

    invoke-static {v2, v1}, Lcom/estrongs/android/util/am;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v2, 0x7f0b02d7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    const v1, 0x7f0200be

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    move v1, v5

    :goto_3
    new-array v2, v1, [Lcom/estrongs/android/util/bf;

    :goto_4
    if-ge v4, v1, :cond_3

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bf;

    aput-object v0, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    return-object v2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    move-object v2, v0

    goto/16 :goto_2

    :cond_6
    move v1, v6

    goto :goto_3
.end method

.method public ai()[Lcom/estrongs/android/util/bf;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/view/aw;->aA:[Lcom/estrongs/android/util/bf;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/am;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/estrongs/android/util/bf;

    sput-object v1, Lcom/estrongs/android/view/aw;->aA:[Lcom/estrongs/android/util/bf;

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/estrongs/android/view/aw;->aA:[Lcom/estrongs/android/util/bf;

    new-instance v3, Lcom/estrongs/android/util/bf;

    invoke-direct {v3}, Lcom/estrongs/android/util/bf;-><init>()V

    aput-object v3, v0, v1

    sget-object v0, Lcom/estrongs/android/view/aw;->aA:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v1

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/estrongs/android/util/bf;->f:Z

    sget-object v0, Lcom/estrongs/android/view/aw;->aA:[Lcom/estrongs/android/util/bf;

    aget-object v3, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "du://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->aA:[Lcom/estrongs/android/util/bf;

    aget-object v3, v0, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->aA:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v1

    const v3, 0x7f0200c2

    iput v3, v0, Lcom/estrongs/android/util/bf;->j:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/view/aw;->aA:[Lcom/estrongs/android/util/bf;

    return-object v0
.end method

.method public aj()[Lcom/estrongs/android/util/bf;
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/estrongs/android/util/bf;

    invoke-direct {v2}, Lcom/estrongs/android/util/bf;-><init>()V

    iput-boolean v6, v2, Lcom/estrongs/android/util/bf;->f:Z

    iput-boolean v6, v2, Lcom/estrongs/android/util/bf;->g:Z

    const v3, 0x7f020239

    iput v3, v2, Lcom/estrongs/android/util/bf;->j:I

    iget-object v3, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/am;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    iput-object v1, v2, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/estrongs/fs/impl/j/b;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/fs/impl/j/f;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/j/f;->a()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/j/f;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/j/f;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    :cond_3
    new-array v0, v6, [Lcom/estrongs/android/util/bf;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/estrongs/fs/impl/j/f;->b()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v4, 0x7f0b013c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/j/f;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public ak()[Lcom/estrongs/android/util/bf;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->ag()[Lcom/estrongs/android/util/bf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/am;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->ah()[Lcom/estrongs/android/util/bf;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x17

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->af()[Lcom/estrongs/android/util/bf;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->ai()[Lcom/estrongs/android/util/bf;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->aj()[Lcom/estrongs/android/util/bf;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->n(Ljava/lang/String;)[Lcom/estrongs/android/util/bf;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->ad()[Lcom/estrongs/android/util/bf;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lcom/estrongs/fs/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    return-object v0
.end method

.method protected b(Lcom/estrongs/android/d/m;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/d/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/d/m;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/d/f;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/estrongs/android/d/m;->f:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/estrongs/android/d/m;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p1, Lcom/estrongs/android/d/m;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/d/m;->d:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/d/f;->f(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/d/m;->e:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/d/f;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->c(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p1, Lcom/estrongs/android/d/m;->f:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->isLink()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p1, Lcom/estrongs/android/d/m;->f:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public b(Lcom/estrongs/fs/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/aw;->D:Lcom/estrongs/fs/i;

    return-void
.end method

.method public b(Lcom/estrongs/fs/util/a/a;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/view/aw;->a(Ljava/util/List;Lcom/estrongs/fs/util/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/utils/aa;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/view/aw;->q()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->R()V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->y:Lcom/estrongs/android/view/ca;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->y:Lcom/estrongs/android/view/ca;

    iget-object v3, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v9}, Lcom/estrongs/android/view/ca;->a(Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->W()Lcom/estrongs/android/view/bu;

    move-result-object v3

    iget-object v0, v3, Lcom/estrongs/android/view/bu;->a:Lcom/estrongs/fs/b/aj;

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->B:Lcom/estrongs/fs/b/aj;

    new-instance v4, Lcom/estrongs/fs/b;

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->D:Lcom/estrongs/fs/i;

    invoke-direct {v4, v0}, Lcom/estrongs/fs/b;-><init>(Lcom/estrongs/fs/i;)V

    new-instance v0, Lcom/estrongs/android/view/aj;

    iget-object v5, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lcom/estrongs/android/view/aj;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Lcom/estrongs/fs/b;->a(Lcom/estrongs/fs/i;)V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->am:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->am:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->am:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->S()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aX(Ljava/lang/String;)Z

    move-result v5

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v6

    iget v0, p0, Lcom/estrongs/android/view/aw;->k:I

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v7, "countChildren"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/estrongs/android/view/aw;->B:Lcom/estrongs/fs/b/aj;

    const/4 v0, 0x5

    new-array v8, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    aput-object v0, v8, v2

    if-nez v5, :cond_6

    if-eqz v6, :cond_b

    :cond_6
    move-object v0, v1

    :goto_2
    aput-object v0, v8, v9

    const/4 v0, 0x2

    aput-object v4, v8, v0

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v8, v0

    const/4 v0, 0x4

    iget-object v4, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    aput-object v4, v8, v0

    invoke-virtual {v7, v8}, Lcom/estrongs/fs/b/aj;->a([Ljava/lang/Object;)Z

    move-result v4

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v1

    :cond_7
    if-nez v4, :cond_9

    if-nez v5, :cond_9

    if-nez v6, :cond_9

    if-eqz v1, :cond_9

    if-ne v1, p0, :cond_9

    iget-object v0, v3, Lcom/estrongs/android/view/bu;->b:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v1, v3, Lcom/estrongs/android/view/bu;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    :cond_8
    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->X()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->m(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->c(Ljava/lang/String;)V

    :cond_9
    :goto_3
    iput v2, p0, Lcom/estrongs/android/view/aw;->Q:I

    iget v0, p0, Lcom/estrongs/android/view/aw;->S:I

    if-lez v0, :cond_e

    iget v0, p0, Lcom/estrongs/android/view/aw;->S:I

    :goto_4
    iput v0, p0, Lcom/estrongs/android/view/aw;->R:I

    iput v2, p0, Lcom/estrongs/android/view/aw;->S:I

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->M:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/estrongs/android/view/aw;->M:Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v7, "countChildren"

    invoke-virtual {v0, v7}, Lcom/estrongs/android/util/TypedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->U:Lcom/estrongs/android/util/TypedMap;

    const-string v7, "countChildren"

    invoke-virtual {v0, v7}, Lcom/estrongs/android/util/TypedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->C:Lcom/estrongs/fs/util/a/a;

    goto :goto_2

    :cond_c
    iput-boolean v2, p0, Lcom/estrongs/android/view/aw;->V:Z

    iget-object v0, v3, Lcom/estrongs/android/view/bu;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->T:Landroid/os/Handler;

    iget-object v1, v3, Lcom/estrongs/android/view/bu;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->T:Landroid/os/Handler;

    iget-object v1, v3, Lcom/estrongs/android/view/bu;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v3, Lcom/estrongs/android/view/bu;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, v3, Lcom/estrongs/android/view/bu;->e:Ljava/util/List;

    if-eqz v0, :cond_d

    move v1, v2

    :goto_5
    iget-object v0, v3, Lcom/estrongs/android/view/bu;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    iget-object v4, p0, Lcom/estrongs/android/view/aw;->T:Landroid/os/Handler;

    iget-object v0, v3, Lcom/estrongs/android/view/bu;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v3, Lcom/estrongs/android/view/bu;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_d
    iget-object v0, v3, Lcom/estrongs/android/view/bu;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :cond_e
    const/16 v0, 0xc8

    goto :goto_4
.end method

.method public b_()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->Y()Lcom/estrongs/android/d/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->Y()Lcom/estrongs/android/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/d/k;->a()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/aw;->X:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->P:Lcom/estrongs/fs/i;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->P:Lcom/estrongs/fs/i;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v2, v0}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/aw;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x20

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public f()Lcom/estrongs/fs/h;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/aw;->c(Z)Lcom/estrongs/fs/h;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v2, Lcom/estrongs/android/view/bl;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/view/bl;-><init>(Lcom/estrongs/android/view/aw;I)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/HeaderGridView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/aw;->d:Z

    return-void
.end method

.method public g(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/aw;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->L:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->b(Z)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/aw;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/HeaderGridView;->setFastScrollEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/aw;->r:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/aw;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/aw;->L:Z

    return-void
.end method

.method protected i()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/view/bv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bv;-><init>(Lcom/estrongs/android/view/aw;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/widget/d;)V

    new-instance v0, Lcom/estrongs/android/view/bi;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bi;-><init>(Lcom/estrongs/android/view/aw;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setSelector(I)V

    new-instance v0, Lcom/estrongs/android/pop/h;

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->Z:Lcom/estrongs/android/a/d;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/h;-><init>(Landroid/app/Activity;Lcom/estrongs/android/a/d;)V

    iput-object v0, p0, Lcom/estrongs/android/view/aw;->aa:Lcom/estrongs/android/pop/h;

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->J()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->K()V

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->aj:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->Y:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/a/e;)V

    :cond_0
    return-void
.end method

.method protected i(I)V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/view/aw;->Q:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/view/aw;->R:I

    if-ge p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/view/aw;->Q:I

    if-ge p1, v0, :cond_2

    iput p1, p0, Lcom/estrongs/android/view/aw;->Q:I

    iget v0, p0, Lcom/estrongs/android/view/aw;->S:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/view/aw;->S:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/estrongs/android/view/aw;->R:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/view/aw;->R:I

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/estrongs/android/view/aw;->R:I

    iget v0, p0, Lcom/estrongs/android/view/aw;->S:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/view/aw;->R:I

    iget v1, p0, Lcom/estrongs/android/view/aw;->S:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/view/aw;->Q:I

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/aw;->s:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/aw;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public i(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/aw;->a(ZZ)V

    return-void
.end method

.method public j()Lcom/estrongs/fs/h;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/aw;->ak:Z

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->N:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->f()Lcom/estrongs/fs/h;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->w:Lcom/estrongs/fs/h;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_6
    sget-boolean v2, Lcom/estrongs/android/pop/z;->n:Z

    if-eqz v2, :cond_7

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, v1

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lcom/estrongs/android/util/am;->aw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "pcs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string v0, "net://"

    :cond_9
    new-instance v1, Lcom/estrongs/fs/n;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/fs/h;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/aw;->ac:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/aw;->t:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/aw;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method protected k(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->W(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->Y(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->aG(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/am;->aD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/view/aw;->v:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/am;->aB(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected l(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->A:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/estrongs/android/util/am;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public l()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->J:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->K:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->K:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/aw;->b(Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->J:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->K:Z

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->ai:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/view/aw;->V:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->s()V

    :cond_2
    iput-boolean v1, p0, Lcom/estrongs/android/view/aw;->X:Z

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/view/aw;->g()V

    goto :goto_0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/aw;->an:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)[Lcom/estrongs/android/util/bf;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    if-nez v0, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/estrongs/android/util/bf;

    sput-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    move v0, v1

    :goto_0
    sget-object v2, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    new-instance v3, Lcom/estrongs/android/util/bf;

    invoke-direct {v3}, Lcom/estrongs/android/util/bf;-><init>()V

    aput-object v3, v2, v0

    sget-object v2, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lcom/estrongs/android/util/bf;->f:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v1

    invoke-static {p1, v1}, Lcom/estrongs/fs/impl/adb/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0164

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v1

    const v1, 0x7f0200c6

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v4

    invoke-static {p1, v4}, Lcom/estrongs/fs/impl/adb/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v1, v0, v4

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0163

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v4

    const v1, 0x7f0200c4

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v5

    invoke-static {p1, v5}, Lcom/estrongs/fs/impl/adb/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v1, v0, v5

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v2, 0x7f0b036e

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v5

    const v1, 0x7f0200bd

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v6

    invoke-static {p1, v6}, Lcom/estrongs/fs/impl/adb/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v2, 0x7f0b036f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v6

    const v1, 0x7f0200c3

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v7

    invoke-static {p1, v7}, Lcom/estrongs/fs/impl/adb/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/bf;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v1, v0, v7

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0370

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/bf;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    aget-object v0, v0, v7

    const v1, 0x7f0200b3

    iput v1, v0, Lcom/estrongs/android/util/bf;->j:I

    :cond_1
    sget-object v0, Lcom/estrongs/android/view/aw;->ay:[Lcom/estrongs/android/util/bf;

    return-object v0
.end method

.method public o()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->B:Lcom/estrongs/fs/b/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->B:Lcom/estrongs/fs/b/aj;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/aj;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->B:Lcom/estrongs/fs/b/aj;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/aj;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/as;->u()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/aw;->V:Z

    return-void
.end method
