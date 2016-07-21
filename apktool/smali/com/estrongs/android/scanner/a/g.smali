.class public Lcom/estrongs/android/scanner/a/g;
.super Lcom/estrongs/android/scanner/a/e;


# instance fields
.field private a:I

.field private b:Lcom/estrongs/android/scanner/a/c;

.field private c:Lcom/estrongs/android/scanner/d/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/scanner/a/e;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/scanner/a/g;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/scanner/a/e;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/scanner/a/g;->a:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/estrongs/android/scanner/a/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/a/g;->b:Lcom/estrongs/android/scanner/a/c;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/scanner/a/g;->a:I

    return-void
.end method

.method public final a(Lcom/estrongs/android/scanner/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/a/g;->b:Lcom/estrongs/android/scanner/a/c;

    return-void
.end method

.method public final a(Lcom/estrongs/android/scanner/d/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/a/g;->c:Lcom/estrongs/android/scanner/d/w;

    return-void
.end method

.method public final b()Lcom/estrongs/android/scanner/d/w;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/a/g;->c:Lcom/estrongs/android/scanner/d/w;

    return-object v0
.end method
