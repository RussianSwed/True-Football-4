.class public Lpl/mkrstudio/truefootball3/objects/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5d09e783cf2d78b6L


# instance fields
.field authorId:Ljava/lang/String;

.field buttonId:Ljava/lang/String;

.field contentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field contentParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field date:Ljava/lang/String;

.field pressArticle:Z

.field read:Z

.field titleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field titleParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "date",
            "pressArticle"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Message;->authorId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Message;->read:Z

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->titleIds:Ljava/util/List;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->titleParams:Ljava/util/List;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->contentIds:Ljava/util/List;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->contentParams:Ljava/util/List;

    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->buttonId:Ljava/lang/String;

    .line 21
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Message;->pressArticle:Z

    .line 24
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->date:Ljava/lang/String;

    .line 25
    iput-boolean p2, p0, Lpl/mkrstudio/truefootball3/objects/Message;->pressArticle:Z

    return-void
.end method


# virtual methods
.method public getAuthorId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Message;->authorId:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Message;->buttonId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Message;->contentIds:Ljava/util/List;

    return-object v0
.end method

.method public getContentParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Message;->contentParams:Ljava/util/List;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Message;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Message;->titleIds:Ljava/util/List;

    return-object v0
.end method

.method public getTitleParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Message;->titleParams:Ljava/util/List;

    return-object v0
.end method

.method public isPressArticle()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Message;->pressArticle:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Message;->read:Z

    return v0
.end method

.method public setAuthorId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authorId"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->authorId:Ljava/lang/String;

    return-void
.end method

.method public setButtonId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonId"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->buttonId:Ljava/lang/String;

    return-void
.end method

.method public setContentIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->contentIds:Ljava/util/List;

    return-void
.end method

.method public setContentParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->contentParams:Ljava/util/List;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->date:Ljava/lang/String;

    return-void
.end method

.method public setPressArticle(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressArticle"
        }
    .end annotation

    .line 99
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->pressArticle:Z

    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "read"
        }
    .end annotation

    .line 59
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->read:Z

    return-void
.end method

.method public setTitleIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->titleIds:Ljava/util/List;

    return-void
.end method

.method public setTitleParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Message;->titleParams:Ljava/util/List;

    return-void
.end method
