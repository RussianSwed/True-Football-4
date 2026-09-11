.class public Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;
.super Ljava/lang/Object;
.source "CommentaryRecord.java"


# instance fields
.field commentary:Ljava/lang/String;

.field minute:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minute",
            "commentary"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;->minute:I

    .line 10
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;->commentary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommentary()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;->commentary:Ljava/lang/String;

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .line 14
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;->minute:I

    return v0
.end method

.method public setCommentary(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commentary"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;->commentary:Ljava/lang/String;

    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minute"
        }
    .end annotation

    .line 18
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/CommentaryRecord;->minute:I

    return-void
.end method
