.class public Lcom/estrongs/android/pop/app/e/e;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/e/c;

.field private b:J

.field private c:Lcom/estrongs/android/pop/app/e/f;

.field private d:J

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/e/e;->a:Lcom/estrongs/android/pop/app/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/e/e;->e:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/e/e;->e:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/e/e;->b:J

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/e/e;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/e/e;->c:Lcom/estrongs/android/pop/app/e/f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/e/e;->f:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/e/e;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/e/e;->d:J

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/e;->a:Lcom/estrongs/android/pop/app/e/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/e/e;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/e/c;->a(Lcom/estrongs/android/pop/app/e/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/e/e;->a:Lcom/estrongs/android/pop/app/e/c;

    iget v2, p0, Lcom/estrongs/android/pop/app/e/e;->e:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/e/e;->b:J

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/estrongs/android/pop/app/e/c;->a(Lcom/estrongs/android/pop/app/e/c;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/e/e;->d:J

    return-wide v0
.end method

.method public e()Lcom/estrongs/android/pop/app/e/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/e;->c:Lcom/estrongs/android/pop/app/e/f;

    return-object v0
.end method

.method public f()I
    .locals 6

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/e/e;->b:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->a(J)J

    move-result-wide v0

    invoke-static {}, Lcom/estrongs/android/pop/app/e/c;->b()Ljava/text/DecimalFormat;

    move-result-object v2

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/e/e;->b:J

    div-long v0, v4, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/e/e;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
