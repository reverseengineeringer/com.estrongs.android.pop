.class public Lcom/flurry/sdk/ja;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Landroid/location/Location;

.field private o:I

.field private p:B

.field private q:Ljava/lang/Long;

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/iv;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iw;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:I

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/flurry/sdk/ja;->b:J

    iput-wide v2, p0, Lcom/flurry/sdk/ja;->c:J

    iput-wide v2, p0, Lcom/flurry/sdk/ja;->d:J

    iput v0, p0, Lcom/flurry/sdk/ja;->k:I

    iput v1, p0, Lcom/flurry/sdk/ja;->l:I

    iput v0, p0, Lcom/flurry/sdk/ja;->o:I

    iput-byte v0, p0, Lcom/flurry/sdk/ja;->p:B

    iput-boolean v1, p0, Lcom/flurry/sdk/ja;->t:Z

    iput v0, p0, Lcom/flurry/sdk/ja;->u:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(B)V
    .locals 0

    iput-byte p1, p0, Lcom/flurry/sdk/ja;->p:B

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/ja;->k:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/ja;->b:J

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ja;->n:Landroid/location/Location;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ja;->q:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iw;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flurry/sdk/ja;->s:Ljava/util/List;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flurry/sdk/ja;->e:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/ja;->t:Z

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/ja;->b:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/ja;->l:I

    return-void
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/ja;->c:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ja;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iu;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flurry/sdk/ja;->v:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flurry/sdk/ja;->h:Ljava/util/Map;

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/ja;->c:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/ja;->o:I

    return-void
.end method

.method public c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/ja;->d:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ja;->g:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/iv;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/flurry/sdk/ja;->r:Ljava/util/Map;

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/ja;->d:J

    return-wide v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/ja;->u:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ja;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/ja;->e:Ljava/util/Map;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ja;->j:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ja;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ja;->m:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ja;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/ja;->h:Ljava/util/Map;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ja;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ja;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/ja;->k:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/ja;->l:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ja;->m:Ljava/lang/String;

    return-object v0
.end method

.method public n()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ja;->n:Landroid/location/Location;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/ja;->o:I

    return v0
.end method

.method public p()B
    .locals 1

    iget-byte v0, p0, Lcom/flurry/sdk/ja;->p:B

    return v0
.end method

.method public q()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ja;->q:Ljava/lang/Long;

    return-object v0
.end method

.method public r()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/iv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/ja;->r:Ljava/util/Map;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/ja;->s:Ljava/util/List;

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/ja;->t:Z

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/ja;->u:I

    return v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/iu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/ja;->v:Ljava/util/List;

    return-object v0
.end method
