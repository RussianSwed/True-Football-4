.class Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;
.super Ljava/lang/Object;
.source "ObjectMapper.java"

# interfaces
.implements Lcom/shaded/fasterxml/jackson/databind/Module$SetupContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/shaded/fasterxml/jackson/databind/Module;)Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

.field final synthetic val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->this$0:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAbstractTypeResolver(Lcom/shaded/fasterxml/jackson/databind/AbstractTypeResolver;)V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->withAbstractTypeResolver(Lcom/shaded/fasterxml/jackson/databind/AbstractTypeResolver;)Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object p1

    .line 617
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public addBeanDeserializerModifier(Lcom/shaded/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->withDeserializerModifier(Lcom/shaded/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object p1

    .line 592
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public addBeanSerializerModifier(Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;->withSerializerModifier(Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerModifier;)Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;

    move-result-object p1

    iput-object p1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;

    return-void
.end method

.method public addDeserializationProblemHandler(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->addHandler(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public addDeserializers(Lcom/shaded/fasterxml/jackson/databind/deser/Deserializers;)V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->withAdditionalDeserializers(Lcom/shaded/fasterxml/jackson/databind/deser/Deserializers;)Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object p1

    .line 580
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public addKeyDeserializers(Lcom/shaded/fasterxml/jackson/databind/deser/KeyDeserializers;)V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->withAdditionalKeyDeserializers(Lcom/shaded/fasterxml/jackson/databind/deser/KeyDeserializers;)Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object p1

    .line 586
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public addKeySerializers(Lcom/shaded/fasterxml/jackson/databind/ser/Serializers;)V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;->withAdditionalKeySerializers(Lcom/shaded/fasterxml/jackson/databind/ser/Serializers;)Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;

    move-result-object p1

    iput-object p1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;

    return-void
.end method

.method public addSerializers(Lcom/shaded/fasterxml/jackson/databind/ser/Serializers;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;->withAdditionalSerializers(Lcom/shaded/fasterxml/jackson/databind/ser/Serializers;)Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;

    move-result-object p1

    iput-object p1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/shaded/fasterxml/jackson/databind/ser/SerializerFactory;

    return-void
.end method

.method public addTypeModifier(Lcom/shaded/fasterxml/jackson/databind/type/TypeModifier;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    .line 623
    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;->withModifier(Lcom/shaded/fasterxml/jackson/databind/type/TypeModifier;)Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p1

    .line 624
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->setTypeFactory(Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;)Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public addValueInstantiators(Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiators;)V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_factory:Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;->withValueInstantiators(Lcom/shaded/fasterxml/jackson/databind/deser/ValueInstantiators;)Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object p1

    .line 630
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->with(Lcom/shaded/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object p1

    iput-object p1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/shaded/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-void
.end method

.method public appendAnnotationIntrospector(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->withAppendedAnnotationIntrospector(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    .line 648
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;->withAppendedAnnotationIntrospector(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    iput-object p1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;

    return-void
.end method

.method public getMapperVersion()Lcom/shaded/fasterxml/jackson/core/Version;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->this$0:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->version()Lcom/shaded/fasterxml/jackson/core/Version;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Lcom/shaded/fasterxml/jackson/core/ObjectCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lcom/shaded/fasterxml/jackson/core/ObjectCodec;",
            ">()TC;"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public getTypeFactory()Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->this$0:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/shaded/fasterxml/jackson/databind/type/TypeFactory;

    return-object v0
.end method

.method public insertAnnotationIntrospector(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->withInsertedAnnotationIntrospector(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    .line 642
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;->withInsertedAnnotationIntrospector(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    iput-object p1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;

    return-void
.end method

.method public isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonFactory$Feature;)Z
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonFactory$Feature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/shaded/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/shaded/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/shaded/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/shaded/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/shaded/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/shaded/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p1

    return p1
.end method

.method public varargs registerSubtypes([Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Lcom/shaded/fasterxml/jackson/databind/jsontype/NamedType;)V

    return-void
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Ljava/lang/Class;)V

    return-void
.end method

.method public setClassIntrospector(Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector;)V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/shaded/fasterxml/jackson/databind/DeserializationConfig;

    .line 636
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/shaded/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    iput-object p1, v0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/shaded/fasterxml/jackson/databind/SerializationConfig;

    return-void
.end method

.method public setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper$1;->val$mapper:Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ObjectMapper;->addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method
