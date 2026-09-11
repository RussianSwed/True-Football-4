.class Lcom/facebook/ads/internal/e/d$2;
.super Lcom/facebook/ads/internal/e/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/e/d;->a(Lcom/facebook/ads/internal/g/d;Lcom/facebook/ads/internal/e/a;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/e/i<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/g/d;

.field final synthetic b:Lcom/facebook/ads/internal/e/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/e/d;Lcom/facebook/ads/internal/g/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/e/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/g/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/e/d;->a(Lcom/facebook/ads/internal/e/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/e/d;->c(Lcom/facebook/ads/internal/e/d;)Lcom/facebook/ads/internal/e/c;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/e/d;->b(Lcom/facebook/ads/internal/e/d;)Lcom/facebook/ads/internal/e/h;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/g/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/ads/internal/e/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/d;->a()Lcom/facebook/ads/internal/g/h;

    move-result-object v2

    iget v5, v2, Lcom/facebook/ads/internal/g/h;->c:I

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/d;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/d;->e()D

    move-result-wide v7

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/d;->f()D

    move-result-wide v9

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/d;->g()Ljava/lang/String;

    move-result-object v11

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/d;->h()Ljava/util/Map;

    move-result-object v12

    invoke-virtual/range {v3 .. v12}, Lcom/facebook/ads/internal/e/c;->a(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/e/d;->d(Lcom/facebook/ads/internal/e/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/o;->a(Ljava/lang/Exception;Landroid/content/Context;)Lcom/facebook/ads/internal/g/p;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/e/d;->a(Lcom/facebook/ads/internal/e/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v0, v1

    :goto_1
    :try_start_3
    sget-object v3, Lcom/facebook/ads/internal/e/f$a;->c:Lcom/facebook/ads/internal/e/f$a;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/internal/e/d$2;->a(Lcom/facebook/ads/internal/e/f$a;)V

    iget-object v3, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-static {v3}, Lcom/facebook/ads/internal/e/d;->d(Lcom/facebook/ads/internal/e/d;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/util/o;->a(Ljava/lang/Exception;Landroid/content/Context;)Lcom/facebook/ads/internal/g/p;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/e/d;->d(Lcom/facebook/ads/internal/e/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/util/o;->a(Ljava/lang/Exception;Landroid/content/Context;)Lcom/facebook/ads/internal/g/p;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/e/d;->a(Lcom/facebook/ads/internal/e/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/e/d;->d(Lcom/facebook/ads/internal/e/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/util/o;->a(Ljava/lang/Exception;Landroid/content/Context;)Lcom/facebook/ads/internal/g/p;

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/e/d;->a(Lcom/facebook/ads/internal/e/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/d$2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
