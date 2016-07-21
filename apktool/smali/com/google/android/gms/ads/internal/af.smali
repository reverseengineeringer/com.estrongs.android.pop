.class public final Lcom/google/android/gms/ads/internal/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field public A:Lcom/google/android/gms/internal/nn;

.field B:Landroid/view/View;

.field public C:I

.field D:Z

.field E:Z

.field private F:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ni;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:I

.field private I:Lcom/google/android/gms/internal/pg;

.field final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field final d:Lcom/google/android/gms/internal/aj;

.field public final e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field f:Lcom/google/android/gms/ads/internal/ag;

.field public g:Lcom/google/android/gms/internal/np;

.field public h:Lcom/google/android/gms/internal/np;

.field public i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public j:Lcom/google/android/gms/internal/ng;

.field public k:Lcom/google/android/gms/internal/nh;

.field public l:Lcom/google/android/gms/internal/ni;

.field m:Lcom/google/android/gms/ads/internal/client/o;

.field n:Lcom/google/android/gms/ads/internal/client/r;

.field o:Lcom/google/android/gms/ads/internal/client/aj;

.field p:Lcom/google/android/gms/ads/internal/client/am;

.field q:Lcom/google/android/gms/internal/kj;

.field r:Lcom/google/android/gms/internal/kv;

.field s:Lcom/google/android/gms/internal/em;

.field t:Lcom/google/android/gms/internal/ep;

.field u:Lcom/google/android/gms/internal/sz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/sz",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/es;",
            ">;"
        }
    .end annotation
.end field

.field v:Lcom/google/android/gms/internal/sz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/sz",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ev;",
            ">;"
        }
    .end annotation
.end field

.field w:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field x:Lcom/google/android/gms/internal/dn;

.field y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field z:Lcom/google/android/gms/ads/internal/purchase/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/af;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/aj;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/aj;)V
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/af;->A:Lcom/google/android/gms/internal/nn;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/af;->B:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/af;->C:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/af;->D:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/af;->E:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/af;->F:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/af;->G:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/af;->H:I

    invoke-static {p1}, Lcom/google/android/gms/internal/cz;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nk;->e()Lcom/google/android/gms/internal/dd;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/cz;->a()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->d:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->h()Lcom/google/android/gms/internal/nk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nk;->e()Lcom/google/android/gms/internal/dd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/dd;->a(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/af;->a:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->j:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/af;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/af;->e:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    if-eqz p5, :cond_4

    :goto_1
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/af;->d:Lcom/google/android/gms/internal/aj;

    new-instance v0, Lcom/google/android/gms/internal/pg;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/pg;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/af;->I:Lcom/google/android/gms/internal/pg;

    new-instance v0, Lcom/google/android/gms/internal/sz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/sz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/af;->v:Lcom/google/android/gms/internal/sz;

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/ag;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/ads/internal/ag;-><init>(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->h:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ag;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ag;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/ag;->setVisibility(I)V

    goto :goto_0

    :cond_4
    new-instance p5, Lcom/google/android/gms/internal/aj;

    new-instance v0, Lcom/google/android/gms/ads/internal/p;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/p;-><init>(Lcom/google/android/gms/ads/internal/af;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/aj;-><init>(Lcom/google/android/gms/internal/ae;)V

    goto :goto_1
.end method

.method private b(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v2, v2, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v2, v2, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v2}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/qb;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/af;->I:Lcom/google/android/gms/internal/pg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/pg;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/ag;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/m;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    aget v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/m;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/af;->c:Landroid/content/Context;

    aget v2, v2, v0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/af;->G:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/google/android/gms/ads/internal/af;->H:I

    if-eq v2, v4, :cond_0

    :cond_3
    iput v3, p0, Lcom/google/android/gms/ads/internal/af;->G:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/af;->H:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v2, v2, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v2}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/af;->G:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/af;->H:I

    if-nez p1, :cond_4

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/qb;->a(IIZ)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ni;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->F:Ljava/util/HashSet;

    return-object v0
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ni;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/af;->F:Ljava/util/HashSet;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/af;->C:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/af;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->g:Lcom/google/android/gms/internal/np;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->g:Lcom/google/android/gms/internal/np;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/np;->i()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->h:Lcom/google/android/gms/internal/np;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->h:Lcom/google/android/gms/internal/np;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/np;->i()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->destroy()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->stopLoading()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->m:Lcom/google/android/gms/internal/ii;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ng;->m:Lcom/google/android/gms/internal/ii;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ii;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/af;->C:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/af;->C:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ag;->b()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->l:Lcom/google/android/gms/internal/ni;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-wide v2, v1, Lcom/google/android/gms/internal/ng;->t:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ni;->a(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->l:Lcom/google/android/gms/internal/ni;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-wide v2, v1, Lcom/google/android/gms/internal/ng;->u:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ni;->b(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->l:Lcom/google/android/gms/internal/ni;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/af;->i:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ni;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->l:Lcom/google/android/gms/internal/ni;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ng;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ni;->b(Z)V

    return-void
.end method

.method public i()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/af;->g()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/af;->n:Lcom/google/android/gms/ads/internal/client/r;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/af;->o:Lcom/google/android/gms/ads/internal/client/aj;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/af;->r:Lcom/google/android/gms/internal/kv;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/af;->q:Lcom/google/android/gms/internal/kj;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/af;->x:Lcom/google/android/gms/internal/dn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/af;->p:Lcom/google/android/gms/ads/internal/client/am;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/af;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/af;->f:Lcom/google/android/gms/ads/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/ag;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/af;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/af;->d()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/af;->j:Lcom/google/android/gms/internal/ng;

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/af;->b(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/af;->b(Z)V

    return-void
.end method
