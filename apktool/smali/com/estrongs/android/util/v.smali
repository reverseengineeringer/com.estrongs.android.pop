.class public Lcom/estrongs/android/util/v;
.super Lcom/estrongs/android/util/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/util/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
