.class public final enum Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
.super Ljava/lang/Enum;
.source "JsonSerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Typing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

.field public static final enum DYNAMIC:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

.field public static final enum STATIC:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 215
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    const-string v1, "DYNAMIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DYNAMIC:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    .line 221
    new-instance v1, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    const-string v3, "STATIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 209
    sput-object v3, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->$VALUES:[Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .locals 1

    .line 209
    const-class v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    return-object p0
.end method

.method public static values()[Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .locals 1

    .line 209
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->$VALUES:[Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    invoke-virtual {v0}, [Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shaded/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    return-object v0
.end method
