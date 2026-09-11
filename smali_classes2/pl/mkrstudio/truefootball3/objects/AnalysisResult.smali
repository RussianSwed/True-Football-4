.class public Lpl/mkrstudio/truefootball3/objects/AnalysisResult;
.super Ljava/lang/Object;
.source "AnalysisResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3b7f3eee54328d39L


# instance fields
.field private formation:Lpl/mkrstudio/truefootball3/objects/Formation;

.field private gameplay:Lpl/mkrstudio/truefootball3/enums/Gameplay;

.field private offsideTraps:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

.field private otherInstructions:Ljava/util/Map;

.field private pressing:Lpl/mkrstudio/truefootball3/enums/Pressing;

.field private recommended:Z

.field private timeWasting:Lpl/mkrstudio/truefootball3/enums/TimeWasting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLpl/mkrstudio/truefootball3/objects/Formation;Lpl/mkrstudio/truefootball3/enums/Gameplay;Lpl/mkrstudio/truefootball3/enums/Pressing;Lpl/mkrstudio/truefootball3/enums/TimeWasting;Lpl/mkrstudio/truefootball3/enums/OffsideTraps;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "recommended",
            "formation",
            "gameplay",
            "pressing",
            "timeWasting",
            "offsideTraps"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->recommended:Z

    .line 32
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->formation:Lpl/mkrstudio/truefootball3/objects/Formation;

    .line 33
    iput-object p3, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->gameplay:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    .line 34
    iput-object p4, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->pressing:Lpl/mkrstudio/truefootball3/enums/Pressing;

    .line 35
    iput-object p5, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->timeWasting:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    .line 36
    iput-object p6, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->offsideTraps:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    return-void
.end method


# virtual methods
.method public getFormation()Lpl/mkrstudio/truefootball3/objects/Formation;
    .locals 1

    .line 48
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->formation:Lpl/mkrstudio/truefootball3/objects/Formation;

    return-object v0
.end method

.method public getGameplay()Lpl/mkrstudio/truefootball3/enums/Gameplay;
    .locals 1

    .line 56
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->gameplay:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    return-object v0
.end method

.method public getOffsideTraps()Lpl/mkrstudio/truefootball3/enums/OffsideTraps;
    .locals 1

    .line 80
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->offsideTraps:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    return-object v0
.end method

.method public getOtherInstructions()Ljava/util/Map;
    .locals 1

    .line 88
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->otherInstructions:Ljava/util/Map;

    return-object v0
.end method

.method public getPressing()Lpl/mkrstudio/truefootball3/enums/Pressing;
    .locals 1

    .line 64
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->pressing:Lpl/mkrstudio/truefootball3/enums/Pressing;

    return-object v0
.end method

.method public getTimeWasting()Lpl/mkrstudio/truefootball3/enums/TimeWasting;
    .locals 1

    .line 72
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->timeWasting:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    return-object v0
.end method

.method public isRecommended()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->recommended:Z

    return v0
.end method

.method public setFormation(Lpl/mkrstudio/truefootball3/objects/Formation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "formation"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->formation:Lpl/mkrstudio/truefootball3/objects/Formation;

    return-void
.end method

.method public setGameplay(Lpl/mkrstudio/truefootball3/enums/Gameplay;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameplay"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->gameplay:Lpl/mkrstudio/truefootball3/enums/Gameplay;

    return-void
.end method

.method public setOffsideTraps(Lpl/mkrstudio/truefootball3/enums/OffsideTraps;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsideTraps"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->offsideTraps:Lpl/mkrstudio/truefootball3/enums/OffsideTraps;

    return-void
.end method

.method public setOtherInstructions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherInstructions"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->otherInstructions:Ljava/util/Map;

    return-void
.end method

.method public setPressing(Lpl/mkrstudio/truefootball3/enums/Pressing;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressing"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->pressing:Lpl/mkrstudio/truefootball3/enums/Pressing;

    return-void
.end method

.method public setRecommended(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommended"
        }
    .end annotation

    .line 44
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->recommended:Z

    return-void
.end method

.method public setTimeWasting(Lpl/mkrstudio/truefootball3/enums/TimeWasting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeWasting"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/AnalysisResult;->timeWasting:Lpl/mkrstudio/truefootball3/enums/TimeWasting;

    return-void
.end method
