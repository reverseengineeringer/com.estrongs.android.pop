.class public Lcom/estrongs/fs/impl/p/b;
.super Lcom/estrongs/fs/impl/i/a;


# static fields
.field private static a:Lcom/estrongs/fs/impl/p/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/fs/impl/i/a;-><init>(I)V

    return-void
.end method

.method public static a()Lcom/estrongs/fs/impl/p/b;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/p/b;->a:Lcom/estrongs/fs/impl/p/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/p/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/p/b;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/p/b;->a:Lcom/estrongs/fs/impl/p/b;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/p/b;->a:Lcom/estrongs/fs/impl/p/b;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/impl/local/f;)Lcom/estrongs/fs/h;
    .locals 1

    new-instance v0, Lcom/estrongs/fs/impl/p/a;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/impl/p/a;-><init>(Lcom/estrongs/fs/h;)V

    return-object v0
.end method
