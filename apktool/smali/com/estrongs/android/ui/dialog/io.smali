.class Lcom/estrongs/android/ui/dialog/io;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/ui/dialog/ij;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ij;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/io;->d:Lcom/estrongs/android/ui/dialog/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/io;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/io;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/io;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/io;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/io;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/io;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/io;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/io;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/io;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/io;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
