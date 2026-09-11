.class public final enum Lcom/firebase/simplelogin/enums/Provider;
.super Ljava/lang/Enum;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/firebase/simplelogin/enums/Provider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/simplelogin/enums/Provider;

.field public static final enum ANONYMOUS:Lcom/firebase/simplelogin/enums/Provider;

.field public static final enum FACEBOOK:Lcom/firebase/simplelogin/enums/Provider;

.field public static final enum GITHUB:Lcom/firebase/simplelogin/enums/Provider;

.field public static final enum INVALID:Lcom/firebase/simplelogin/enums/Provider;

.field public static final enum PASSWORD:Lcom/firebase/simplelogin/enums/Provider;

.field public static final enum PERSONA:Lcom/firebase/simplelogin/enums/Provider;

.field public static final enum TWITTER:Lcom/firebase/simplelogin/enums/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 44
    new-instance v0, Lcom/firebase/simplelogin/enums/Provider;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/firebase/simplelogin/enums/Provider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/simplelogin/enums/Provider;->INVALID:Lcom/firebase/simplelogin/enums/Provider;

    .line 48
    new-instance v1, Lcom/firebase/simplelogin/enums/Provider;

    const-string v3, "PASSWORD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/firebase/simplelogin/enums/Provider;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/firebase/simplelogin/enums/Provider;->PASSWORD:Lcom/firebase/simplelogin/enums/Provider;

    .line 52
    new-instance v3, Lcom/firebase/simplelogin/enums/Provider;

    const-string v5, "FACEBOOK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/firebase/simplelogin/enums/Provider;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/firebase/simplelogin/enums/Provider;->FACEBOOK:Lcom/firebase/simplelogin/enums/Provider;

    .line 56
    new-instance v5, Lcom/firebase/simplelogin/enums/Provider;

    const-string v7, "TWITTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/firebase/simplelogin/enums/Provider;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/firebase/simplelogin/enums/Provider;->TWITTER:Lcom/firebase/simplelogin/enums/Provider;

    .line 60
    new-instance v7, Lcom/firebase/simplelogin/enums/Provider;

    const-string v9, "ANONYMOUS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/firebase/simplelogin/enums/Provider;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/firebase/simplelogin/enums/Provider;->ANONYMOUS:Lcom/firebase/simplelogin/enums/Provider;

    .line 64
    new-instance v9, Lcom/firebase/simplelogin/enums/Provider;

    const-string v11, "GITHUB"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/firebase/simplelogin/enums/Provider;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/firebase/simplelogin/enums/Provider;->GITHUB:Lcom/firebase/simplelogin/enums/Provider;

    .line 68
    new-instance v11, Lcom/firebase/simplelogin/enums/Provider;

    const-string v13, "PERSONA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/firebase/simplelogin/enums/Provider;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/firebase/simplelogin/enums/Provider;->PERSONA:Lcom/firebase/simplelogin/enums/Provider;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/firebase/simplelogin/enums/Provider;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 40
    sput-object v13, Lcom/firebase/simplelogin/enums/Provider;->$VALUES:[Lcom/firebase/simplelogin/enums/Provider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/simplelogin/enums/Provider;
    .locals 1

    .line 40
    const-class v0, Lcom/firebase/simplelogin/enums/Provider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/firebase/simplelogin/enums/Provider;

    return-object p0
.end method

.method public static values()[Lcom/firebase/simplelogin/enums/Provider;
    .locals 1

    .line 40
    sget-object v0, Lcom/firebase/simplelogin/enums/Provider;->$VALUES:[Lcom/firebase/simplelogin/enums/Provider;

    invoke-virtual {v0}, [Lcom/firebase/simplelogin/enums/Provider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/simplelogin/enums/Provider;

    return-object v0
.end method
