.class Lcom/estrongs/android/ui/adapter/c;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/b;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/b;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/c;->a:Lcom/estrongs/android/ui/adapter/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/ui/adapter/c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/estrongs/android/ui/adapter/c;->c:I

    iput-object p4, p0, Lcom/estrongs/android/ui/adapter/c;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/adapter/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/adapter/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/adapter/c;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/adapter/c;->c:I

    return v0
.end method
