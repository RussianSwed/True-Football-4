.class public Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;
.super Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;
.source "BasicPoolEntry.java"


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/conn/ClientConnectionOperator;Lorg/shaded/apache/http/conn/routing/HttpRoute;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;-><init>(Lorg/shaded/apache/http/conn/ClientConnectionOperator;Lorg/shaded/apache/http/conn/routing/HttpRoute;)V

    if-eqz p2, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP route may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/shaded/apache/http/conn/ClientConnectionOperator;Lorg/shaded/apache/http/conn/routing/HttpRoute;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/shaded/apache/http/conn/ClientConnectionOperator;",
            "Lorg/shaded/apache/http/conn/routing/HttpRoute;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;-><init>(Lorg/shaded/apache/http/conn/ClientConnectionOperator;Lorg/shaded/apache/http/conn/routing/HttpRoute;)V

    if-eqz p2, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP route may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final getConnection()Lorg/shaded/apache/http/conn/OperatedClientConnection;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/shaded/apache/http/conn/OperatedClientConnection;

    return-object v0
.end method

.method protected final getPlannedRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;->route:Lorg/shaded/apache/http/conn/routing/HttpRoute;

    return-object v0
.end method

.method protected final getWeakRef()Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntryRef;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected shutdownEntry()V
    .locals 0

    .line 85
    invoke-super {p0}, Lorg/shaded/apache/http/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    return-void
.end method
