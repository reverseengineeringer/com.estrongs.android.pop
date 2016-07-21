.class public Lcom/estrongs/android/pop/app/messagebox/x;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/messagebox/w;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/messagebox/w;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/x;->a:Lcom/estrongs/android/pop/app/messagebox/w;

    const-string v0, "message_box_list.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS messages_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,msg_deadline INTEGER,msg_text TEXT,icon_url TEXT,click_action INTEGER,click_params TEXT,guide_page TEXT,msg_status INTEGER,msg_type INTEGER,msg_recommend_id TEXT,msg_time INTEGER,del INTEGER,hpmessage_icon TEXT,hpmessage_content TEXT,hpmessage_button TEXT,st INTEGER,UNIQUE (msg_recommend_id) ON CONFLICT IGNORE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const-string v0, "ALTER TABLE messages_list ADD COLUMN del INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE messages_list ADD COLUMN st INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
