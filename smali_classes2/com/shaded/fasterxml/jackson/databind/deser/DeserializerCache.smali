.class public final Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;
.super Ljava/lang/Object;
.source "DeserializerCache.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final _incompleteDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;

    return-void
.end method

.method private _verifyAsClass(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 548
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 551
    check-cast p1, Ljava/lang/Class;

    if-eq p1, p3, :cond_2

    .line 552
    const-class p2, Lcom/shaded/fasterxml/jackson/databind/annotation/NoClass;

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object v0

    .line 549
    :cond_3
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnnotationIntrospector."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() returned value of type "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": expected type JsonSerializer or Class<JsonSerializer> instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private modifyTypeByAnnotation(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JavaType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 471
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 472
    invoke-virtual {v0, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 475
    :try_start_0
    invoke-virtual {p3, v1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 477
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to narrow type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " with concrete-type annotation (value "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "), method \'"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\': "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, v2, p1}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    throw v0

    .line 482
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 483
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationKeyType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "): "

    if-eqz v1, :cond_2

    .line 486
    instance-of v4, p3, Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;

    if-eqz v4, :cond_1

    .line 490
    :try_start_1
    move-object v4, p3

    check-cast v4, Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;

    invoke-virtual {v4, v1}, Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;->narrowKey(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 492
    new-instance p2, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to narrow key type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " with key-type annotation ("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v2, p1}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    throw p2

    .line 487
    :cond_1
    new-instance p1, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal key-type annotation: type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not a Map(-like) type"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 495
    :cond_2
    :goto_1
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 500
    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 501
    invoke-virtual {v0, p2}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 503
    invoke-virtual {p1, p2, v1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->keyDeserializerInstance(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 505
    check-cast p3, Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;

    invoke-virtual {p3, v1}, Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;->withKeyValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object p3

    .line 506
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/shaded/fasterxml/jackson/databind/JavaType;

    .line 512
    :cond_3
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationContentType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 515
    :try_start_2
    invoke-virtual {p3, v1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->narrowContentsBy(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 517
    new-instance p2, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to narrow content type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " with content-type annotation ("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v2, p1}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    throw p2

    .line 521
    :cond_4
    :goto_2
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 522
    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    .line 523
    invoke-virtual {v0, p2}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 526
    instance-of v1, v0, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v1, :cond_5

    .line 527
    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_3

    .line 529
    :cond_5
    const-class v1, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer$None;

    const-string v3, "findContentDeserializer"

    invoke-direct {p0, v0, v3, v1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_verifyAsClass(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 531
    invoke-virtual {p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 535
    invoke-virtual {p3, v2}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->withContentValueHandler(Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    :cond_7
    return-object p3
.end method


# virtual methods
.method protected _createAndCache2(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 267
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_createDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    return-object v0

    .line 281
    :cond_0
    instance-of v0, p2, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    .line 282
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;->isCachable()Z

    move-result v1

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    move-object v0, p2

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    invoke-interface {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)V

    .line 299
    iget-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_2

    .line 302
    iget-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    .line 272
    new-instance p2, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v0, p1}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected _createAndCacheValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;

    monitor-enter v0

    .line 233
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_findCachedDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    monitor-exit v0

    return-object v1

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 240
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v2, :cond_1

    .line 242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v2

    .line 247
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_createAndCache2(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 250
    :try_start_2
    iget-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 251
    iget-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    :cond_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    if-nez v1, :cond_3

    .line 250
    iget-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 251
    iget-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    :cond_3
    throw p1

    :catchall_1
    move-exception p1

    .line 254
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method protected _createDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 326
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->isCollectionLikeType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    invoke-virtual {p2, v0, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->mapAbstractType(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 329
    :cond_1
    invoke-virtual {v0, p3}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->findDeserializerFromAnnotation(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    .line 338
    :cond_2
    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->modifyTypeByAnnotation(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    if-eq v2, p3, :cond_3

    .line 341
    invoke-virtual {v0, v2}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    move-object p3, v2

    .line 345
    :cond_3
    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/databind/BeanDescription;->findPOJOBuilder()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 347
    invoke-virtual {p2, p1, p3, v1, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->createBuilderBasedDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 352
    :cond_4
    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/databind/BeanDescription;->findDeserializationConverter()Lcom/shaded/fasterxml/jackson/databind/util/Converter;

    move-result-object v0

    if-nez v0, :cond_5

    .line 354
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_createDeserializer2(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 357
    :cond_5
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p3

    invoke-interface {v0, p3}, Lcom/shaded/fasterxml/jackson/databind/util/Converter;->getInputType(Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 358
    new-instance v2, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_createDeserializer2(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    invoke-direct {v2, v0, p3, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/util/Converter;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v2
.end method

.method protected _createDeserializer2(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            "Lcom/shaded/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 366
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 368
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p2, p1, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->createEnumDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 371
    :cond_0
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 372
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    check-cast p3, Lcom/shaded/fasterxml/jackson/databind/type/ArrayType;

    invoke-virtual {p2, p1, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->createArrayDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/type/ArrayType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 375
    :cond_1
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    check-cast p3, Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;

    .line 377
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;->isTrueMapType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    check-cast p3, Lcom/shaded/fasterxml/jackson/databind/type/MapType;

    invoke-virtual {p2, p1, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->createMapDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/type/MapType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 380
    :cond_2
    invoke-virtual {p2, p1, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->createMapLikeDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/type/MapLikeType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 382
    :cond_3
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->isCollectionLikeType()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 388
    invoke-virtual {p4, v1}, Lcom/shaded/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/shaded/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/shaded/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 389
    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/shaded/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v1

    sget-object v2, Lcom/shaded/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/shaded/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq v1, v2, :cond_6

    .line 390
    :cond_4
    check-cast p3, Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;

    .line 391
    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;->isTrueCollectionType()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    check-cast p3, Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;

    invoke-virtual {p2, p1, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->createCollectionDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/type/CollectionType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 394
    :cond_5
    invoke-virtual {p2, p1, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->createCollectionLikeDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 398
    :cond_6
    const-class v1, Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {p3}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 399
    invoke-virtual {p2, v0, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->createTreeDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 401
    :cond_7
    invoke-virtual {p2, p1, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->createBeanDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanDescription;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    return-object p1
.end method

.method protected _findCachedDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    return-object p1

    .line 211
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null JavaType passed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected _handleUnknownKeyDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 580
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a (Map) Key deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _handleUnknownValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 570
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 571
    invoke-static {v0}, Lcom/shaded/fasterxml/jackson/databind/util/ClassUtil;->isConcrete(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a Value deserializer for abstract type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_0
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a Value deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cachedDeserializersCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method protected findConverter(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/util/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/util/Converter<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 444
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationConverter(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 448
    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->converterInstance(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/util/Converter;

    move-result-object p1

    return-object p1
.end method

.method protected findConvertingDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 432
    invoke-virtual {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->findConverter(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/util/Converter;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p3

    .line 436
    :cond_0
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/shaded/fasterxml/jackson/databind/util/Converter;->getInputType(Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    .line 437
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {v0, p2, p1, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/util/Converter;Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method

.method protected findDeserializerFromAnnotation(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 413
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 417
    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 419
    invoke-virtual {p0, p1, p2, v0}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->findConvertingDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public findKeyDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 169
    invoke-virtual {p2, p1, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->createKeyDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object p2

    if-nez p2, :cond_0

    .line 171
    invoke-virtual {p0, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_handleUnknownKeyDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object p1

    return-object p1

    .line 174
    :cond_0
    instance-of p3, p2, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    if-eqz p3, :cond_1

    .line 175
    move-object p3, p2

    check-cast p3, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    invoke-interface {p3, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;)V

    :cond_1
    return-object p2
.end method

.method public findValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_findCachedDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 146
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_createAndCacheValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    if-nez p1, :cond_1

    .line 152
    invoke-virtual {p0, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_handleUnknownValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public flushCachedDeserializers()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public hasValueDeserializerFor(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Z
    .locals 2

    .line 191
    invoke-virtual {p0, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_findCachedDeserializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 194
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_createAndCacheValueDeserializer(Lcom/shaded/fasterxml/jackson/databind/DeserializationContext;Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-object p0
.end method
