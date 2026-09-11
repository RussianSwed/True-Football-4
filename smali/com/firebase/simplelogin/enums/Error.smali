.class public final enum Lcom/firebase/simplelogin/enums/Error;
.super Ljava/lang/Enum;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/firebase/simplelogin/enums/Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/simplelogin/enums/Error;

.field public static final enum AccessNotGranted:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum AccountNotFound:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum AuthenticationProviderNotEnabled:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum BadProviderToken:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum BadSystemToken:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum DataStale:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum Disconnected:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum EmailTaken:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum ExpiredToken:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum InvalidEmail:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum InvalidFirebase:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum InvalidPassword:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum InvalidToken:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum MaxRetries:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum OperationFailed:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum OverriddenBySet:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum PermissionDenied:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum Preempted:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum Unknown:Lcom/firebase/simplelogin/enums/Error;

.field public static final enum UserDoesNotExist:Lcom/firebase/simplelogin/enums/Error;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 16
    new-instance v0, Lcom/firebase/simplelogin/enums/Error;

    const-string v1, "UserDoesNotExist"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/simplelogin/enums/Error;->UserDoesNotExist:Lcom/firebase/simplelogin/enums/Error;

    .line 20
    new-instance v1, Lcom/firebase/simplelogin/enums/Error;

    const-string v3, "InvalidPassword"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/firebase/simplelogin/enums/Error;->InvalidPassword:Lcom/firebase/simplelogin/enums/Error;

    .line 24
    new-instance v3, Lcom/firebase/simplelogin/enums/Error;

    const-string v5, "AccessNotGranted"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/firebase/simplelogin/enums/Error;->AccessNotGranted:Lcom/firebase/simplelogin/enums/Error;

    .line 28
    new-instance v5, Lcom/firebase/simplelogin/enums/Error;

    const-string v7, "AccountNotFound"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/firebase/simplelogin/enums/Error;->AccountNotFound:Lcom/firebase/simplelogin/enums/Error;

    .line 32
    new-instance v7, Lcom/firebase/simplelogin/enums/Error;

    const-string v9, "AuthenticationProviderNotEnabled"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/firebase/simplelogin/enums/Error;->AuthenticationProviderNotEnabled:Lcom/firebase/simplelogin/enums/Error;

    .line 36
    new-instance v9, Lcom/firebase/simplelogin/enums/Error;

    const-string v11, "InvalidEmail"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/firebase/simplelogin/enums/Error;->InvalidEmail:Lcom/firebase/simplelogin/enums/Error;

    .line 40
    new-instance v11, Lcom/firebase/simplelogin/enums/Error;

    const-string v13, "BadSystemToken"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/firebase/simplelogin/enums/Error;->BadSystemToken:Lcom/firebase/simplelogin/enums/Error;

    .line 44
    new-instance v13, Lcom/firebase/simplelogin/enums/Error;

    const-string v15, "EmailTaken"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/firebase/simplelogin/enums/Error;->EmailTaken:Lcom/firebase/simplelogin/enums/Error;

    .line 48
    new-instance v15, Lcom/firebase/simplelogin/enums/Error;

    const-string v14, "InvalidFirebase"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/firebase/simplelogin/enums/Error;->InvalidFirebase:Lcom/firebase/simplelogin/enums/Error;

    .line 52
    new-instance v14, Lcom/firebase/simplelogin/enums/Error;

    const-string v12, "BadProviderToken"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/firebase/simplelogin/enums/Error;->BadProviderToken:Lcom/firebase/simplelogin/enums/Error;

    .line 58
    new-instance v12, Lcom/firebase/simplelogin/enums/Error;

    const-string v10, "DataStale"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/firebase/simplelogin/enums/Error;->DataStale:Lcom/firebase/simplelogin/enums/Error;

    .line 62
    new-instance v10, Lcom/firebase/simplelogin/enums/Error;

    const-string v8, "OperationFailed"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/firebase/simplelogin/enums/Error;->OperationFailed:Lcom/firebase/simplelogin/enums/Error;

    .line 66
    new-instance v8, Lcom/firebase/simplelogin/enums/Error;

    const-string v6, "PermissionDenied"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/firebase/simplelogin/enums/Error;->PermissionDenied:Lcom/firebase/simplelogin/enums/Error;

    .line 70
    new-instance v6, Lcom/firebase/simplelogin/enums/Error;

    const-string v4, "Disconnected"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/firebase/simplelogin/enums/Error;->Disconnected:Lcom/firebase/simplelogin/enums/Error;

    .line 74
    new-instance v4, Lcom/firebase/simplelogin/enums/Error;

    const-string v2, "Preempted"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/firebase/simplelogin/enums/Error;->Preempted:Lcom/firebase/simplelogin/enums/Error;

    .line 78
    new-instance v2, Lcom/firebase/simplelogin/enums/Error;

    const-string v6, "ExpiredToken"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/firebase/simplelogin/enums/Error;->ExpiredToken:Lcom/firebase/simplelogin/enums/Error;

    .line 82
    new-instance v6, Lcom/firebase/simplelogin/enums/Error;

    const-string v4, "InvalidToken"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/firebase/simplelogin/enums/Error;->InvalidToken:Lcom/firebase/simplelogin/enums/Error;

    .line 86
    new-instance v4, Lcom/firebase/simplelogin/enums/Error;

    const-string v2, "MaxRetries"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/firebase/simplelogin/enums/Error;->MaxRetries:Lcom/firebase/simplelogin/enums/Error;

    .line 90
    new-instance v2, Lcom/firebase/simplelogin/enums/Error;

    const-string v6, "OverriddenBySet"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/firebase/simplelogin/enums/Error;->OverriddenBySet:Lcom/firebase/simplelogin/enums/Error;

    .line 96
    new-instance v6, Lcom/firebase/simplelogin/enums/Error;

    const-string v4, "Unknown"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/firebase/simplelogin/enums/Error;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/firebase/simplelogin/enums/Error;->Unknown:Lcom/firebase/simplelogin/enums/Error;

    const/16 v4, 0x14

    new-array v4, v4, [Lcom/firebase/simplelogin/enums/Error;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    aput-object v6, v4, v2

    .line 11
    sput-object v4, Lcom/firebase/simplelogin/enums/Error;->$VALUES:[Lcom/firebase/simplelogin/enums/Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/simplelogin/enums/Error;
    .locals 1

    .line 11
    const-class v0, Lcom/firebase/simplelogin/enums/Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/firebase/simplelogin/enums/Error;

    return-object p0
.end method

.method public static values()[Lcom/firebase/simplelogin/enums/Error;
    .locals 1

    .line 11
    sget-object v0, Lcom/firebase/simplelogin/enums/Error;->$VALUES:[Lcom/firebase/simplelogin/enums/Error;

    invoke-virtual {v0}, [Lcom/firebase/simplelogin/enums/Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/simplelogin/enums/Error;

    return-object v0
.end method
