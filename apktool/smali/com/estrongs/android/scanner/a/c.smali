.class public abstract Lcom/estrongs/android/scanner/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:J

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/estrongs/android/scanner/a/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/scanner/a/c;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/estrongs/android/scanner/a/c;->d:J

    iput-wide p1, p0, Lcom/estrongs/android/scanner/a/c;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/scanner/a/c;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v2, -0x1

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/scanner/a/c;-><init>(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    const-wide/16 v2, -0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/scanner/a/c;-><init>(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "name"

    iget-object v2, p0, Lcom/estrongs/android/scanner/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lastmodified"

    iget-wide v2, p0, Lcom/estrongs/android/scanner/a/c;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "isLogPath"

    iget-boolean v0, p0, Lcom/estrongs/android/scanner/a/c;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "pathtype"

    iget v2, p0, Lcom/estrongs/android/scanner/a/c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/scanner/a/c;->f:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/scanner/a/c;->a:J

    return-void
.end method

.method public abstract a(Landroid/database/sqlite/SQLiteStatement;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/scanner/a/c;->e:Z

    return-void
.end method

.method public a(ZZZ)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/a/c;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/a/c;->a(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/a/c;->a(I)V

    goto :goto_0
.end method

.method public b()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "lastmodified"

    iget-wide v2, p0, Lcom/estrongs/android/scanner/a/c;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/scanner/a/c;->d:J

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/scanner/a/c;->a:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/estrongs/android/scanner/a/c;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/estrongs/android/scanner/a/c;

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/c;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/scanner/a/c;->d:J

    return-wide v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/scanner/a/c;->e:Z

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/scanner/a/c;->f:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/a/c;->b:Ljava/lang/String;

    return-object v0
.end method
