.class public Lpl/mkrstudio/truefootball3/objects/PlayerExtended;
.super Lpl/mkrstudio/truefootball3/objects/Player;
.source "PlayerExtended.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x40aca248a8e1210bL


# instance fields
.field agility:B

.field charisma:B

.field crossing:B

.field goalkeeping:B

.field heading:B

.field passing:B

.field psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

.field shape:Lpl/mkrstudio/truefootball3/enums/Shape;

.field shooting:B

.field strength:B

.field tackling:B

.field technique:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Player;-><init>()V

    .line 15
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Psychic;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/Psychic;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

    .line 16
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->AVERAGE:Lpl/mkrstudio/truefootball3/enums/Shape;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shape:Lpl/mkrstudio/truefootball3/enums/Shape;

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Player;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "player"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Player;-><init>()V

    .line 15
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Psychic;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/Psychic;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

    .line 16
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->AVERAGE:Lpl/mkrstudio/truefootball3/enums/Shape;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shape:Lpl/mkrstudio/truefootball3/enums/Shape;

    .line 34
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 35
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getNationality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->nationality:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->name:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->age:B

    .line 38
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    .line 39
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSecondPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->secondPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    .line 40
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getCondition()B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->condition:B

    .line 41
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill()B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->skill:B

    .line 42
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSelection()B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->selection:B

    .line 43
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getInjury()Lpl/mkrstudio/truefootball3/objects/Injury;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->injury:Lpl/mkrstudio/truefootball3/objects/Injury;

    .line 44
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getSuspension()Lpl/mkrstudio/truefootball3/objects/Suspension;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->suspension:Lpl/mkrstudio/truefootball3/objects/Suspension;

    .line 45
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->isUnavailable()Z

    move-result v0

    iput-boolean v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->unavailable:Z

    .line 46
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object v0

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->currentContract:Lpl/mkrstudio/truefootball3/objects/Contract;

    .line 47
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->isEdited()Z

    move-result p1

    iput-boolean p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->edited:Z

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateCharisma(Ljava/util/Random;)B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->charisma:B

    .line 49
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateGoalkeeping(Ljava/util/Random;)B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->goalkeeping:B

    .line 50
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateTackling(Ljava/util/Random;)B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->tackling:B

    .line 51
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateStrength(Ljava/util/Random;)B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->strength:B

    .line 52
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateHeading(Ljava/util/Random;)B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->heading:B

    .line 53
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculatePassing(Ljava/util/Random;)B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->passing:B

    .line 54
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateCrossing(Ljava/util/Random;)B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->crossing:B

    .line 55
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateTechnique(Ljava/util/Random;)B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->technique:B

    .line 56
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateAgility(Ljava/util/Random;)B

    move-result v0

    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->agility:B

    .line 57
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateShooting(Ljava/util/Random;)B

    move-result p1

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shooting:B

    return-void
.end method

.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/YouthPlayer;Lpl/mkrstudio/truefootball3/objects/Team;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "youthPlayer",
            "team"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/objects/Player;-><init>()V

    .line 15
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Psychic;

    invoke-direct {v0}, Lpl/mkrstudio/truefootball3/objects/Psychic;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

    .line 16
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/Shape;->AVERAGE:Lpl/mkrstudio/truefootball3/enums/Shape;

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shape:Lpl/mkrstudio/truefootball3/enums/Shape;

    .line 61
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->team:Lpl/mkrstudio/truefootball3/objects/Team;

    .line 62
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getNationality()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->nationality:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->name:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getAge()B

    move-result p2

    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->age:B

    .line 65
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p2

    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->firstPosition:Lpl/mkrstudio/truefootball3/enums/Position;

    const/16 p2, 0x64

    .line 66
    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->condition:B

    .line 67
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getSkill()B

    move-result p2

    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->skill:B

    const/4 p2, -0x1

    .line 68
    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->selection:B

    const/4 p2, 0x0

    .line 69
    iput-boolean p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->unavailable:Z

    .line 70
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/YouthPlayer;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->currentContract:Lpl/mkrstudio/truefootball3/objects/Contract;

    .line 71
    iput-boolean p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->edited:Z

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateCharisma(Ljava/util/Random;)B

    move-result p2

    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->charisma:B

    .line 73
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateGoalkeeping(Ljava/util/Random;)B

    move-result p2

    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->goalkeeping:B

    .line 74
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateTackling(Ljava/util/Random;)B

    move-result p2

    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->tackling:B

    .line 75
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateStrength(Ljava/util/Random;)B

    move-result p2

    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->strength:B

    .line 76
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateHeading(Ljava/util/Random;)B

    move-result p2

    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->heading:B

    .line 77
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculatePassing(Ljava/util/Random;)B

    move-result p2

    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->passing:B

    .line 78
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateCrossing(Ljava/util/Random;)B

    move-result p2

    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->crossing:B

    .line 79
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateTechnique(Ljava/util/Random;)B

    move-result p2

    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->technique:B

    .line 80
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateAgility(Ljava/util/Random;)B

    move-result p2

    iput-byte p2, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->agility:B

    .line 81
    invoke-virtual {p0, p1}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->calculateShooting(Ljava/util/Random;)B

    move-result p1

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shooting:B

    return-void
