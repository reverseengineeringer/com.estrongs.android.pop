.class public Lcom/estrongs/android/pop/view/utils/v;
.super Ljava/lang/Object;


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Landroid/graphics/Bitmap;

.field public l:[Landroid/graphics/Bitmap;

.field public m:[Lcom/estrongs/android/util/aa;

.field public n:[Landroid/graphics/Bitmap;

.field public o:[Lcom/estrongs/android/util/aa;

.field public p:Z

.field public q:I

.field public r:Lcom/estrongs/android/util/aa;

.field public s:Ljava/lang/String;

.field public t:J

.field public u:J

.field public v:I

.field public w:Z

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->k:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->l:[Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/aa;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->n:[Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->o:[Lcom/estrongs/android/util/aa;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/utils/v;->p:Z

    iput v1, p0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iput-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->r:Lcom/estrongs/android/util/aa;

    iput-wide v2, p0, Lcom/estrongs/android/pop/view/utils/v;->t:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/view/utils/v;->u:J

    iput v1, p0, Lcom/estrongs/android/pop/view/utils/v;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/utils/v;->w:Z

    iput v1, p0, Lcom/estrongs/android/pop/view/utils/v;->x:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/utils/v;->y:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/utils/v;->z:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/view/utils/v;->A:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/view/utils/v;->A:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    const-string v1, "https://play.google.com/store/apps/details"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    const-string v1, "market://details"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/v;->C:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
