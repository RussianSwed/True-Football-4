.class public Lpl/mkrstudio/truefootball3/objects/Journalist;
.super Ljava/lang/Object;
.source "Journalist.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x61d066cd8fa99ca0L


# instance fields
.field face:Lpl/mkrstudio/truefootball3/enums/Faces;

.field known:Z

.field name:Ljava/lang/String;

.field relationsWithUser:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpl/mkrstudio/truefootball3/enums/Faces;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "face",
            "relationsWithUser"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 15
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->relationsWithUser:I

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->known:Z

    .line 20
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->name:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->face:Lpl/mkrstudio/truefootball3/enums/Faces;

    .line 22
    iput p3, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->relationsWithUser:I

    return-void
.end method


# virtual methods
.method public getFace()Lpl/mkrstudio/truefootball3/enums/Faces;
    .locals 1

    .line 48
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->face:Lpl/mkrstudio/truefootball3/enums/Faces;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationsWithUser()I
    .locals 1

    .line 56
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->relationsWithUser:I

    return v0
.end method

.method public improveRelations()V
    .locals 2

    .line 26
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->relationsWithUser:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->relationsWithUser:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 28
    iput v1, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->relationsWithUser:I

    :cond_0
    return-void
.end method

.method public isKnown()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->known:Z

    return v0
.end method

.method public setFace(Lpl/mkrstudio/truefootball3/enums/Faces;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "face"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->face:Lpl/mkrstudio/truefootball3/enums/Faces;

    return-void
.end method

.method public setKnown(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "known"
        }
    .end annotation

    .line 68
    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->known:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->name:Ljava/lang/String;

    return-void
.end method

.method public setRelationsWithUser(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "relationsWithUser"
        }
    .end annotation

    .line 60
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->relationsWithUser:I

    return-void
.end method

.method public worsenRelations()V
    .locals 1

    .line 32
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->relationsWithUser:I

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->relationsWithUser:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Journalist;->relationsWithUser:I

    :cond_0
    return-void
.end method
