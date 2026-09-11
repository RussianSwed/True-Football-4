.class public Lpl/mkrstudio/truefootball3/objects/TrainingResult;
.super Ljava/lang/Object;
.source "TrainingResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1236f3dd69fea2dL


# instance fields
.field date:Ljava/lang/String;

.field playerName:Ljava/lang/String;

.field result:B

.field skill:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "playerName",
            "skill",
            "date",
            "result"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->playerName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->skill:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->date:Ljava/lang/String;

    .line 19
    iput-byte p4, p0, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->result:B

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->playerName:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()B
    .locals 1

    .line 49
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->result:B

    return v0
.end method

.method public getSkill()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->skill:Ljava/lang/String;

    return-object v0
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

    .line 45
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->date:Ljava/lang/String;

    return-void
.end method

.method public setPlayerName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playerName"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->playerName:Ljava/lang/String;

    return-void
.end method

.method public setResult(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 53
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->result:B

    return-void
.end method

.method public setSkill(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skill"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingResult;->skill:Ljava/lang/String;

    return-void
.end method
