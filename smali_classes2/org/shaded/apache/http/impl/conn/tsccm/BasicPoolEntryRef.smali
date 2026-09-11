.class public Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntryRef;
.super Ljava/lang/ref/WeakReference;
.source "BasicPoolEntryRef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final route:Lorg/shaded/apache/http/conn/routing/HttpRoute;


# direct methods
.method public constructor <init>(Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;

    move-result-object p1

    iput-object p1, p0, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->route:Lorg/shaded/apache/http/conn/routing/HttpRoute;

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pool entry must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getRoute()Lorg/shaded/apache/http/conn/routing/HttpRoute;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/shaded/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->route:Lorg/shaded/apache/http/conn/routing/HttpRoute;

    return-object v0
.end method
