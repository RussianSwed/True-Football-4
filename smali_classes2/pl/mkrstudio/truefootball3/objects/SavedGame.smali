.class public Lpl/mkrstudio/truefootball3/objects/SavedGame;
.super Ljava/lang/Object;
.source "SavedGame.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1146333f3962ca6bL


# instance fields
.field binFile:Ljava/io/File;

.field dateTime:J

.field infoFile:Ljava/io/File;

.field sdCard:Z

.field teamName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "binFile",
            "infoFile",
            "teamName",
            "dateTime",
            "sdCard"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->binFile:Ljava/io/File;

    .line 19
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->infoFile:Ljava/io/File;

    .line 20
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->teamName:Ljava/lang/String;

    .line 21
    iput-wide p4, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->dateTime:J

    .line 22
    iput-boolean p6, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->sdCard:Z

    return-void
.end method


# virtual methods
.method public getBinFile()Ljava/io/File;
    .locals 1

    .line 50
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->binFile:Ljava/io/File;

    return-object v0
.end method

.method public getDateTime()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->dateTime:J

    return-wide v0
.end method

.method public getInfoFile()Ljava/io/File;
    .locals 1

    .line 58
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->infoFile:Ljava/io/File;

    return-object v0
.end method

.method public getTeamName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->teamName:Ljava/lang/String;

    return-object v0
.end method

.method public isSdCard()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->sdCard:Z

    return v0
.end method

.method public setBinFile(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binFile"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->binFile:Ljava/io/File;

    return-void
.end method

.method public setDateTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateTime"
        }
    .end annotation

    .line 38
    iput-wide p1, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->dateTime:J

    return-void
.end method

.method public setInfoFile(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "infoFile"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->infoFile:Ljava/io/File;

    return-void
.end method

.method public setSdCard(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdCard"
        }
    .end annotation

    .line 46
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->sdCard:Z

    return-void
.end method

.method public setTeamName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "teamName"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/SavedGame;->teamName:Ljava/lang/String;

    return-void
.end method
