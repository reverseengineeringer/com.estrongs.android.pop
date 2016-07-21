.class public Lcom/estrongs/android/util/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:Lcom/estrongs/android/util/d;

.field private f:Lcom/estrongs/android/ui/dialog/ci;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/estrongs/android/util/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/estrongs/android/util/b;->c:I

    iput v0, p0, Lcom/estrongs/android/util/b;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/b;->f:Lcom/estrongs/android/ui/dialog/ci;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/b;->a:Z

    iput-object p1, p0, Lcom/estrongs/android/util/b;->b:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/util/b;->c:I

    iput p2, p0, Lcom/estrongs/android/util/b;->d:I

    iput-object p3, p0, Lcom/estrongs/android/util/b;->e:Lcom/estrongs/android/util/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/estrongs/android/util/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/estrongs/android/util/b;->c:I

    iput v0, p0, Lcom/estrongs/android/util/b;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/b;->f:Lcom/estrongs/android/ui/dialog/ci;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/b;->a:Z

    iput-object p1, p0, Lcom/estrongs/android/util/b;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/estrongs/android/util/b;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/util/b;->c:I

    iget v0, p0, Lcom/estrongs/android/util/b;->c:I

    iput v0, p0, Lcom/estrongs/android/util/b;->d:I

    iput-object p3, p0, Lcom/estrongs/android/util/b;->e:Lcom/estrongs/android/util/d;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/util/b;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/util/b;->d:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/util/b;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/util/b;->d:I

    return p1
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_0

    aget-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/util/b;)Lcom/estrongs/android/util/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/b;->e:Lcom/estrongs/android/util/d;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/util/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/util/b;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    const v1, 0x7f0c0001

    iget-object v0, p0, Lcom/estrongs/android/util/b;->f:Lcom/estrongs/android/ui/dialog/ci;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/util/b;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/util/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    aget-object v4, v2, v0

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v2, p0, Lcom/estrongs/android/util/b;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08031b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v2

    iget-boolean v1, p0, Lcom/estrongs/android/util/b;->a:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/estrongs/android/util/b;->d:I

    :goto_2
    new-instance v3, Lcom/estrongs/android/util/c;

    invoke-direct {v3, p0}, Lcom/estrongs/android/util/c;-><init>(Lcom/estrongs/android/util/b;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/estrongs/android/ui/dialog/cv;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/util/b;->f:Lcom/estrongs/android/ui/dialog/ci;

    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/util/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/estrongs/android/util/b;->d:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/util/b;->f:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto :goto_3
.end method
