.class public Lcom/firebase/client/snapshot/EmptyNode;
.super Ljava/lang/Object;
.source "EmptyNode.java"


# static fields
.field private static empty:Lcom/firebase/client/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/firebase/client/snapshot/ChildrenNode;

    invoke-direct {v0}, Lcom/firebase/client/snapshot/ChildrenNode;-><init>()V

    sput-object v0, Lcom/firebase/client/snapshot/EmptyNode;->empty:Lcom/firebase/client/snapshot/Node;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Empty()Lcom/firebase/client/snapshot/Node;
    .locals 1

    .line 12
    sget-object v0, Lcom/firebase/client/snapshot/EmptyNode;->empty:Lcom/firebase/client/snapshot/Node;

    return-object v0
.end method
