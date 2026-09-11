.class public abstract Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;
.super Ljava/lang/Object;
.source "AnnotationIntrospector.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/core/Versioned;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector$Pair;,
        Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nopInstance()Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .line 102
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;->instance:Lcom/shaded/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;

    return-object v0
.end method

.method public static pair(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .line 106
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;

    invoke-direct {v0, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;-><init>(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)V

    return-object v0
.end method


# virtual methods
.method public allIntrospectors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public findAutoDetectVisibility(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation

    return-object p2
.end method

.method public findContentDeserializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findContentSerializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationContentConverter(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationContentType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationConverter(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationKeyType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 806
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findFilterId(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findFormat(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1

    .line 503
    instance-of v0, p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-eqz v0, :cond_0

    .line 504
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/shaded/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFormat(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/shaded/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findIgnoreUnknownProperties(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findInjectableValueId(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findKeyDeserializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findKeySerializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findNameForDeserialization(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .line 1008
    instance-of v0, p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1009
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1010
    :cond_0
    instance-of v0, p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v0, :cond_1

    .line 1011
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1012
    :cond_1
    instance-of v0, p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    if-eqz v0, :cond_2

    .line 1013
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 1018
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1019
    sget-object p1, Lcom/shaded/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/shaded/fasterxml/jackson/databind/PropertyName;

    return-object p1

    .line 1021
    :cond_3
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_4
    return-object v1
.end method

.method public findNameForSerialization(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .line 734
    instance-of v0, p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 735
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 736
    :cond_0
    instance-of v0, p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v0, :cond_1

    .line 737
    check-cast p1, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 743
    sget-object p1, Lcom/shaded/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/shaded/fasterxml/jackson/databind/PropertyName;

    return-object p1

    .line 745
    :cond_2
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    return-object v1
.end method

.method public findNamingStrategy(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findObjectIdInfo(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findObjectReferenceInfo(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/shaded/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 0

    return-object p2
.end method

.method public findPOJOBuilder(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findPOJOBuilderConfig(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/shaded/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findPropertiesToIgnore(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findPropertyContentTypeResolver(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findPropertyTypeResolver(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findReferenceType(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findRootName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/shaded/fasterxml/jackson/databind/PropertyName;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationContentConverter(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationContentType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationConverter(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationInclusion(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/shaded/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 0

    return-object p2
.end method

.method public findSerializationKeyType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationPropertyOrder(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationSortAlphabetically(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationType(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationTyping(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializer(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSubtypes(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/util/List<",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findTypeName(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findTypeResolver(Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/shaded/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findUnwrappingNameTransformer(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findValueInstantiator(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findViews(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findWrapperName(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Lcom/shaded/fasterxml/jackson/databind/PropertyName;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasAnyGetterAnnotation(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasAnySetterAnnotation(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasAsValueAnnotation(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasCreatorAnnotation(Lcom/shaded/fasterxml/jackson/databind/introspect/Annotated;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasIgnoreMarker(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasRequiredMarker(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isIgnorableType(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isTypeId(Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract version()Lcom/shaded/fasterxml/jackson/core/Version;
.end method
