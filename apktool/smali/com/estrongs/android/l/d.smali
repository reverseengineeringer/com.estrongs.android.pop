.class Lcom/estrongs/android/l/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/estrongs/android/l/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/l/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/estrongs/android/l/b;-><init>(Lcom/estrongs/android/l/c;)V

    sput-object v0, Lcom/estrongs/android/l/d;->a:Lcom/estrongs/android/l/b;

    return-void
.end method

.method static synthetic a()Lcom/estrongs/android/l/b;
    .locals 1

    sget-object v0, Lcom/estrongs/android/l/d;->a:Lcom/estrongs/android/l/b;

    return-object v0
.end method