.end method

.method private injure(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;ZB)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "inbox",
            "training",
            "medicalLevel"
        }
    .end annotation

    .line 188
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Injury;

    invoke-direct {v0, p4}, Lpl/mkrstudio/truefootball3/objects/Injury;-><init>(B)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->injury:Lpl/mkrstudio/truefootball3/objects/Injury;

    .line 189
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->injury:Lpl/mkrstudio/truefootball3/objects/Injury;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, p4, v0}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildInjuryMessage(ZLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/Injury;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    return-void
.end method


# virtual methods
.method public changeAgility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 109
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->agility:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->agility:B

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 111
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->agility:B

    .line 112
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->agility:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 113
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->agility:B

    :cond_1
    return-void
.end method

.method public changeCharisma(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 165
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->charisma:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->charisma:B

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 167
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->charisma:B

    .line 168
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->charisma:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 169
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->charisma:B

    :cond_1
    return-void
.end method

.method public changeCrossing(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 125
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->crossing:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->crossing:B

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 127
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->crossing:B

    .line 128
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->crossing:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 129
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->crossing:B

    :cond_1
    return-void
.end method

.method public changeGoalkeeping(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 141
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->goalkeeping:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->goalkeeping:B

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 143
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->goalkeeping:B

    .line 144
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->goalkeeping:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 145
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->goalkeeping:B

    :cond_1
    return-void
.end method

.method public changeHeading(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 133
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->heading:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->heading:B

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 135
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->heading:B

    .line 136
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->heading:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 137
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->heading:B

    :cond_1
    return-void
.end method

.method public changeMorale(B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "morale"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getMorale()B

    move-result v1

    add-int/2addr v1, p1

    int-to-byte p1, v1

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->setMorale(B)V

    .line 204
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getMorale()B

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 205
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Psychic;->setMorale(B)V

    .line 206
    :cond_0
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getMorale()B

    move-result p1

    if-gez p1, :cond_1

    .line 207
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lpl/mkrstudio/truefootball3/objects/Psychic;->setMorale(B)V

    :cond_1
    return-void
.end method

.method public changePassing(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 149
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->passing:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->passing:B

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 151
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->passing:B

    .line 152
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->passing:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 153
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->passing:B

    :cond_1
    return-void
.end method

.method public changeShooting(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 93
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shooting:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shooting:B

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 95
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shooting:B

    .line 96
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shooting:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 97
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shooting:B

    :cond_1
    return-void
.end method

.method public changeSkill(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 85
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->skill:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->skill:B

    .line 86
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->skill:B

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 87
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->skill:B

    .line 88
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->skill:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 89
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->skill:B

    :cond_1
    return-void
.end method

.method public changeStrength(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 157
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->strength:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->strength:B

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 159
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->strength:B

    .line 160
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->strength:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 161
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->strength:B

    :cond_1
    return-void
.end method

.method public changeTackling(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 101
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->tackling:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->tackling:B

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 103
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->tackling:B

    .line 104
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->tackling:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 105
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->tackling:B

    :cond_1
    return-void
.end method

.method public changeTechnique(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 117
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->technique:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->technique:B

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 119
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->technique:B

    .line 120
    :cond_0
    iget-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->technique:B

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 121
    iput-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->technique:B

    :cond_1
    return-void
.end method

.method public getAgility()B
    .locals 1

    .line 283
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->agility:B

    return v0
.end method

.method public getCharisma()B
    .locals 1

    .line 219
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->charisma:B

    return v0
.end method

.method public getCrossing()B
    .locals 1

    .line 267
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->crossing:B

    return v0
.end method

.method public getGoalkeeping()B
    .locals 1

    .line 227
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->goalkeeping:B

    return v0
.end method

.method public getHeading()B
    .locals 1

    .line 251
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->heading:B

    return v0
.end method

.method public getMorale()B
    .locals 1

    .line 195
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Psychic;->getMorale()B

    move-result v0

    return v0
.end method

.method public getPassing()B
    .locals 1

    .line 259
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->passing:B

    return v0
.end method

.method public getPsychic()Lpl/mkrstudio/truefootball3/objects/Psychic;
    .locals 1

    .line 299
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

    return-object v0
.end method

.method public getShape()Lpl/mkrstudio/truefootball3/enums/Shape;
    .locals 1

    .line 211
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shape:Lpl/mkrstudio/truefootball3/enums/Shape;

    return-object v0
.end method

.method public getShooting()B
    .locals 1

    .line 291
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shooting:B

    return v0
.end method

.method public getStrength()B
    .locals 1

    .line 243
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->strength:B

    return v0
.end method

.method public getTackling()B
    .locals 1

    .line 235
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->tackling:B

    return v0
.end method

.method public getTechnique()B
    .locals 1

    .line 275
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->technique:B

    return v0
.end method

.method public possiblyInjure(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;ZBBLjava/util/Random;)V
    .locals 4
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
            "time",
            "inbox",
            "training",
            "physiotherapistLevel",
            "medicalLevel",
            "random"
        }
    .end annotation

    int-to-double v0, p4

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    .line 181
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    add-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int p4, v0

    .line 182
    invoke-virtual {p6, p4}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    if-nez p4, :cond_0

    .line 184
    invoke-direct {p0, p1, p2, p3, p5}, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->injure(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;ZB)V

    :cond_0
    return-void
.end method

.method public setAgility(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agility"
        }
    .end annotation

    .line 287
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->agility:B

    return-void
.end method

.method public setCharisma(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charisma"
        }
    .end annotation

    .line 223
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->charisma:B

    return-void
.end method

.method public setCrossing(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crossing"
        }
    .end annotation

    .line 271
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->crossing:B

    return-void
.end method

.method public setGoalkeeping(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goalkeeping"
        }
    .end annotation

    .line 231
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->goalkeeping:B

    return-void
.end method

.method public setHeading(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heading"
        }
    .end annotation

    .line 255
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->heading:B

    return-void
.end method

.method public setMorale(B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "morale"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Psychic;->setMorale(B)V

    return-void
.end method

.method public setPassing(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "passing"
        }
    .end annotation

    .line 263
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->passing:B

    return-void
.end method

.method public setPsychic(Lpl/mkrstudio/truefootball3/objects/Psychic;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "psychic"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->psychic:Lpl/mkrstudio/truefootball3/objects/Psychic;

    return-void
.end method

.method public setShape(Lpl/mkrstudio/truefootball3/enums/Shape;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shape"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shape:Lpl/mkrstudio/truefootball3/enums/Shape;

    return-void
.end method

.method public setShooting(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shooting"
        }
    .end annotation

    .line 295
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shooting:B

    return-void
.end method

.method public setStrength(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "strength"
        }
    .end annotation

    .line 247
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->strength:B

    return-void
.end method

.method public setTackling(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tackling"
        }
    .end annotation

    .line 239
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->tackling:B

    return-void
.end method

.method public setTechnique(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "technique"
        }
    .end annotation

    .line 279
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->technique:B

    return-void
.end method

.method public updateShape()V
    .locals 3

    .line 173
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 174
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shape:Lpl/mkrstudio/truefootball3/enums/Shape;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/Shape;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    const/4 v2, 0x3

    .line 175
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit8 v1, v1, 0x5

    .line 176
    invoke-static {}, Lpl/mkrstudio/truefootball3/enums/Shape;->values()[Lpl/mkrstudio/truefootball3/enums/Shape;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/PlayerExtended;->shape:Lpl/mkrstudio/truefootball3/enums/Shape;

    return-void
.end method
