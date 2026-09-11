.class public Lcom/shaded/fasterxml/jackson/core/JsonParseException;
.super Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;
.source "JsonParseException.java"


# static fields
.field static final serialVersionUID:J = 0x7bL


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/JsonLocation;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/JsonLocation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/shaded/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/shaded/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    return-void
.end method
