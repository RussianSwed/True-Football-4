.class public final enum Lcom/firebase/client/Logger$Level;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/firebase/client/Logger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/client/Logger$Level;

.field public static final enum DEBUG:Lcom/firebase/client/Logger$Level;

.field public static final enum ERROR:Lcom/firebase/client/Logger$Level;

.field public static final enum INFO:Lcom/firebase/client/Logger$Level;

.field public static final enum NONE:Lcom/firebase/client/Logger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 18
    new-instance v0, Lcom/firebase/client/Logger$Level;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/Logger$Level;->DEBUG:Lcom/firebase/client/Logger$Level;

    new-instance v1, Lcom/firebase/client/Logger$Level;

    const-string v3, "INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/firebase/client/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/firebase/client/Logger$Level;->INFO:Lcom/firebase/client/Logger$Level;

    new-instance v3, Lcom/firebase/client/Logger$Level;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/firebase/client/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/firebase/client/Logger$Level;->ERROR:Lcom/firebase/client/Logger$Level;

    new-instance v5, Lcom/firebase/client/Logger$Level;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/firebase/client/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/firebase/client/Logger$Level;->NONE:Lcom/firebase/client/Logger$Level;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/firebase/client/Logger$Level;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/firebase/client/Logger$Level;->$VALUES:[Lcom/firebase/client/Logger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/client/Logger$Level;
    .locals 1

    .line 18
    const-class v0, Lcom/firebase/client/Logger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/firebase/client/Logger$Level;

    return-object p0
.end method

.method public static values()[Lcom/firebase/client/Logger$Level;
    .locals 1

    .line 18
    sget-object v0, Lcom/firebase/client/Logger$Level;->$VALUES:[Lcom/firebase/client/Logger$Level;

    invoke-virtual {v0}, [Lcom/firebase/client/Logger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/client/Logger$Level;

    return-object v0
.end method
