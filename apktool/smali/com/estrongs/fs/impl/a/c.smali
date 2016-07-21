.class public Lcom/estrongs/fs/impl/a/c;
.super Lcom/estrongs/fs/impl/i/a;


# static fields
.field private static a:Lcom/estrongs/fs/impl/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/i/a;-><init>(I)V

    return-void
.end method

.method public static a()Lcom/estrongs/fs/impl/a/c;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/a/c;->a:Lcom/estrongs/fs/impl/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/a/c;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/a/c;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/a/c;->a:Lcom/estrongs/fs/impl/a/c;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/a/c;->a:Lcom/estrongs/fs/impl/a/c;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/impl/local/f;)Lcom/estrongs/fs/h;
    .locals 1

    new-instance v0, Lcom/estrongs/fs/impl/a/b;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/impl/a/b;-><init>(Lcom/estrongs/fs/h;)V

    return-object v0
.end method
