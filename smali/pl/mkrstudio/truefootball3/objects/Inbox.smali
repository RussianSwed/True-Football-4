.class public Lpl/mkrstudio/truefootball3/objects/Inbox;
.super Ljava/lang/Object;
.source "Inbox.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6518cdfd8765b6c3L


# instance fields
.field messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Inbox;->messages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Inbox;->messages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Inbox;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 18
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Inbox;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 20
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Inbox;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Message;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Inbox;->messages:Ljava/util/List;

    return-object v0
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Message;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Inbox;->messages:Ljava/util/List;

    return-void
.end method
