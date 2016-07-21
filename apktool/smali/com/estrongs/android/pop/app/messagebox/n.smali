.class public Lcom/estrongs/android/pop/app/messagebox/n;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field private static e:Lcom/estrongs/android/pop/app/messagebox/n;


# instance fields
.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/n;->f:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/messagebox/n;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->e:Lcom/estrongs/android/pop/app/messagebox/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/n;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/messagebox/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->e:Lcom/estrongs/android/pop/app/messagebox/n;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->e:Lcom/estrongs/android/pop/app/messagebox/n;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/messagebox/n;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/n;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/z;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/messagebox/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/messagebox/z;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/n;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/unlock/m;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/unlock/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/unlock/m;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "prod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "577640357eae814336fdf856"

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->d:Ljava/lang/String;

    :goto_1
    const-string v0, "56f262117eae07c9799554c2"

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->a:Ljava/lang/String;

    const-string v0, "56f2653d7eae07c9799554c3"

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "57763eda7eae814336fdf855"

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->c:Ljava/lang/String;

    const-string v0, "577124fe7eae7b7b8fd5eea5"

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->d:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, "test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "5768d331e4b0d0d1db6f2fcd"

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->c:Ljava/lang/String;

    const-string v0, "5770c527e4b051dbaf1ba136"

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->d:Ljava/lang/String;

    :goto_2
    const-string v0, "56ea28cee4b034cd0e1ab89f"

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->a:Ljava/lang/String;

    const-string v0, "56ef9be2e4b034cd0e1ab8a2"

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->b:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "57711777e4b051dbaf1ba139"

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->c:Ljava/lang/String;

    const-string v0, "5773779de4b051dbaf1ba13d"

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->d:Ljava/lang/String;

    goto :goto_2
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/n;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/unlock/m;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/unlock/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/unlock/m;->b()V

    return-void
.end method
