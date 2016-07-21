.class public Lcom/estrongs/android/pop/app/f/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/estrongs/android/pop/app/f/k;

.field public static b:Lcom/estrongs/android/pop/app/f/i;

.field public static c:Lcom/estrongs/android/pop/app/f/h;

.field public static d:Lcom/estrongs/android/pop/app/f/j;

.field public static e:Lcom/estrongs/android/pop/app/f/l;

.field public static f:Lcom/estrongs/android/pop/app/f/g;


# instance fields
.field public g:I

.field public h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/f/f;->a:Lcom/estrongs/android/pop/app/f/k;

    sput-object v0, Lcom/estrongs/android/pop/app/f/f;->b:Lcom/estrongs/android/pop/app/f/i;

    sput-object v0, Lcom/estrongs/android/pop/app/f/f;->c:Lcom/estrongs/android/pop/app/f/h;

    sput-object v0, Lcom/estrongs/android/pop/app/f/f;->d:Lcom/estrongs/android/pop/app/f/j;

    sput-object v0, Lcom/estrongs/android/pop/app/f/f;->e:Lcom/estrongs/android/pop/app/f/l;

    sput-object v0, Lcom/estrongs/android/pop/app/f/f;->f:Lcom/estrongs/android/pop/app/f/g;

    new-instance v0, Lcom/estrongs/android/pop/app/f/k;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/f/k;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/f/f;->a:Lcom/estrongs/android/pop/app/f/k;

    new-instance v0, Lcom/estrongs/android/pop/app/f/i;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/f/i;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/f/f;->b:Lcom/estrongs/android/pop/app/f/i;

    new-instance v0, Lcom/estrongs/android/pop/app/f/h;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/f/h;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/f/f;->c:Lcom/estrongs/android/pop/app/f/h;

    new-instance v0, Lcom/estrongs/android/pop/app/f/j;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/f/j;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/f/f;->d:Lcom/estrongs/android/pop/app/f/j;

    new-instance v0, Lcom/estrongs/android/pop/app/f/l;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/f/l;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/f/f;->e:Lcom/estrongs/android/pop/app/f/l;

    new-instance v0, Lcom/estrongs/android/pop/app/f/g;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/f/g;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/f/f;->f:Lcom/estrongs/android/pop/app/f/g;

    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/f/f;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/f;->h:[I

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Lcom/estrongs/android/pop/app/f/f;->g:I

    iput-object p2, p0, Lcom/estrongs/android/pop/app/f/f;->h:[I

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/f/f;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/ap;->cj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/estrongs/android/pop/app/f/f;->b:Lcom/estrongs/android/pop/app/f/i;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/estrongs/android/pop/app/f/f;->c:Lcom/estrongs/android/pop/app/f/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/estrongs/android/pop/app/f/f;->d:Lcom/estrongs/android/pop/app/f/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/estrongs/android/pop/app/f/f;->e:Lcom/estrongs/android/pop/app/f/l;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/estrongs/android/pop/app/f/f;->a:Lcom/estrongs/android/pop/app/f/k;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/estrongs/android/pop/app/f/f;->f:Lcom/estrongs/android/pop/app/f/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "ftp://"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/estrongs/android/pop/app/f/f;->b:Lcom/estrongs/android/pop/app/f/i;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/estrongs/android/pop/app/f/f;->c:Lcom/estrongs/android/pop/app/f/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/estrongs/android/pop/app/f/f;->d:Lcom/estrongs/android/pop/app/f/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/estrongs/android/pop/app/f/f;->e:Lcom/estrongs/android/pop/app/f/l;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v1, "smb://"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/estrongs/android/pop/app/f/f;->a:Lcom/estrongs/android/pop/app/f/k;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v1, "adb://"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/app/f/f;->f:Lcom/estrongs/android/pop/app/f/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/estrongs/android/pop/app/f/f;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/estrongs/android/pop/app/f/f;->g:I

    check-cast p1, Lcom/estrongs/android/pop/app/f/f;

    iget v2, p1, Lcom/estrongs/android/pop/app/f/f;->g:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/f/f;->g:I

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method
