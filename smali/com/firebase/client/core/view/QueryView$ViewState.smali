.class public final enum Lcom/firebase/client/core/view/QueryView$ViewState;
.super Ljava/lang/Enum;
.source "QueryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/core/view/QueryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/firebase/client/core/view/QueryView$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/firebase/client/core/view/QueryView$ViewState;

.field public static final enum ENTERING_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

.field public static final enum IN_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

.field public static final enum LEAVING_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

.field public static final enum OUT_OF_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    new-instance v0, Lcom/firebase/client/core/view/QueryView$ViewState;

    const-string v1, "ENTERING_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/firebase/client/core/view/QueryView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/firebase/client/core/view/QueryView$ViewState;->ENTERING_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    new-instance v1, Lcom/firebase/client/core/view/QueryView$ViewState;

    const-string v3, "LEAVING_VIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/firebase/client/core/view/QueryView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/firebase/client/core/view/QueryView$ViewState;->LEAVING_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    new-instance v3, Lcom/firebase/client/core/view/QueryView$ViewState;

    const-string v5, "IN_VIEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/firebase/client/core/view/QueryView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/firebase/client/core/view/QueryView$ViewState;->IN_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    new-instance v5, Lcom/firebase/client/core/view/QueryView$ViewState;

    const-string v7, "OUT_OF_VIEW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/firebase/client/core/view/QueryView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/firebase/client/core/view/QueryView$ViewState;->OUT_OF_VIEW:Lcom/firebase/client/core/view/QueryView$ViewState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/firebase/client/core/view/QueryView$ViewState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/firebase/client/core/view/QueryView$ViewState;->$VALUES:[Lcom/firebase/client/core/view/QueryView$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/firebase/client/core/view/QueryView$ViewState;
    .locals 1

    .line 24
    const-class v0, Lcom/firebase/client/core/view/QueryView$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/firebase/client/core/view/QueryView$ViewState;

    return-object p0
.end method

.method public static values()[Lcom/firebase/client/core/view/QueryView$ViewState;
    .locals 1

    .line 24
    sget-object v0, Lcom/firebase/client/core/view/QueryView$ViewState;->$VALUES:[Lcom/firebase/client/core/view/QueryView$ViewState;

    invoke-virtual {v0}, [Lcom/firebase/client/core/view/QueryView$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/firebase/client/core/view/QueryView$ViewState;

    return-object v0
.end method
