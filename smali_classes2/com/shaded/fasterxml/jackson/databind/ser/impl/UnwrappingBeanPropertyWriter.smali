.class public Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;
.super Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.source "UnwrappingBeanPropertyWriter.java"


# instance fields
.field protected final _nameTransformer:Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 34
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nameTransformer:Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;

    return-void
.end method

.method private constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;Lcom/shaded/fasterxml/jackson/core/io/SerializedString;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/shaded/fasterxml/jackson/core/io/SerializedString;)V

    .line 40
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nameTransformer:Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;

    return-void
.end method


# virtual methods
.method protected _findAndAddDynamic(Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/shaded/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 126
    iget-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nonTrivialBaseType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nonTrivialBaseType:Lcom/shaded/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p3, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/shaded/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    .line 128
    invoke-virtual {p3, p1, p0}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p3, p2, p0}, Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/BeanProperty;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p1

    .line 132
    :goto_0
    iget-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nameTransformer:Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;

    .line 133
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->isUnwrappingSerializer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    move-object v0, p1

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->_nameTransformer:Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;

    invoke-static {p3, v0}, Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;->chainedTransformer(Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;)Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object p3

    .line 136
    :cond_1
    invoke-virtual {p1, p3}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->unwrappingSerializer(Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p1

    .line 138
    iget-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_dynamicSerializers:Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {p3, p2, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->newWith(Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object p2

    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_dynamicSerializers:Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    return-object p1
.end method

.method public assignSerializer(Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-super {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V

    .line 111
    iget-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nameTransformer:Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;

    .line 113
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->isUnwrappingSerializer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    check-cast v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;

    iget-object v0, v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;->_nameTransformer:Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;

    invoke-static {p1, v0}, Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;->chainedTransformer(Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;)Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object p1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v0, p1}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->unwrappingSerializer(Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object p1

    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    :cond_1
    return-void
.end method

.method public bridge synthetic rename(Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;)Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->rename(Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;)Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;

    move-result-object p1

    return-object p1
.end method

.method public rename(Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;)Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_name:Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/core/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_nameTransformer:Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;

    invoke-static {p1, v1}, Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;->chainedTransformer(Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;)Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object p1

    .line 52
    new-instance v1, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;

    new-instance v2, Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v2, v0}, Lcom/shaded/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, p1, v2}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;Lcom/shaded/fasterxml/jackson/core/io/SerializedString;)V

    return-object v1
.end method

.method public serializeAsField(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_serializer:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    if-nez v1, :cond_2

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_dynamicSerializers:Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 75
    invoke-virtual {v2, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    if-nez v3, :cond_1

    .line 77
    invoke-virtual {p0, v2, v1, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_findAndAddDynamic(Lcom/shaded/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 80
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 81
    sget-object v2, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    iget-object v3, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-ne v2, v3, :cond_3

    .line 82
    invoke-virtual {v1, v0}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    if-ne v0, p1, :cond_5

    .line 91
    invoke-virtual {p0, p1, v1}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_handleSelfReference(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V

    .line 95
    :cond_5
    invoke-virtual {v1}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->isUnwrappingSerializer()Z

    move-result p1

    if-nez p1, :cond_6

    .line 96
    iget-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_name:Lcom/shaded/fasterxml/jackson/core/io/SerializedString;

    invoke-virtual {p2, p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/shaded/fasterxml/jackson/core/SerializableString;)V

    .line 99
    :cond_6
    iget-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_typeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-nez p1, :cond_7

    .line 100
    invoke-virtual {v1, v0, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1

    .line 102
    :cond_7
    iget-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->_typeSerializer:Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-virtual {v1, v0, p2, p3, p1}, Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Lcom/shaded/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    :goto_1
    return-void
.end method
