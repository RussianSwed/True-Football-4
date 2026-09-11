.class Lcom/firebase/client/Query$SingleEventProgress;
.super Ljava/lang/Object;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/client/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleEventProgress"
.end annotation


# instance fields
.field private called:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/firebase/client/Query$SingleEventProgress;->called:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/client/Query$1;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/firebase/client/Query$SingleEventProgress;-><init>()V

    return-void
.end method


# virtual methods
.method public hasBeenCalled()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/firebase/client/Query$SingleEventProgress;->called:Z

    return v0
.end method

.method public setCalled()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/firebase/client/Query$SingleEventProgress;->called:Z

    return-void
.end method
