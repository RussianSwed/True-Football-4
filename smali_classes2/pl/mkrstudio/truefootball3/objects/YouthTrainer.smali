.class public Lpl/mkrstudio/truefootball3/objects/YouthTrainer;
.super Lpl/mkrstudio/truefootball3/objects/Employee;
.source "YouthTrainer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1fb6217e7fcc08efL


# instance fields
.field youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Employee;-><init>()V

    return-void
.end method


# virtual methods
.method public getYouthTeam()Lpl/mkrstudio/truefootball3/objects/YouthTeam;
    .locals 1

    .line 18
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    return-object v0
.end method

.method public setYouthTeam(Lpl/mkrstudio/truefootball3/objects/YouthTeam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "youthTeam"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->youthTeam:Lpl/mkrstudio/truefootball3/objects/YouthTeam;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/YouthTrainer;->name:Ljava/lang/String;

    return-object v0
.end method
