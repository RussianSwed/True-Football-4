.class public Lcom/facebook/ads/internal/e/c;
.super Lcom/facebook/ads/internal/e/g;


# static fields
.field public static final a:Lcom/facebook/ads/internal/e/b;

.field public static final b:Lcom/facebook/ads/internal/e/b;

.field public static final c:Lcom/facebook/ads/internal/e/b;

.field public static final d:Lcom/facebook/ads/internal/e/b;

.field public static final e:Lcom/facebook/ads/internal/e/b;

.field public static final f:Lcom/facebook/ads/internal/e/b;

.field public static final g:Lcom/facebook/ads/internal/e/b;

.field public static final h:Lcom/facebook/ads/internal/e/b;

.field public static final i:[Lcom/facebook/ads/internal/e/b;

.field private static final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/facebook/ads/internal/e/b;

    const/4 v1, 0x0

    const-string v2, "event_id"

    const-string v3, "TEXT PRIMARY KEY"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/internal/e/c;->a:Lcom/facebook/ads/internal/e/b;

    new-instance v2, Lcom/facebook/ads/internal/e/b;

    const/4 v3, 0x1

    const-string v4, "token_id"

    const-string v5, "TEXT REFERENCES tokens ON UPDATE CASCADE ON DELETE RESTRICT"

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/facebook/ads/internal/e/c;->b:Lcom/facebook/ads/internal/e/b;

    new-instance v4, Lcom/facebook/ads/internal/e/b;

    const/4 v5, 0x2

    const-string v6, "priority"

    const-string v7, "INTEGER"

    invoke-direct {v4, v5, v6, v7}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/facebook/ads/internal/e/c;->c:Lcom/facebook/ads/internal/e/b;

    new-instance v6, Lcom/facebook/ads/internal/e/b;

    const/4 v7, 0x3

    const-string v8, "type"

    const-string v9, "TEXT"

    invoke-direct {v6, v7, v8, v9}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/facebook/ads/internal/e/c;->d:Lcom/facebook/ads/internal/e/b;

    new-instance v8, Lcom/facebook/ads/internal/e/b;

    const/4 v10, 0x4

    const-string v11, "time"

    const-string v12, "REAL"

    invoke-direct {v8, v10, v11, v12}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/facebook/ads/internal/e/c;->e:Lcom/facebook/ads/internal/e/b;

    new-instance v11, Lcom/facebook/ads/internal/e/b;

    const/4 v13, 0x5

    const-string v14, "session_time"

    invoke-direct {v11, v13, v14, v12}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/facebook/ads/internal/e/c;->f:Lcom/facebook/ads/internal/e/b;

    new-instance v12, Lcom/facebook/ads/internal/e/b;

    const/4 v14, 0x6

    const-string v15, "session_id"

    invoke-direct {v12, v14, v15, v9}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/facebook/ads/internal/e/c;->g:Lcom/facebook/ads/internal/e/b;

    new-instance v15, Lcom/facebook/ads/internal/e/b;

    const/4 v14, 0x7

    const-string v13, "data"

    invoke-direct {v15, v14, v13, v9}, Lcom/facebook/ads/internal/e/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/facebook/ads/internal/e/c;->h:Lcom/facebook/ads/internal/e/b;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/facebook/ads/internal/e/b;

    aput-object v0, v9, v1

    aput-object v2, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    aput-object v8, v9, v10

    const/4 v0, 0x5

    aput-object v11, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    aput-object v15, v9, v14

    sput-object v9, Lcom/facebook/ads/internal/e/c;->i:[Lcom/facebook/ads/internal/e/b;

    const-string v0, "events"

    invoke-static {v0, v9}, Lcom/facebook/ads/internal/e/c;->a(Ljava/lang/String;[Lcom/facebook/ads/internal/e/b;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/e/c;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/e/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/e/g;-><init>(Lcom/facebook/ads/internal/e/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "events"

    return-object v0
.end method

.method a(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    sget-object v2, Lcom/facebook/ads/internal/e/c;->a:Lcom/facebook/ads/internal/e/b;

    iget-object v2, v2, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/ads/internal/e/c;->b:Lcom/facebook/ads/internal/e/b;

    iget-object v2, v2, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/facebook/ads/internal/e/c;->c:Lcom/facebook/ads/internal/e/b;

    iget-object p1, p1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p1, Lcom/facebook/ads/internal/e/c;->d:Lcom/facebook/ads/internal/e/b;

    iget-object p1, p1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/facebook/ads/internal/e/c;->e:Lcom/facebook/ads/internal/e/b;

    iget-object p1, p1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    sget-object p1, Lcom/facebook/ads/internal/e/c;->f:Lcom/facebook/ads/internal/e/b;

    iget-object p1, p1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    sget-object p1, Lcom/facebook/ads/internal/e/c;->g:Lcom/facebook/ads/internal/e/b;

    iget-object p1, p1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/facebook/ads/internal/e/c;->h:Lcom/facebook/ads/internal/e/b;

    iget-object p1, p1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p9, :cond_0

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p9}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/c;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p3, "events"

    invoke-virtual {p1, p3, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-object v0
.end method

.method a(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/c;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/ads/internal/e/c;->a:Lcom/facebook/ads/internal/e/b;

    iget-object v2, v2, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "events"

    invoke-virtual {v0, p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public b()[Lcom/facebook/ads/internal/e/b;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/e/c;->i:[Lcom/facebook/ads/internal/e/b;

    return-object v0
.end method

.method c()Landroid/database/Cursor;
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/c;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT count(*) FROM events"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method d()Landroid/database/Cursor;
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/c;->f()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/c;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
