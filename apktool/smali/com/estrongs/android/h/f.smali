.class public Lcom/estrongs/android/h/f;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static b:Lcom/estrongs/android/h/f;

.field private static d:Z

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static h:I

.field private static i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/h/i;",
            ">;"
        }
    .end annotation
.end field

.field private static j:I

.field private static k:I


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const v8, 0x7f0201a5

    const v7, 0x7f02019a

    const v6, 0x7f02018e

    const/4 v0, 0x0

    const v5, 0x7f02018d

    sput v0, Lcom/estrongs/android/h/f;->a:I

    sput-boolean v0, Lcom/estrongs/android/h/f;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    const/16 v0, 0x3c

    sput v0, Lcom/estrongs/android/h/f;->h:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/h/f;->i:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/estrongs/android/h/f;->j:I

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "dalvik.vm.heapsize"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/estrongs/android/h/f;->j:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x90011

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020187

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020187

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x40030

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x40031

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x40037

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x40050

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x40054

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x40052

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x40051

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x40055

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x40053

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x40040

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020189

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x40032

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020192

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x50039

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020197

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x4003c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x6004b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02019c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x70001

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02018f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x90001

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x90010

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020193

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->N:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0201a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->c:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020196

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->i:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02019f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->j:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0201a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->k:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0201a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->l:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0201a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->m:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02019d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->n:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02019e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->r:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->s:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->t:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02029f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->u:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->v:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->q:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02029e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->w:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->x:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->y:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->A:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->z:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->B:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->p:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020196

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->F:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02019e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->G:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->H:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->J:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->K:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02042c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->P:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02018a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->Q:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02018b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->R:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02018c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->M:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020297

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const-string v1, "-1"

    const v2, 0x7f0201a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x5003d

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x91000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x91001

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x92000

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x92001    # 8.38E-40f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x92002

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x92003

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x92004

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x6004c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x92004

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x80004

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x80005

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    const v1, 0x80002

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->D:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->d:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0201a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->f:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0201ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->e:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0203a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->g:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020485

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->h:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020486

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->C:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020298

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->o:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0203ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->E:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->S:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    sget-object v1, Lcom/estrongs/fs/w;->O:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020478

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/estrongs/android/h/f;->j:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_6

    sget v0, Lcom/estrongs/android/h/f;->j:I

    add-int/lit8 v0, v0, -0xa

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/estrongs/android/h/f;->h:I

    const/16 v0, 0x78

    sget v1, Lcom/estrongs/android/h/f;->j:I

    const/16 v2, 0x78

    if-lt v1, v2, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_4

    const/16 v0, 0x1f4

    :cond_1
    :goto_1
    sget v1, Lcom/estrongs/android/h/f;->h:I

    if-le v1, v0, :cond_2

    sput v0, Lcom/estrongs/android/h/f;->h:I

    :cond_2
    :goto_2
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_3

    const/16 v0, 0x18

    sput v0, Lcom/estrongs/android/h/f;->h:I

    :cond_3
    const/4 v0, -0x1

    sput v0, Lcom/estrongs/android/h/f;->k:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    sget v1, Lcom/estrongs/android/h/f;->j:I

    const/16 v2, 0x5a

    if-lt v1, v2, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_5

    const/16 v0, 0x12c

    goto :goto_1

    :cond_5
    sget v1, Lcom/estrongs/android/h/f;->j:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_1

    const/16 v0, 0xc8

    goto :goto_1

    :cond_6
    const/16 v0, 0x18

    sput v0, Lcom/estrongs/android/h/f;->h:I

    goto :goto_2
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/h/f;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/estrongs/android/h/f;->a()V

    new-instance v0, Lcom/estrongs/android/h/g;

    iget-object v1, p0, Lcom/estrongs/android/h/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/h/g;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/android/h/i;)V

    new-instance v0, Lcom/estrongs/android/h/j;

    iget-object v1, p0, Lcom/estrongs/android/h/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/h/j;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/android/h/i;)V

    new-instance v0, Lcom/estrongs/android/h/b;

    iget-object v1, p0, Lcom/estrongs/android/h/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/h/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/android/h/i;)V

    sget-boolean v0, Lcom/estrongs/android/pop/z;->M:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/h/c;

    iget-object v1, p0, Lcom/estrongs/android/h/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/h/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/android/h/i;)V

    :cond_0
    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/h/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/estrongs/fs/h;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Z

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/fs/h;Z[Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/estrongs/fs/h;Z[Z)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v2, Lcom/estrongs/android/h/f;->d:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/h/f;->i(Lcom/estrongs/fs/h;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/h/f;->j(Lcom/estrongs/fs/h;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/android/h/f;->b:Lcom/estrongs/android/h/f;

    if-nez v0, :cond_4

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/h/f;->c(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/h/f;->f(Lcom/estrongs/fs/h;)Ljava/lang/String;

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "device_name"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/h/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Lcom/estrongs/android/h/f;->b:Lcom/estrongs/android/h/f;

    iget-object v1, v1, Lcom/estrongs/android/h/f;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/at;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/estrongs/android/h/f;->c(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->a(Lcom/estrongs/fs/h;)I

    move-result v0

    sget-object v2, Lcom/estrongs/android/h/f;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/h/i;

    if-eqz v0, :cond_9

    invoke-interface {p0}, Lcom/estrongs/fs/h;->shouldTryLoadThumbnail()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_9

    :try_start_1
    invoke-interface {v0, p0}, Lcom/estrongs/android/h/i;->a(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    if-nez v0, :cond_7

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p0, v1}, Lcom/estrongs/fs/h;->setShouldTryLoadThumbnail(Z)V

    :cond_7
    :goto_2
    if-nez v0, :cond_8

    invoke-static {p0}, Lcom/estrongs/android/h/f;->c(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "IconManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to generate thumbnail for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_3

    array-length v1, p2

    if-lez v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, p2, v1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v0, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    sget-object v0, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v2, Lcom/estrongs/android/h/f;->b:Lcom/estrongs/android/h/f;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/h/a/e;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    monitor-exit v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/h/a/e;->b(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/estrongs/android/h/f;->b(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/estrongs/android/h/a/e;->a(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/h/f;
    .locals 1

    sget-object v0, Lcom/estrongs/android/h/f;->b:Lcom/estrongs/android/h/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/h/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/h/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/h/f;->b:Lcom/estrongs/android/h/f;

    :cond_0
    sget-object v0, Lcom/estrongs/android/h/f;->b:Lcom/estrongs/android/h/f;

    return-object v0
.end method

.method public static a(Lcom/estrongs/android/h/i;)V
    .locals 5

    invoke-interface {p0}, Lcom/estrongs/android/h/i;->d()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/estrongs/android/h/f;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->a(Lcom/estrongs/fs/h;)I

    move-result v0

    sget-object v1, Lcom/estrongs/android/h/f;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/h/i;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/estrongs/android/h/i;->a(Lcom/estrongs/fs/h;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "IconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to generate thumbnail for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget-object v0, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/estrongs/android/h/f;->d:Z

    return-void
.end method

.method public static a(Lcom/estrongs/fs/h;)Z
    .locals 2

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->a(Lcom/estrongs/fs/h;)I

    move-result v0

    sget-object v1, Lcom/estrongs/android/h/f;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/h/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/estrongs/android/h/i;->h(Lcom/estrongs/fs/h;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f020198

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f020195

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->g(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f020194

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->j(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f02019b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->k(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0201a6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/estrongs/android/h/f;->d:Z

    return v0
.end method

.method public static b(Lcom/estrongs/fs/h;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->b(Lcom/estrongs/fs/h;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->a(Lcom/estrongs/fs/h;)I

    move-result v2

    invoke-static {v2}, Lcom/estrongs/android/util/bg;->g(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->M(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    sget-object v1, Lcom/estrongs/android/h/f;->i:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->a(Lcom/estrongs/fs/h;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->a(Lcom/estrongs/fs/h;)I

    move-result v1

    const v2, 0x10016

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/estrongs/android/h/f;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c()I
    .locals 4

    const/16 v3, 0x40

    const/16 v2, 0x20

    sget v0, Lcom/estrongs/android/h/f;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/estrongs/android/h/f;->j:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    const/16 v0, 0x60

    sput v0, Lcom/estrongs/android/h/f;->k:I

    :cond_0
    :goto_0
    sget v0, Lcom/estrongs/android/h/f;->k:I

    return v0

    :cond_1
    sget v0, Lcom/estrongs/android/h/f;->j:I

    if-lt v0, v3, :cond_2

    sput v3, Lcom/estrongs/android/h/f;->k:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/estrongs/android/h/f;->j:I

    if-lt v0, v2, :cond_3

    const/16 v0, 0x30

    sput v0, Lcom/estrongs/android/h/f;->k:I

    goto :goto_0

    :cond_3
    sput v2, Lcom/estrongs/android/h/f;->k:I

    goto :goto_0
.end method

.method public static c(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "device_name"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/h/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/estrongs/android/h/f;->b:Lcom/estrongs/android/h/f;

    iget-object v1, v1, Lcom/estrongs/android/h/f;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/at;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/estrongs/fs/impl/b/a;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/estrongs/fs/impl/b/a;

    invoke-virtual {p0}, Lcom/estrongs/fs/impl/b/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/estrongs/fs/impl/b/d;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/estrongs/fs/impl/adb/a;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/estrongs/android/h/f;->b()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/estrongs/android/h/f;->b:Lcom/estrongs/android/h/f;

    iget-object v0, v0, Lcom/estrongs/android/h/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f020188

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/h/f;->e(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/h/f;->b(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/android/h/f;->a(Lcom/estrongs/fs/h;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/estrongs/fs/h;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x40032

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/util/bg;->a(Lcom/estrongs/fs/h;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Lcom/estrongs/fs/h;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "item_icon_file_name"

    invoke-interface {p0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "item_icon_file_name"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "item_icon_file_name"

    invoke-interface {p0, v1, v0}, Lcom/estrongs/fs/h;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/h/f;->i(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "210_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "album_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static g(Lcom/estrongs/fs/h;)I
    .locals 2

    instance-of v0, p0, Lcom/estrongs/fs/impl/pcs/b;

    if-eqz v0, :cond_0

    const v0, 0x7f02018b

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020190

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/estrongs/android/util/bg;->a(Lcom/estrongs/fs/h;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/estrongs/android/h/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/estrongs/android/h/f;->b(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    const v0, 0x7f0201a4

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static h(Lcom/estrongs/fs/h;)I
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/h/f;->i(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd2

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/estrongs/android/h/f;->c()I

    move-result v0

    goto :goto_0
.end method

.method public static i(Lcom/estrongs/fs/h;)Z
    .locals 1

    const-string v0, "need_210_thumbnail"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "need_210_thumbnail"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Lcom/estrongs/fs/h;)Z
    .locals 2

    const-string v0, "forece_thumbnail"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Lcom/estrongs/fs/h;)Ljava/lang/String;
    .locals 2

    const-string v0, "device_name"

    invoke-interface {p0, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/h/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/estrongs/fs/impl/b/a;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/estrongs/fs/impl/b/d;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/estrongs/fs/impl/adb/a;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/estrongs/android/h/f;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f020188

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/estrongs/android/h/f;->e(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/h/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    sget-object v1, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/h/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    sget-object v2, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    invoke-virtual {v2}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/h/f;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/at;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/h/f;->e:Ljava/util/HashMap;

    const-string v2, "-1"

    const v3, 0x7f0201a4

    invoke-direct {p0, v3}, Lcom/estrongs/android/h/f;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/h/i;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/estrongs/android/h/f;->i:Ljava/util/HashMap;

    return-object v0
.end method
