.class public Lcom/estrongs/android/scanner/ab;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/scanner/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/scanner/ab;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/ab;-><init>()V

    sput-object v0, Lcom/estrongs/android/scanner/ab;->a:Lcom/estrongs/android/scanner/ab;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/estrongs/android/scanner/ab;
    .locals 1

    sget-object v0, Lcom/estrongs/android/scanner/ab;->a:Lcom/estrongs/android/scanner/ab;

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/estrongs/android/scanner/y;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/estrongs/android/scanner/ac;

    invoke-direct {v0, v1}, Lcom/estrongs/android/scanner/ac;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/scanner/ad;

    invoke-direct {v0, v1}, Lcom/estrongs/android/scanner/ad;-><init>(Z)V

    new-instance v1, Lcom/estrongs/android/scanner/c/i;

    invoke-direct {v1}, Lcom/estrongs/android/scanner/c/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/y;->a(Lcom/estrongs/android/scanner/c/g;)V

    goto :goto_0
.end method
