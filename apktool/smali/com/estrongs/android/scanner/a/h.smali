.class public Lcom/estrongs/android/scanner/a/h;
.super Lcom/estrongs/android/scanner/a/d;


# static fields
.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "insert into %s(pid, name, lastmodified, isLogPath, size, filetype, extension, groupname, pathtype, archive) values(?,?,?,?,?,?,?,?,?,?)"

    sput-object v0, Lcom/estrongs/android/scanner/a/h;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/scanner/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 3

    invoke-super {p0}, Lcom/estrongs/android/scanner/a/d;->a()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "archive"

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/a/h;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/estrongs/android/scanner/a/d;->a(Landroid/database/sqlite/SQLiteStatement;)V

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/a/h;->n()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method
