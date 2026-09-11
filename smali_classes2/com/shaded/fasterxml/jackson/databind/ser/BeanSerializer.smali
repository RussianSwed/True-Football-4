.class public Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;
.super Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.source "BeanSerializer.java"


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;)V

    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    return-void
.end method

.method protected constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Ljava/lang/String;)V

    return-void
.end method

.method public static createDummy(Lcom/shaded/fasterxml/jackson/databind/JavaType;)Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;
    .locals 3

    .line 76
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;

    sget-object v1, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->NO_PROPS:[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/JavaType;Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/shaded/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    return-object v0
.end method


# virtual methods
.method protected asArraySerializer()Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->_objectIdWriter:Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->_anyGetterWriter:Lcom/shaded/fasterxml/jackson/databind/ser/AnyGetterWriter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->_propertyFilterId:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;

    invoke-direct {v0, p0}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/BeanAsArraySerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final serialize(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->_objectIdWriter:Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->_serializeWithObjectId(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;Z)V

    return-void

    .line 138
    :cond_0
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 139
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->serializeFields(Ljava/lang/Object;Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V

    .line 144
    :goto_0
    invoke-virtual {p2}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeanSerializer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrappingSerializer(Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;)Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;",
            ")",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;

    invoke-direct {v0, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/impl/UnwrappingBeanSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/shaded/fasterxml/jackson/databind/util/NameTransformer;)V

    return-object v0
.end method

.method protected withIgnorals([Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;
    .locals 1

    .line 91
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;

    invoke-direct {v0, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic withIgnorals([Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->withIgnorals([Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object p1

    return-object p1
.end method

.method public withObjectIdWriter(Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;
    .locals 1

    .line 86
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;

    invoke-direct {v0, p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;-><init>(Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    return-object v0
.end method

.method public bridge synthetic withObjectIdWriter(Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/shaded/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;->withObjectIdWriter(Lcom/shaded/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/shaded/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object p1

    return-object p1
.end method
