.class public Lpl/mkrstudio/truefootball3/objects/TrainingSettings;
.super Ljava/lang/Object;
.source "TrainingSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x608e1d984be5edc3L


# instance fields
.field attacking:B

.field ballPossession:B

.field defending:B

.field fitness:B

.field mental:B

.field setPieces:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 19
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->ballPossession:B

    .line 20
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setPieces:B

    .line 21
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->fitness:B

    .line 22
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->defending:B

    .line 23
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->attacking:B

    .line 24
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->mental:B

    return-void
.end method


# virtual methods
.method public getAttacking()B
    .locals 1

    .line 103
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->attacking:B

    return v0
.end method

.method public getBallPossession()B
    .locals 1

    .line 71
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->ballPossession:B

    return v0
.end method

.method public getDefending()B
    .locals 1

    .line 95
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->defending:B

    return v0
.end method

.method public getFitness()B
    .locals 1

    .line 87
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->fitness:B

    return v0
.end method

.method public getMental()B
    .locals 1

    .line 111
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->mental:B

    return v0
.end method

.method public getParameter(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "campModifier"
        }
    .end annotation

    .line 33
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->ballPossession:B

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x0

    if-le v0, p1, :cond_0

    const-string p1, "ballPossession"

    return-object p1

    .line 35
    :cond_0
    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setPieces:B

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    if-le v0, p1, :cond_1

    const-string p1, "setPieces"

    return-object p1

    .line 37
    :cond_1
    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->fitness:B

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    if-le v0, p1, :cond_2

    const-string p1, "fitness"

    return-object p1

    .line 39
    :cond_2
    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->defending:B

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    if-le v0, p1, :cond_3

    const-string p1, "defending"

    return-object p1

    .line 41
    :cond_3
    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->attacking:B

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    if-le v0, p1, :cond_4

    const-string p1, "attacking"

    return-object p1

    .line 43
    :cond_4
    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->mental:B

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    const-string p2, "mental"

    if-le v0, p1, :cond_5

    :cond_5
    return-object p2
.end method

.method public getReversedParameter(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "campModifier"
        }
    .end annotation

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0xa

    .line 54
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->ballPossession:B

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, 0x0

    if-le v0, p1, :cond_0

    const-string p1, "ballPossession"

    return-object p1

    .line 56
    :cond_0
    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setPieces:B

    sub-int v1, p2, v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_1

    const-string p1, "setPieces"

    return-object p1

    .line 58
    :cond_1
    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->fitness:B

    sub-int v1, p2, v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_2

    const-string p1, "fitness"

    return-object p1

    .line 60
    :cond_2
    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->defending:B

    sub-int v1, p2, v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_3

    const-string p1, "defending"

    return-object p1

    .line 62
    :cond_3
    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->attacking:B

    sub-int v1, p2, v1

    add-int/2addr v0, v1

    if-le v0, p1, :cond_4

    const-string p1, "attacking"

    return-object p1

    .line 64
    :cond_4
    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->mental:B

    sub-int/2addr p2, v1

    add-int/2addr v0, p2

    const-string p2, "mental"

    if-le v0, p1, :cond_5

    :cond_5
    return-object p2
.end method

.method public getReversedSum(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "campModifier"
        }
    .end annotation

    .line 49
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->ballPossession:B

    rsub-int/lit8 v0, v0, 0x3c

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setPieces:B

    sub-int/2addr v0, v1

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->fitness:B

    sub-int/2addr v0, v1

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->defending:B

    sub-int/2addr v0, v1

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->attacking:B

    sub-int/2addr v0, v1

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->mental:B

    sub-int/2addr v0, v1

    mul-int/lit8 p1, p1, 0x6

    sub-int/2addr v0, p1

    return v0
.end method

.method public getSetPieces()B
    .locals 1

    .line 79
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setPieces:B

    return v0
.end method

.method public getSum(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "campModifier"
        }
    .end annotation

    .line 28
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->ballPossession:B

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setPieces:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->fitness:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->defending:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->attacking:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->mental:B

    add-int/2addr v0, v1

    mul-int/lit8 p1, p1, 0x6

    add-int/2addr v0, p1

    return v0
.end method

.method public setAttacking(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attacking"
        }
    .end annotation

    .line 107
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->attacking:B

    return-void
.end method

.method public setBallPossession(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ballPossession"
        }
    .end annotation

    .line 75
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->ballPossession:B

    return-void
.end method

.method public setDefending(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defending"
        }
    .end annotation

    .line 99
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->defending:B

    return-void
.end method

.method public setFitness(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fitness"
        }
    .end annotation

    .line 91
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->fitness:B

    return-void
.end method

.method public setMental(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mental"
        }
    .end annotation

    .line 115
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->mental:B

    return-void
.end method

.method public setSetPieces(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "setPieces"
        }
    .end annotation

    .line 83
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/TrainingSettings;->setPieces:B

    return-void
.end method
