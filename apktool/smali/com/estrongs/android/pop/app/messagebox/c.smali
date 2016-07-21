.class public Lcom/estrongs/android/pop/app/messagebox/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:[Lcom/estrongs/android/pop/app/messagebox/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.estrongs.android.pop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/msgbox/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/app/messagebox/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "img_download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/c;->b:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/estrongs/android/pop/app/messagebox/d;

    const/4 v1, 0x0

    new-instance v2, Lcom/estrongs/android/pop/app/messagebox/d;

    const-string v3, "com.facebook.katana"

    const v4, 0x7f0802e6

    const v5, 0x7f020099

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/pop/app/messagebox/d;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/estrongs/android/pop/app/messagebox/d;

    const-string v3, "com.google.android.apps.plus"

    const v4, 0x7f08033e

    const v5, 0x7f0203a7

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/pop/app/messagebox/d;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/c;->c:[Lcom/estrongs/android/pop/app/messagebox/d;

    return-void
.end method
