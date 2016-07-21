.class Lcom/estrongs/android/k/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/k/c;


# instance fields
.field final synthetic a:Lcom/estrongs/android/k/d;

.field final synthetic b:Lcom/estrongs/android/k/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/k/a;Lcom/estrongs/android/k/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/k/b;->b:Lcom/estrongs/android/k/a;

    iput-object p2, p0, Lcom/estrongs/android/k/b;->a:Lcom/estrongs/android/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/k/b;->a:Lcom/estrongs/android/k/d;

    invoke-virtual {v1}, Lcom/estrongs/android/k/d;->a()Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/k/b;->b:Lcom/estrongs/android/k/a;

    invoke-static {v2}, Lcom/estrongs/android/k/a;->a(Lcom/estrongs/android/k/a;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "lock"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
