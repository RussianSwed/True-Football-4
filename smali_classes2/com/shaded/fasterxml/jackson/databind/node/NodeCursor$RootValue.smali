.class public final Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor$RootValue;
.super Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RootValue"
.end annotation


# instance fields
.field protected _done:Z

.field protected _node:Lcom/shaded/fasterxml/jackson/databind/JsonNode;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/JsonNode;Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0, p2}, Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor;-><init>(ILcom/shaded/fasterxml/jackson/databind/node/NodeCursor;)V

    .line 102
    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_done:Z

    .line 106
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_node:Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    return-void
.end method


# virtual methods
.method public currentHasChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public currentNode()Lcom/shaded/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_node:Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public endToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/shaded/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor;->getParent()Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_done:Z

    .line 118
    iget-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_node:Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/shaded/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor$RootValue;->_node:Lcom/shaded/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public nextValue()Lcom/shaded/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/shaded/fasterxml/jackson/databind/node/NodeCursor$RootValue;->nextToken()Lcom/shaded/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public overrideCurrentName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
