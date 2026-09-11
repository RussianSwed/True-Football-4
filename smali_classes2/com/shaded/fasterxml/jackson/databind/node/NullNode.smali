.class public final Lcom/shaded/fasterxml/jackson/databind/node/NullNode;
.super Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;
.source "NullNode.java"


# static fields
.field public static final instance:Lcom/shaded/fasterxml/jackson/databind/node/NullNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    invoke-direct {v0}, Lcom/shaded/fasterxml/jackson/databind/node/NullNode;-><init>()V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/shaded/fasterxml/jackson/databind/node/NullNode;
    .locals 1

    .line 22
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/shaded/fasterxml/jackson/databind/node/NullNode;

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method

.method public asToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 30
    sget-object v0, Lcom/shaded/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/shaded/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getNodeType()Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeType;
    .locals 1

    .line 27
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeType;->NULL:Lcom/shaded/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method

.method public final serialize(Lcom/shaded/fasterxml/jackson/core/JsonGenerator;Lcom/shaded/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/shaded/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    return-void
.end method
