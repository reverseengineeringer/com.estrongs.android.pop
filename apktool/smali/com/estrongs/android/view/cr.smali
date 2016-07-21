.class public Lcom/estrongs/android/view/cr;
.super Lcom/estrongs/android/view/cg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/estrongs/android/view/cg",
        "<",
        "Lcom/estrongs/fs/h;",
        ">;"
    }
.end annotation


# static fields
.field protected static N:Ljava/text/DateFormat;

.field private static aC:[Lcom/estrongs/android/util/bn;

.field private static aD:[Lcom/estrongs/android/util/bn;

.field private static aE:[Lcom/estrongs/android/util/bn;

.field private static aF:[Lcom/estrongs/android/util/bn;

.field private static aG:[Lcom/estrongs/android/util/bn;

.field private static aH:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public B:Ljava/lang/String;

.field protected C:Ljava/lang/String;

.field protected D:Lcom/estrongs/fs/h;

.field E:Lcom/estrongs/android/view/dx;

.field protected F:Lcom/estrongs/android/view/dv;

.field G:Lcom/estrongs/fs/d;

.field H:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field I:Lcom/estrongs/fs/b/al;

.field J:Lcom/estrongs/fs/util/a/a;

.field K:Lcom/estrongs/fs/i;

.field L:Landroid/graphics/drawable/Drawable;

.field M:Ljava/util/HashMap;
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

.field protected O:Lcom/estrongs/android/view/dw;

.field protected P:Z

.field protected Q:Z

.field protected R:Z

.field protected S:Z

.field protected T:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field protected U:Z

.field protected V:Lcom/estrongs/fs/i;

.field protected final W:Landroid/os/Handler;

.field protected X:Lcom/estrongs/android/util/TypedMap;

.field protected Y:Z

.field Z:Landroid/os/FileObserver;

.field private a:Lcom/estrongs/android/pop/ad;

.field private aA:F

.field private aB:F

.field private aI:Lcom/estrongs/android/widget/ControllableAppBarLayout;

.field private aJ:Landroid/view/View;

.field private aK:Landroid/widget/ProgressBar;

.field private aL:Landroid/widget/Button;

.field private aM:Landroid/view/View;

.field aa:Z

.field protected ab:Lcom/estrongs/android/ui/recycler/d;

.field protected ac:Lcom/estrongs/fs/a/e;

.field protected ad:Lcom/estrongs/android/d/d;

.field protected ae:Lcom/estrongs/android/pop/i;

.field protected af:I

.field private al:Z

.field private am:Z

.field private an:Ljava/lang/String;

.field private ao:Landroid/view/View;

.field private ap:Ljava/lang/String;

.field private aq:Lcom/estrongs/android/ui/theme/at;

.field private ar:J

.field private as:Z

.field private at:Z

.field private au:Lcom/estrongs/android/ui/dialog/ProgressDialog;

.field private av:Lcom/estrongs/android/ui/recycler/h;

.field private aw:Lcom/estrongs/android/ui/recycler/m;

.field private ax:Z

.field private ay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private az:F

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

.field private e:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    sput-object v0, Lcom/estrongs/android/view/cr;->aD:[Lcom/estrongs/android/util/bn;

    sput-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    sput-object v0, Lcom/estrongs/android/view/cr;->aF:[Lcom/estrongs/android/util/bn;

    sput-object v0, Lcom/estrongs/android/view/cr;->aG:[Lcom/estrongs/android/util/bn;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/cr;->aH:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/cg;-><init>(Landroid/app/Activity;)V

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->y:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->z:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->A:Z

    iput-object v3, p0, Lcom/estrongs/android/view/cr;->B:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    new-instance v0, Lcom/estrongs/fs/util/a/c;

    invoke-direct {v0, v2}, Lcom/estrongs/fs/util/a/c;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->M:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->P:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->Q:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->R:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->S:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->b:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->U:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->c:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->d:Z

    iput-object v3, p0, Lcom/estrongs/android/view/cr;->V:Lcom/estrongs/fs/i;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->W:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->e:Z

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->Y:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->am:Z

    iput-object v3, p0, Lcom/estrongs/android/view/cr;->an:Ljava/lang/String;

    const-string v0, "all"

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->ap:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/view/cr;->ar:J

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->as:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->at:Z

    iput-object v3, p0, Lcom/estrongs/android/view/cr;->au:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    iput-object v3, p0, Lcom/estrongs/android/view/cr;->Z:Landroid/os/FileObserver;

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->aa:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/cr;->ax:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->ay:Ljava/util/Map;

    new-instance v0, Lcom/estrongs/android/view/cs;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/cs;-><init>(Lcom/estrongs/android/view/cr;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->ac:Lcom/estrongs/fs/a/e;

    new-instance v0, Lcom/estrongs/android/view/dc;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/dc;-><init>(Lcom/estrongs/android/view/cr;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->ad:Lcom/estrongs/android/d/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/view/cr;->af:I

    iput v4, p0, Lcom/estrongs/android/view/cr;->az:F

    iput v4, p0, Lcom/estrongs/android/view/cr;->aA:F

    iput v4, p0, Lcom/estrongs/android/view/cr;->aB:F

    iput-object v3, p0, Lcom/estrongs/android/view/cr;->aI:Lcom/estrongs/android/widget/ControllableAppBarLayout;

    iput-object v3, p0, Lcom/estrongs/android/view/cr;->aJ:Landroid/view/View;

    iput-object p2, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    iput-boolean p4, p0, Lcom/estrongs/android/view/cr;->al:Z

    invoke-static {p1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->G:Lcom/estrongs/fs/d;

    iput-object p3, p0, Lcom/estrongs/android/view/cr;->O:Lcom/estrongs/android/view/dw;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->L:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->a:Lcom/estrongs/android/pop/ad;

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->F()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/view/cr;->N:Ljava/text/DateFormat;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->aq:Lcom/estrongs/android/ui/theme/at;

    iput-object p3, p0, Lcom/estrongs/android/view/cr;->O:Lcom/estrongs/android/view/dw;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-direct {v0, p1}, Lcom/estrongs/android/ui/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->au:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->i()V

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

.method static synthetic a(Lcom/estrongs/android/view/cr;F)F
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/cr;->az:F

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/cr;Landroid/widget/TextView;FLjava/lang/String;)F
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;->a(Landroid/widget/TextView;FLjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/ci;

    iget-object v0, v0, Lcom/estrongs/android/view/ci;->m:Ljava/lang/Object;

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

.method static synthetic a(Lcom/estrongs/android/view/cr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->an:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/cr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cr;->an:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/cr;Lcom/estrongs/fs/b/al;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/b/al;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/estrongs/fs/b/al;ILjava/lang/String;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/estrongs/fs/b/al;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->as:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/fs/b/al;->d:Lcom/estrongs/android/pop/i;

    iget-object v3, p1, Lcom/estrongs/fs/b/al;->b:Lcom/estrongs/fs/h;

    invoke-interface {v3}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/estrongs/fs/b/al;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, p0}, Lcom/estrongs/android/pop/i;->a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/estrongs/android/view/cr;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->as:Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    :cond_1
    const-string v0, "pcsres://"

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    const-string v3, "usb://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->J()V

    :cond_3
    invoke-direct {p0, v2}, Lcom/estrongs/android/view/cr;->c(Z)Lcom/estrongs/fs/h;

    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/estrongs/android/view/cr;->e:Z

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lcom/estrongs/android/view/cr;->e:Z

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->O:Lcom/estrongs/android/view/dw;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->O:Lcom/estrongs/android/view/dw;

    invoke-interface {v1, p0, v0}, Lcom/estrongs/android/view/dw;->a(Lcom/estrongs/android/view/cr;Z)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->a:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->a:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/estrongs/android/util/bk;->m()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/view/df;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/df;-><init>(Lcom/estrongs/android/view/cr;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->a:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/pop/ad;->b(Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->an:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_8
    return-void

    :cond_9
    iput-boolean v1, p0, Lcom/estrongs/android/view/cr;->as:Z

    const/4 v0, 0x5

    if-ne p2, v0, :cond_b

    invoke-virtual {p1}, Lcom/estrongs/fs/b/al;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-eq v0, v2, :cond_a

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->j()Lcom/estrongs/fs/h;

    move v0, v1

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->J()V

    move v0, v1

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/estrongs/fs/b/al;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v3, v0, Lcom/estrongs/a/p;->a:I

    if-eq v3, v2, :cond_8

    const-string v3, "ALL_LOADED"

    iget-object v4, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->J()V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->b(Lcom/estrongs/fs/util/a/a;)V

    :cond_c
    :goto_2
    iget-object v0, p1, Lcom/estrongs/fs/b/al;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->M:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v0, :cond_10

    iget-object v4, p0, Lcom/estrongs/android/view/cr;->an:Ljava/lang/String;

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/estrongs/android/view/cr;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/GridLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->an:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->an:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->an:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->n(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPosition(I)V

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/view/ck;->notifyItemInserted(I)V

    :cond_e
    move v0, v2

    goto/16 :goto_0

    :cond_f
    iget-object v3, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_c

    iget-object v0, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/b/al;Ljava/util/List;)V

    goto :goto_2

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_3

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/adb/c;->i(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/view/cr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/cr;->at:Z

    return p1
.end method

.method public static at()V
    .locals 2

    sget-object v1, Lcom/estrongs/android/view/cr;->aH:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/cr;->aG:[Lcom/estrongs/android/util/bn;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/cr;->aD:[Lcom/estrongs/android/util/bn;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/view/cr;->aF:[Lcom/estrongs/android/util/bn;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/cr;F)F
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/cr;->aA:F

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/view/cr;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/cr;->s()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

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

.method static synthetic b(Lcom/estrongs/android/view/cr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/cr;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/view/cr;)F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/cr;->az:F

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/cr;F)F
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/cr;->aB:F

    return p1
.end method

.method private c(Z)Lcom/estrongs/fs/h;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/estrongs/android/view/cr;->am:Z

    iput-boolean v5, p0, Lcom/estrongs/android/view/cr;->S:Z

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    move-object v1, v0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v5, p0, Lcom/estrongs/android/view/cr;->at:Z

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

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

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

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

.method static synthetic d(Lcom/estrongs/android/view/cr;)F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/cr;->aA:F

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/view/cr;)F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/cr;->aB:F

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/view/cr;)Lcom/estrongs/android/ui/theme/at;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aq:Lcom/estrongs/android/ui/theme/at;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/view/cr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->c:Z

    return v0
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->O:Lcom/estrongs/android/view/dw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->O:Lcom/estrongs/android/view/dw;

    invoke-interface {v0}, Lcom/estrongs/android/view/dw;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->al()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->Y:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->an()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->e:Z

    goto :goto_0
.end method

.method private t()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/view/cr;->af:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->i()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/view/cr;->af:I

    :cond_0
    return-void
.end method

.method private u()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/estrongs/android/view/fv;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/recycler/m;->a(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/z;->a()Lcom/estrongs/android/pop/app/analysis/z;

    move-result-object v0

    const-string v1, "sdcard_top_view"

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/pop/app/analysis/z;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/app/analysis/y;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/recycler/m;->a(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->av:Lcom/estrongs/android/ui/recycler/h;

    if-nez v0, :cond_4

    new-instance v0, Lcom/estrongs/android/ui/recycler/h;

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v3, v4, v1}, Lcom/estrongs/android/ui/recycler/h;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/estrongs/android/pop/app/analysis/y;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->av:Lcom/estrongs/android/ui/recycler/h;

    new-instance v0, Lcom/estrongs/android/ui/recycler/m;

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v0, v3}, Lcom/estrongs/android/ui/recycler/m;-><init>(Landroid/support/v7/widget/GridLayoutManager;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->g:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->av:Lcom/estrongs/android/ui/recycler/h;

    iget v3, p0, Lcom/estrongs/android/view/cr;->p:I

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/recycler/h;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->av:Lcom/estrongs/android/ui/recycler/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/h;->a(Lcom/estrongs/android/pop/app/analysis/y;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/recycler/m;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v3

    instance-of v0, v1, Lcom/estrongs/android/pop/app/analysis/aa;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/aa;->d()I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_5

    const-string v0, "A_sdtop_show_3"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v0, "analysis"

    const-string v4, "A_sdtop_show_3"

    invoke-virtual {v3, v0, v4}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "A_sdtop_show"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v0, "analysis"

    const-string v4, "A_sdtop_show"

    invoke-virtual {v3, v0, v4}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "A_sdtop_show_uv"

    invoke-virtual {v3, v0}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;)V

    :cond_6
    iget-object v3, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/estrongs/android/ui/recycler/m;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->av:Lcom/estrongs/android/ui/recycler/h;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method private v()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bs(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->U(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const v0, 0x7f0e0346

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->aL:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aL:Landroid/widget/Button;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aL:Landroid/widget/Button;

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aL:Landroid/widget/Button;

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aL:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0159

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aL:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/view/db;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/db;-><init>(Lcom/estrongs/android/view/cr;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0347

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->aK:Landroid/widget/ProgressBar;

    const v0, 0x7f0e0344

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->aM:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aM:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/cr;->j(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aM:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aM:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public J()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/cg;->J()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->Y:Z

    return-void
.end method

.method public V()Lcom/estrongs/android/util/TypedMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    return-object v0
.end method

.method public W()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->d:Z

    return v0
.end method

.method public X()V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

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

.method public Y()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/view/cr;->U:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v2

    if-ne v2, p0, :cond_3

    iget-boolean v2, p0, Lcom/estrongs/android/view/cr;->U:Z

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public Z()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->al:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ac:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->b(Lcom/estrongs/fs/a/e;)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ac:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/a/e;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->U:Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/view/cr;->p:I

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cg;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/ac;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/pop/view/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->b(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/view/cr;->u()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->aB()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aJ:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->az()V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/ui/recycler/d;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/view/cr;->u()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->aB()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->e()V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/ui/drag/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cr;->t:Lcom/estrongs/android/ui/drag/d;

    return-void
.end method

.method protected a(Lcom/estrongs/android/view/ci;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/estrongs/android/view/dv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cr;->F:Lcom/estrongs/android/view/dv;

    return-void
.end method

.method public a(Lcom/estrongs/android/view/dx;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cr;->E:Lcom/estrongs/android/view/dx;

    return-void
.end method

.method protected a(Lcom/estrongs/fs/b/al;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/b/al;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const v3, 0x7f080316

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->I:Lcom/estrongs/fs/b/al;

    invoke-static {v0, p1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->J()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->m_()V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->c:Z

    invoke-virtual {p0, p2}, Lcom/estrongs/android/view/cr;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f08039b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->a_(Ljava/util/List;)V

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/estrongs/android/ui/pcs/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/view/dn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/dn;-><init>(Lcom/estrongs/android/view/cr;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->at:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->at:Z

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/estrongs/android/view/cx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/cx;-><init>(Lcom/estrongs/android/view/cr;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->az()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->m()V

    invoke-direct {p0}, Lcom/estrongs/android/view/cr;->u()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->aB()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->e()V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->aC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/bh;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/bh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/bh;->b()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->M(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f080432

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_6
    const v0, 0x7f08039a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f0804e1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "/files"

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v1, v2}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0804ba

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/estrongs/fs/impl/q/a;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->I()V

    goto/16 :goto_1

    :cond_c
    const v0, 0x7f0805ff

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_f
    const-string v0, "pcsres://"

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f0802e8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ad(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f0802bd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bx(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f080302

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_12
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const v0, 0x7f080629

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/cr;->f(I)V

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->a_(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_15
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/o/b;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/fs/impl/o/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_3
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bh(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->Z:Landroid/os/FileObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->Z:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v5, p0, Lcom/estrongs/android/view/cr;->Z:Landroid/os/FileObserver;

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->S:Z

    if-nez v0, :cond_6

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0, v2}, Lcom/estrongs/android/util/TypedMap;-><init>(Lcom/estrongs/android/util/TypedMap;)V

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0}, Lcom/estrongs/android/util/TypedMap;->clear()V

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/util/TypedMap;->putAll(Ljava/util/Map;)V

    :cond_7
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->ah()V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->M:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iput-object p1, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    instance-of v0, p1, Lcom/estrongs/android/ui/topclassify/c;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ay:Ljava/util/Map;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ay:Ljava/util/Map;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "es_recycle_content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "recycle://"

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    const-string v0, "recycle://"

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/estrongs/android/view/du;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/view/du;-><init>(Lcom/estrongs/android/view/cr;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->Z:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->Z:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    :cond_a
    iput-boolean v4, p0, Lcom/estrongs/android/view/cr;->Y:Z

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "back"

    iget-boolean v2, p0, Lcom/estrongs/android/view/cr;->S:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    invoke-direct {p0}, Lcom/estrongs/android/view/cr;->v()V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "refresh"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/TypedMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->S:Z

    if-nez v0, :cond_d

    invoke-virtual {p0, v4}, Lcom/estrongs/android/view/cr;->b(Z)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->am:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->M:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->am:Z

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->M:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->g()V

    goto/16 :goto_0
.end method

.method public a(Lcom/estrongs/fs/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cr;->V:Lcom/estrongs/fs/i;

    return-void
.end method

.method public a(Lcom/estrongs/fs/util/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/view/cr;->a(Ljava/util/List;Lcom/estrongs/fs/util/a/a;)V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->e()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->y:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/cr;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ay:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ay:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    goto :goto_0
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

    iput-boolean p1, p0, Lcom/estrongs/android/view/cr;->P:Z

    iput-boolean p2, p0, Lcom/estrongs/android/view/cr;->Q:Z

    return-void
.end method

.method public aA()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aJ:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f0e010b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->aJ:Landroid/view/View;

    const v0, 0x7f0e010e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/ControllableAppBarLayout;

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->aI:Lcom/estrongs/android/widget/ControllableAppBarLayout;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aJ:Landroid/view/View;

    return-object v0
.end method

.method public aB()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/ui/topclassify/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/m;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ab:Lcom/estrongs/android/ui/recycler/d;

    if-nez v0, :cond_2

    new-instance v0, Lcom/estrongs/android/ui/recycler/d;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/recycler/d;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->ab:Lcom/estrongs/android/ui/recycler/d;

    new-instance v0, Lcom/estrongs/android/ui/recycler/m;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/recycler/m;-><init>(Landroid/support/v7/widget/GridLayoutManager;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->g:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aw:Lcom/estrongs/android/ui/recycler/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/m;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ab:Lcom/estrongs/android/ui/recycler/d;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method protected aC()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected aD()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->W:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/da;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/da;-><init>(Lcom/estrongs/android/view/cr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected aa()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/estrongs/android/view/dt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/dt;-><init>(Lcom/estrongs/android/view/cr;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public ab()Lcom/estrongs/fs/util/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    return-object v0
.end method

.method public ac()I
    .locals 2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/util/a/d;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/util/a/f;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/util/a/e;

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/util/a/c;

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public ad()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    invoke-virtual {v1}, Lcom/estrongs/fs/util/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ae()Z
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

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

.method public af()I
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

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

.method public ag()Lcom/estrongs/fs/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->G:Lcom/estrongs/fs/d;

    return-object v0
.end method

.method public ah()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->I:Lcom/estrongs/fs/b/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->I:Lcom/estrongs/fs/b/al;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/al;->a(Z)V

    :cond_0
    const v0, 0x7f0802b4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->e()V

    return-void
.end method

.method protected ai()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public aj()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->u:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->u:Landroid/widget/LinearLayout;

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

.method public ak()V
    .locals 0

    return-void
.end method

.method public al()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->U:Z

    return v0
.end method

.method protected am()Lcom/estrongs/android/view/dp;
    .locals 4

    new-instance v0, Lcom/estrongs/android/view/dp;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/dp;-><init>(Lcom/estrongs/android/view/cr;)V

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, v0, Lcom/estrongs/android/view/dp;->b:Landroid/os/ConditionVariable;

    new-instance v1, Lcom/estrongs/fs/b/al;

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->G:Lcom/estrongs/fs/d;

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->ae:Lcom/estrongs/android/pop/i;

    invoke-direct {v1, v2, v3}, Lcom/estrongs/fs/b/al;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/android/pop/i;)V

    new-instance v2, Lcom/estrongs/android/view/dg;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/dg;-><init>(Lcom/estrongs/android/view/cr;Lcom/estrongs/android/view/dp;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/al;->a(Lcom/estrongs/fs/b/am;)V

    new-instance v2, Lcom/estrongs/android/view/di;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/di;-><init>(Lcom/estrongs/android/view/cr;Lcom/estrongs/android/view/dp;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/al;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    new-instance v2, Lcom/estrongs/android/view/dl;

    invoke-direct {v2, p0}, Lcom/estrongs/android/view/dl;-><init>(Lcom/estrongs/android/view/cr;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/al;->addProgressListener(Lcom/estrongs/a/a/l;)V

    iput-object v1, v0, Lcom/estrongs/android/view/dp;->a:Lcom/estrongs/fs/b/al;

    return-object v0
.end method

.method protected an()I
    .locals 1

    const v0, 0x7f0805b6

    return v0
.end method

.method protected ao()V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->p()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v1}, Lcom/estrongs/android/view/ck;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ao:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f0e0290

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->ao:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ao:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ao:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ao:Landroid/view/View;

    const v1, 0x7f0e028d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ao:Landroid/view/View;

    const v1, 0x7f0e028e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v2, 0x7f08024c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v1, Lcom/estrongs/android/view/cy;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/cy;-><init>(Lcom/estrongs/android/view/cr;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ao:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ao:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ao:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public ap()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "updateMediaStore"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/cr;->b(Z)V

    return-void
.end method

.method public aq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ap:Ljava/lang/String;

    return-object v0
.end method

.method public ar()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/view/cr;->ar:J

    return-wide v0
.end method

.method public as()[Lcom/estrongs/android/util/bn;
    .locals 7

    const/4 v2, 0x0

    sget-object v3, Lcom/estrongs/android/view/cr;->aH:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

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
    new-array v0, v1, [Lcom/estrongs/android/util/bn;

    sput-object v0, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_1

    sget-object v5, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    new-instance v6, Lcom/estrongs/android/util/bn;

    invoke-direct {v6}, Lcom/estrongs/android/util/bn;-><init>()V

    aput-object v6, v5, v0

    sget-object v5, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/estrongs/android/util/bn;->f:Z

    sget-object v5, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/estrongs/android/util/bn;->h:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-boolean v0, Lcom/estrongs/android/pop/z;->n:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "/"

    iput-object v1, v0, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v5, 0x7f0803a2

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const v1, 0x7f0201c5

    iput v1, v0, Lcom/estrongs/android/util/bn;->j:I

    sget-object v0, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/util/bn;->h:Z

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
    sget-object v0, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    aget-object v5, v0, v1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    aget-object v5, v0, v1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v1

    const v1, 0x7f0201c6

    iput v1, v0, Lcom/estrongs/android/util/bn;->j:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/estrongs/android/view/cr;->aC:[Lcom/estrongs/android/util/bn;

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

.method public au()[Lcom/estrongs/android/util/bn;
    .locals 11

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

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

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/u;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    const-string v6, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    const-string v6, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->bW(Ljava/lang/String;)Ljava/lang/String;

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

    const v5, 0x7f0201b6

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

    const v5, 0x7f0201c4

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

    const v5, 0x7f0201ba

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

    const v5, 0x7f0201be

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

    const v5, 0x7f0201cb

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

    const v6, 0x7f0201b7

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

    const v6, 0x7f0201c0

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

    const v5, 0x7f0201bb

    aput v5, v4, v1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/pcs/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/a;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/pcs/b;

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

    iget-wide v8, v1, Lcom/estrongs/android/ui/pcs/b;->b:J

    invoke-static {v8, v9}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v1, Lcom/estrongs/android/ui/pcs/b;->c:J

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

    new-array v1, v1, [Lcom/estrongs/android/util/bn;

    sput-object v1, Lcom/estrongs/android/view/cr;->aF:[Lcom/estrongs/android/util/bn;

    move v1, v2

    :goto_1
    sget-object v2, Lcom/estrongs/android/view/cr;->aF:[Lcom/estrongs/android/util/bn;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/estrongs/android/view/cr;->aF:[Lcom/estrongs/android/util/bn;

    new-instance v5, Lcom/estrongs/android/util/bn;

    invoke-direct {v5}, Lcom/estrongs/android/util/bn;-><init>()V

    aput-object v5, v2, v1

    sget-object v2, Lcom/estrongs/android/view/cr;->aF:[Lcom/estrongs/android/util/bn;

    aget-object v2, v2, v1

    aget-object v5, v3, v1

    iput-object v5, v2, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/view/cr;->aF:[Lcom/estrongs/android/util/bn;

    aget-object v2, v2, v1

    aget-object v5, v0, v1

    iput-object v5, v2, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/view/cr;->aF:[Lcom/estrongs/android/util/bn;

    aget-object v2, v2, v1

    aget v5, v4, v1

    iput v5, v2, Lcom/estrongs/android/util/bn;->j:I

    sget-object v2, Lcom/estrongs/android/view/cr;->aF:[Lcom/estrongs/android/util/bn;

    aget-object v2, v2, v1

    iput-boolean v10, v2, Lcom/estrongs/android/util/bn;->f:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/estrongs/android/view/cr;->aF:[Lcom/estrongs/android/util/bn;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public av()[Lcom/estrongs/android/util/bn;
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/estrongs/android/util/bn;

    invoke-direct {v1}, Lcom/estrongs/android/util/bn;-><init>()V

    iput-boolean v5, v1, Lcom/estrongs/android/util/bn;->f:Z

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bn;

    const-string v1, "pic://"

    iput-object v1, v0, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bn;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v4, 0x7f0803ab

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bn;

    const v1, 0x7f0201bd

    iput v1, v0, Lcom/estrongs/android/util/bn;->j:I

    new-array v4, v5, [Lcom/estrongs/android/util/bn;

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/bn;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    return-object v4
.end method

.method public aw()[Lcom/estrongs/android/util/bn;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/android/view/cr;->aG:[Lcom/estrongs/android/util/bn;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

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

    new-array v1, v1, [Lcom/estrongs/android/util/bn;

    sput-object v1, Lcom/estrongs/android/view/cr;->aG:[Lcom/estrongs/android/util/bn;

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/estrongs/android/view/cr;->aG:[Lcom/estrongs/android/util/bn;

    new-instance v3, Lcom/estrongs/android/util/bn;

    invoke-direct {v3}, Lcom/estrongs/android/util/bn;-><init>()V

    aput-object v3, v0, v1

    sget-object v0, Lcom/estrongs/android/view/cr;->aG:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v1

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/estrongs/android/util/bn;->f:Z

    sget-object v0, Lcom/estrongs/android/view/cr;->aG:[Lcom/estrongs/android/util/bn;

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

    iput-object v0, v3, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aG:[Lcom/estrongs/android/util/bn;

    aget-object v3, v0, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aG:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v1

    const v3, 0x7f0201c6

    iput v3, v0, Lcom/estrongs/android/util/bn;->j:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/view/cr;->aG:[Lcom/estrongs/android/util/bn;

    return-object v0
.end method

.method public ax()[Lcom/estrongs/android/util/bn;
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->as(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/estrongs/android/util/bn;

    invoke-direct {v2}, Lcom/estrongs/android/util/bn;-><init>()V

    iput-boolean v6, v2, Lcom/estrongs/android/util/bn;->f:Z

    iput-boolean v6, v2, Lcom/estrongs/android/util/bn;->g:Z

    const v3, 0x7f0203b3

    iput v3, v2, Lcom/estrongs/android/util/bn;->j:I

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->au(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    iput-object v1, v2, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/estrongs/fs/impl/o/b;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/estrongs/fs/impl/o/f;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/o/f;->a()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/o/f;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/o/f;->a()J

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

    iget-object v3, v2, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

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

    iput-object v0, v2, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    :cond_3
    new-array v0, v6, [Lcom/estrongs/android/util/bn;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/estrongs/fs/impl/o/f;->b()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v4, 0x7f08027e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/o/f;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public ay()[Lcom/estrongs/android/util/bn;
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->av()[Lcom/estrongs/android/util/bn;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->au()[Lcom/estrongs/android/util/bn;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->aw()[Lcom/estrongs/android/util/bn;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->ax()[Lcom/estrongs/android/util/bn;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->p(Ljava/lang/String;)[Lcom/estrongs/android/util/bn;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->as()[Lcom/estrongs/android/util/bn;

    move-result-object v0

    goto :goto_0
.end method

.method public az()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aI:Lcom/estrongs/android/widget/ControllableAppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aJ:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aJ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aI:Lcom/estrongs/android/widget/ControllableAppBarLayout;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ControllableAppBarLayout;->b()V

    :cond_0
    return-void
.end method

.method public b()Lcom/estrongs/fs/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    return-object v0
.end method

.method protected b(Lcom/estrongs/android/view/ci;I)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/estrongs/android/view/cr;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->n:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->n:Landroid/widget/ImageView;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->n:Landroid/widget/ImageView;

    new-instance v2, Lcom/estrongs/android/view/cz;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/estrongs/android/view/cz;-><init>(Lcom/estrongs/android/view/cr;Lcom/estrongs/fs/h;Lcom/estrongs/android/view/ci;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/estrongs/fs/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cr;->K:Lcom/estrongs/fs/i;

    return-void
.end method

.method public b(Lcom/estrongs/fs/util/a/a;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/view/cr;->a(Ljava/util/List;Lcom/estrongs/fs/util/a/a;)V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->e()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/ad;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/view/cr;->t()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->ah()V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->F:Lcom/estrongs/android/view/dv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->F:Lcom/estrongs/android/view/dv;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->am()Lcom/estrongs/android/view/dp;

    move-result-object v4

    iget-object v0, v4, Lcom/estrongs/android/view/dp;->a:Lcom/estrongs/fs/b/al;

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->I:Lcom/estrongs/fs/b/al;

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/estrongs/fs/b;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->K:Lcom/estrongs/fs/i;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/b;-><init>(Lcom/estrongs/fs/i;)V

    new-instance v1, Lcom/estrongs/android/view/bn;

    iget-object v5, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-direct {v1, v5, v6}, Lcom/estrongs/android/view/bn;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b;->a(Lcom/estrongs/fs/i;)V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ao:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ao:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ao:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->ai()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bi(Ljava/lang/String;)Z

    move-result v5

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v6

    iget v1, p0, Lcom/estrongs/android/view/cr;->p:I

    invoke-static {v1}, Lcom/estrongs/android/pop/view/utils/ac;->a(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v7, "countChildren"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/estrongs/android/view/cr;->I:Lcom/estrongs/fs/b/al;

    const/4 v1, 0x5

    new-array v8, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    aput-object v1, v8, v3

    if-nez v5, :cond_6

    if-eqz v6, :cond_c

    :cond_6
    move-object v1, v2

    :goto_3
    aput-object v1, v8, v9

    const/4 v1, 0x2

    aput-object v0, v8, v1

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    aput-object v1, v8, v0

    invoke-virtual {v7, v8}, Lcom/estrongs/fs/b/al;->a([Ljava/lang/Object;)Z

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v2

    :cond_7
    if-nez v1, :cond_9

    if-nez v5, :cond_9

    if-nez v6, :cond_9

    if-eqz v2, :cond_9

    if-ne v2, p0, :cond_9

    iget-object v0, v4, Lcom/estrongs/android/view/dp;->b:Landroid/os/ConditionVariable;

    const-wide/16 v6, 0x320

    invoke-virtual {v0, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v1, v4, Lcom/estrongs/android/view/dp;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    :cond_8
    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->an()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->f(Ljava/lang/String;)V

    :cond_9
    :goto_4
    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->S:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/estrongs/android/view/cr;->S:Z

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lcom/estrongs/fs/b;

    invoke-direct {v0, v2}, Lcom/estrongs/fs/b;-><init>(Lcom/estrongs/fs/i;)V

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v7, "countChildren"

    invoke-virtual {v1, v7}, Lcom/estrongs/android/util/TypedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->X:Lcom/estrongs/android/util/TypedMap;

    const-string v7, "countChildren"

    invoke-virtual {v1, v7}, Lcom/estrongs/android/util/TypedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->J:Lcom/estrongs/fs/util/a/a;

    goto :goto_3

    :cond_d
    iput-boolean v3, p0, Lcom/estrongs/android/view/cr;->Y:Z

    iget-object v0, v4, Lcom/estrongs/android/view/dp;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->W:Landroid/os/Handler;

    iget-object v1, v4, Lcom/estrongs/android/view/dp;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->W:Landroid/os/Handler;

    iget-object v1, v4, Lcom/estrongs/android/view/dp;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v4, Lcom/estrongs/android/view/dp;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, v4, Lcom/estrongs/android/view/dp;->e:Ljava/util/List;

    if-eqz v0, :cond_e

    move v1, v3

    :goto_5
    iget-object v0, v4, Lcom/estrongs/android/view/dp;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->W:Landroid/os/Handler;

    iget-object v0, v4, Lcom/estrongs/android/view/dp;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v4, Lcom/estrongs/android/view/dp;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_e
    iget-object v0, v4, Lcom/estrongs/android/view/dp;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lcom/estrongs/fs/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    return-void
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

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->V:Lcom/estrongs/fs/i;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->V:Lcom/estrongs/fs/i;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v2, v0}, Lcom/estrongs/fs/i;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public d(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/view/cr;->ar:J

    return-void
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

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

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

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/cr;->b(Ljava/lang/String;)V

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

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/cg;->e()V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->av:Lcom/estrongs/android/ui/recycler/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->av:Lcom/estrongs/android/ui/recycler/h;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/recycler/h;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ab:Lcom/estrongs/android/ui/recycler/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ab:Lcom/estrongs/android/ui/recycler/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/recycler/d;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public f()Lcom/estrongs/fs/h;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/cr;->c(Z)Lcom/estrongs/fs/h;

    move-result-object v0

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/cr;->d:Z

    return-void
.end method

.method public g(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/cr;->e(I)Ljava/lang/Object;

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

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->R:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->b(Z)V

    return-void
.end method

.method public g(Z)V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

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

.method public h(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

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

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/cr;->R:Z

    return-void
.end method

.method protected i()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/view/dq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/dq;-><init>(Lcom/estrongs/android/view/cr;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/cn;)V

    new-instance v0, Lcom/estrongs/android/view/dd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/dd;-><init>(Lcom/estrongs/android/view/cr;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/co;)V

    new-instance v0, Lcom/estrongs/android/pop/i;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->ad:Lcom/estrongs/android/d/d;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/i;-><init>(Landroid/app/Activity;Lcom/estrongs/android/d/d;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cr;->ae:Lcom/estrongs/android/pop/i;

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->aa()V

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->al:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ac:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/a/e;)V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/cr;->af:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/estrongs/android/view/de;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/view/de;-><init>(Lcom/estrongs/android/view/cr;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public i(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/cr;->a(ZZ)V

    return-void
.end method

.method public i_()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->I:Lcom/estrongs/fs/b/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->I:Lcom/estrongs/fs/b/al;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/al;->a(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/estrongs/android/view/cr;->U:Z

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->al:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ac:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->b(Lcom/estrongs/fs/a/e;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->Z:Landroid/os/FileObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->Z:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ah:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/j/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public j()Lcom/estrongs/fs/h;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->am:Z

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

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
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->T:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->f()Lcom/estrongs/fs/h;

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
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->D:Lcom/estrongs/fs/h;

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
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "pcs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string v0, "net://"

    :cond_9
    new-instance v1, Lcom/estrongs/fs/x;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/cr;->c(Lcom/estrongs/fs/h;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/cr;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public j(Z)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aL:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aK:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aL:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v2, 0x7f08038c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aK:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aL:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v2, 0x7f0800a5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->aK:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public j_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->aa:Z

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->z:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/cr;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public l()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->P:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->Q:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->Q:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/estrongs/android/view/cr;->b(Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/estrongs/android/view/cr;->P:Z

    iput-boolean v1, p0, Lcom/estrongs/android/view/cr;->Q:Z

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->Y:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->H()V

    :cond_2
    iput-boolean v1, p0, Lcom/estrongs/android/view/cr;->aa:Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/view/cr;->ax:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "visit_path"

    const-string v2, "visit_sdcard"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->ax:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->g()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/cr;->A:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/view/cr;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    return-void
.end method

.method public m()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cr;->aA()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method protected m(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected m_()V
    .locals 2

    const v0, 0x7f0202b0

    invoke-super {p0}, Lcom/estrongs/android/view/cg;->m_()V

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->m:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->o:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const v0, 0x7f0202b1

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x7f0202af

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x7f0202b4

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x7f0202b2

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const v0, 0x7f0202ad

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bx(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v0, 0x7f0202b3

    goto :goto_1

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ad(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0200ea

    goto :goto_1
.end method

.method protected n(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->H:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/estrongs/android/util/ap;->h(Ljava/lang/String;Ljava/lang/String;)Z

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

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cr;->ap:Ljava/lang/String;

    return-void
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->I:Lcom/estrongs/fs/b/al;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->I:Lcom/estrongs/fs/b/al;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/al;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->I:Lcom/estrongs/fs/b/al;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/al;->getTaskStatus()I

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

.method public p(Ljava/lang/String;)[Lcom/estrongs/android/util/bn;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    if-nez v0, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/estrongs/android/util/bn;

    sput-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    move v0, v1

    :goto_0
    sget-object v2, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    new-instance v3, Lcom/estrongs/android/util/bn;

    invoke-direct {v3}, Lcom/estrongs/android/util/bn;-><init>()V

    aput-object v3, v2, v0

    sget-object v2, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lcom/estrongs/android/util/bn;->f:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v1

    invoke-static {p1, v1}, Lcom/estrongs/fs/impl/adb/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v3, 0x7f080127

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v1

    const v1, 0x7f0201ca

    iput v1, v0, Lcom/estrongs/android/util/bn;->j:I

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v4

    invoke-static {p1, v4}, Lcom/estrongs/fs/impl/adb/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v1, v0, v4

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v2, 0x7f080125

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v4

    const v1, 0x7f0201c8

    iput v1, v0, Lcom/estrongs/android/util/bn;->j:I

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v5

    invoke-static {p1, v5}, Lcom/estrongs/fs/impl/adb/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v1, v0, v5

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v2, 0x7f080123

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v5

    const v1, 0x7f0201c1

    iput v1, v0, Lcom/estrongs/android/util/bn;->j:I

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v6

    invoke-static {p1, v6}, Lcom/estrongs/fs/impl/adb/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v2, 0x7f080124

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v6

    const v1, 0x7f0201c7

    iput v1, v0, Lcom/estrongs/android/util/bn;->j:I

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v7

    invoke-static {p1, v7}, Lcom/estrongs/fs/impl/adb/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/util/bn;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v1, v0, v7

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    const v2, 0x7f080122

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/util/bn;->i:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    aget-object v0, v0, v7

    const v1, 0x7f0201b7

    iput v1, v0, Lcom/estrongs/android/util/bn;->j:I

    :cond_1
    sget-object v0, Lcom/estrongs/android/view/cr;->aE:[Lcom/estrongs/android/util/bn;

    return-object v0
.end method
