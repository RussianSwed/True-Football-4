.class public Lpl/mkrstudio/truefootball3/helpers/ResourceHelper;
.super Ljava/lang/Object;
.source "ResourceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssistantFaceResource(Lpl/mkrstudio/truefootball3/objects/Country;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "country"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->AFRICAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->CARRIBEAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_8

    .line 30
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->OCEANIAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 32
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->AMERICAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->EUROPEAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_7

    .line 33
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->EUROPEAN_BRITISH:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->EUROPEAN_NORTHERN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_7

    .line 34
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->EUROPEAN_SOUTHERN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->ARABIC:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne v0, v1, :cond_2

    const p0, 0x7f070198

    return p0

    .line 38
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->CAUCASIAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->LATIN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->INDIAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne v0, v1, :cond_4

    const p0, 0x7f07019a

    return p0

    .line 42
    :cond_4
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object p0

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Faces;->ORIENTAL:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne p0, v0, :cond_5

    const p0, 0x7f07019c

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_0
    const p0, 0x7f07019b

    return p0

    :cond_7
    :goto_1
    const p0, 0x7f070199

    return p0

    :cond_8
    :goto_2
    const p0, 0x7f070197

    return p0
.end method

.method public static getChairmanFaceResource(Lpl/mkrstudio/truefootball3/objects/Country;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "country"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->AFRICAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->CARRIBEAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_8

    .line 10
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->OCEANIAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->AMERICAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->EUROPEAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_7

    .line 13
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->EUROPEAN_BRITISH:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->EUROPEAN_NORTHERN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->EUROPEAN_SOUTHERN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->ARABIC:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne v0, v1, :cond_2

    const p0, 0x7f07019f

    return p0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->CAUCASIAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->LATIN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object v0

    sget-object v1, Lpl/mkrstudio/truefootball3/enums/Faces;->INDIAN:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne v0, v1, :cond_4

    const p0, 0x7f0701a1

    return p0

    .line 22
    :cond_4
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getFaces()Lpl/mkrstudio/truefootball3/enums/Faces;

    move-result-object p0

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Faces;->ORIENTAL:Lpl/mkrstudio/truefootball3/enums/Faces;

    if-ne p0, v0, :cond_5

    const p0, 0x7f0701a3

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_0
    const p0, 0x7f0701a2

    return p0

    :cond_7
    :goto_1
    const p0, 0x7f0701a0

    return p0

    :cond_8
    :goto_2
    const p0, 0x7f07019e

    return p0
.end method
