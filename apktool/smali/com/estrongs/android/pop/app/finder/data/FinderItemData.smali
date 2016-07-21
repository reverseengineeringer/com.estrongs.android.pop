.class public Lcom/estrongs/android/pop/app/finder/data/FinderItemData;
.super Lcom/estrongs/android/pop/app/finder/data/a;


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/finder/data/a;-><init>(I)V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->k:Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/finder/data/a;-><init>(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->k:Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->g:J

    return-object p0
.end method

.method public a(Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->k:Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->f:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c:Z

    return-object p0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->c:Z

    return v0
.end method

.method public b(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->h:J

    return-object p0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->d:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->d:Z

    return v0
.end method

.method public c(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->i:J

    return-object p0
.end method

.method public c(Z)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->e:Z

    return-object p0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->e:Z

    return v0
.end method

.method public d()Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->k:Lcom/estrongs/android/pop/app/finder/data/FinderItemData$AdditionalType;

    return-object v0
.end method

.method public d(J)Lcom/estrongs/android/pop/app/finder/data/FinderItemData;
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->j:J

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->g:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->h:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->i:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->j:J

    return-wide v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/finder/data/FinderItemData;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
