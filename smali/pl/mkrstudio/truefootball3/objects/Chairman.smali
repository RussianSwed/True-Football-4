.class public Lpl/mkrstudio/truefootball3/objects/Chairman;
.super Ljava/lang/Object;
.source "Chairman.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7444eef6ce834575L


# instance fields
.field confidence:I

.field faces:Lpl/mkrstudio/truefootball3/enums/Faces;


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/enums/Faces;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faces"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 12
    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Chairman;->confidence:I

    .line 16
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Chairman;->faces:Lpl/mkrstudio/truefootball3/enums/Faces;

    return-void
.end method


# virtual methods
.method public changeConfidence(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "change"
        }
    .end annotation

    .line 22
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Chairman;->confidence:I

    add-int/2addr v0, p1

    iput v0, p0, Lpl/mkrstudio/truefootball3/objects/Chairman;->confidence:I

    const/16 p1, 0x64

    if-le v0, p1, :cond_0

    .line 24
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Chairman;->confidence:I

    .line 25
    :cond_0
    iget p1, p0, Lpl/mkrstudio/truefootball3/objects/Chairman;->confidence:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Chairman;->confidence:I

    :cond_1
    return-void
.end method

.method public getConfidence()I
    .locals 1

    .line 30
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/Chairman;->confidence:I

    return v0
.end method

.method public setConfidence(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "confidence"
        }
    .end annotation

    .line 34
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/Chairman;->confidence:I

    return-void
.end method
