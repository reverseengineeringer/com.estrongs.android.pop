.class Lcom/estrongs/android/ui/dialog/gk;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:[I

.field public c:[Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Lcom/estrongs/android/ui/dialog/gm;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/estrongs/android/ui/dialog/gm;)V
    .locals 6

    const/4 v0, 0x0

    const v5, 0x7f080378

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/gk;->a:Z

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->b:[I

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->c:[Ljava/lang/String;

    iput v3, p0, Lcom/estrongs/android/ui/dialog/gk;->f:I

    iput v3, p0, Lcom/estrongs/android/ui/dialog/gk;->g:I

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gk;->d:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/ui/dialog/gk;->f:I

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/gk;->e:Lcom/estrongs/android/ui/dialog/gm;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->b:[I

    new-array v0, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0803ab

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "samba("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0803aa

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->c:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/gk;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/dialog/gk;->g:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/gk;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/gk;->g:I

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/gk;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/dialog/gk;->f:I

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/gk;)Lcom/estrongs/android/ui/dialog/gm;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->e:Lcom/estrongs/android/ui/dialog/gm;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/gk;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/dialog/gk;->f:I

    return v0
.end method


# virtual methods
.method public a(I)I
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gk;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gk;->b:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a()V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gk;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gk;->c:[Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/ui/dialog/gk;->f:I

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/gk;->a(I)I

    move-result v2

    new-instance v3, Lcom/estrongs/android/ui/dialog/gl;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/gl;-><init>(Lcom/estrongs/android/ui/dialog/gk;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method

.method public b(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gk;->c:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/gk;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
