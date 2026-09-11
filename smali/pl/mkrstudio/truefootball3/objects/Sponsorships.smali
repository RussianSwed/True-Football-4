.class public Lpl/mkrstudio/truefootball3/objects/Sponsorships;
.super Ljava/lang/Object;
.source "Sponsorships.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1adc72dc622de54bL


# instance fields
.field pendingSponsorshipOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;",
            ">;"
        }
    .end annotation
.end field

.field sponsorSatisfaction:B

.field sponsorships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Sponsorship;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/Time;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "finances",
            "time",
            "context"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    .line 27
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Finances;->getAccountBalance()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->generateSponsorships(JLpl/mkrstudio/truefootball3/objects/Time;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    return-void
.end method

.method private generateSponsorships(JLpl/mkrstudio/truefootball3/objects/Time;Landroid/content/Context;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "budget",
            "time",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lpl/mkrstudio/truefootball3/objects/Time;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Sponsorship;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 133
    iget-object v9, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    new-instance v10, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    sget-object v7, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->MAIN:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-object v1, v10

    move-object v2, v9

    move-object/from16 v4, p3

    move-wide/from16 v5, p1

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;-><init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;JLpl/mkrstudio/truefootball3/enums/SponsorshipType;Landroid/content/Context;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    new-instance v2, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    iget-object v13, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    sget-object v17, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_PRIMARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-object v11, v2

    move-object v12, v1

    move-object/from16 v14, p3

    move-wide/from16 v15, p1

    move-object/from16 v18, p4

    invoke-direct/range {v11 .. v18}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;-><init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;JLpl/mkrstudio/truefootball3/enums/SponsorshipType;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 137
    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    new-instance v12, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    iget-object v6, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    sget-object v10, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->SHIRT_SECONDARY:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-object v4, v12

    move-object v5, v3

    move-object/from16 v7, p3

    move-wide/from16 v8, p1

    move-object/from16 v11, p4

    invoke-direct/range {v4 .. v11}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;-><init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;JLpl/mkrstudio/truefootball3/enums/SponsorshipType;Landroid/content/Context;)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 139
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    new-instance v11, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    iget-object v5, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    sget-object v9, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->STADIUM:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-object v3, v11

    move-object v4, v2

    move-object/from16 v6, p3

    move-wide/from16 v7, p1

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;-><init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;JLpl/mkrstudio/truefootball3/enums/SponsorshipType;Landroid/content/Context;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 140
    :cond_1
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    new-instance v10, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    sget-object v8, Lpl/mkrstudio/truefootball3/enums/SponsorshipType;->TECHNICAL:Lpl/mkrstudio/truefootball3/enums/SponsorshipType;

    move-object v2, v10

    move-object v3, v1

    move-object/from16 v5, p3

    move-wide/from16 v6, p1

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;-><init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;JLpl/mkrstudio/truefootball3/enums/SponsorshipType;Landroid/content/Context;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v1, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    return-object v1
.end method


# virtual methods
.method public checkOffers()V
    .locals 4

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;

    .line 115
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getDaysToExpire()B

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->setDaysToExpire(B)V

    .line 116
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getDaysToExpire()B

    move-result v3

    if-nez v3, :cond_0

    .line 117
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 120
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getMonthlyIncome()J
    .locals 5

    .line 126
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 127
    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getMonthlyIncome()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getPendingSponsorshipOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    return-object v0
.end method

.method public getSponsorSatisfaction()B
    .locals 1

    .line 163
    iget-byte v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorSatisfaction:B

    return v0
.end method

.method public getSponsorships()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Sponsorship;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    return-object v0
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "finances",
            "clubStaff",
            "supporters",
            "media",
            "chosenTeam",
            "context"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 35
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getContractEnd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getContractEnd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v3

    .line 39
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCalendar()Ljava/util/GregorianCalendar;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 45
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;

    .line 51
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getDaysToExpire()B

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->setDaysToExpire(B)V

    .line 52
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getDaysToExpire()B

    move-result v3

    if-nez v3, :cond_4

    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildSponsorshipOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v2

    invoke-virtual {p2, v2}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    goto :goto_2

    .line 57
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 58
    iget-object v2, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object v0, p0

    move-object v1, p5

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p8

    .line 63
    invoke-virtual/range {v0 .. v5}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->receivePossibleBonuses(Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Finances;Landroid/content/Context;)Z

    .line 64
    invoke-virtual/range {p0 .. p8}, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->receivePossibleOffers(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Z

    return-void
.end method

.method receivePossibleBonuses(Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Finances;Landroid/content/Context;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "supporters",
            "inbox",
            "time",
            "finances",
            "context"
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getConfidence()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x5a

    if-le p1, v1, :cond_0

    const/16 p1, 0x14

    .line 70
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 71
    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 72
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Sponsorship;

    .line 74
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getMonthlyIncome()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    add-double/2addr v6, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    double-to-int v1, v2

    const-string v2, "tf3Settings"

    .line 75
    invoke-virtual {p5, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p5

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v2, "currencyModifier"

    .line 76
    invoke-interface {p5, v2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const-string v2, "currencyName"

    const-string v3, "EUR"

    .line 77
    invoke-interface {p5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 79
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v1

    mul-float v3, v3, v0

    float-to-long v3, v3

    invoke-static {v3, v4, p5}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {v2, p1, p5}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildSponsorBonusMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Sponsorship;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    .line 80
    new-instance p1, Lpl/mkrstudio/truefootball3/objects/FinanceItem;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p2

    int-to-long v0, v1

    const-string p3, "bonusesFromSponsors"

    invoke-direct {p1, p2, v0, v1, p3}, Lpl/mkrstudio/truefootball3/objects/FinanceItem;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p4, p1}, Lpl/mkrstudio/truefootball3/objects/Finances;->add(Lpl/mkrstudio/truefootball3/objects/FinanceItem;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method receivePossibleOffers(Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/Inbox;Lpl/mkrstudio/truefootball3/objects/Finances;Lpl/mkrstudio/truefootball3/objects/ClubStaff;Lpl/mkrstudio/truefootball3/objects/Supporters;Lpl/mkrstudio/truefootball3/objects/Media;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "finances",
            "clubStaff",
            "supporters",
            "media",
            "chosenTeam",
            "context"
        }
    .end annotation

    move-object v0, p0

    .line 89
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/ClubStaff;->getMarketingLevel()B

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3f947ae147ae147bL    # 0.02

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const-wide v3, 0x4000cccccccccccdL    # 2.1

    sub-double/2addr v3, v1

    const-wide/high16 v1, 0x4069000000000000L    # 200.0

    mul-double v3, v3, v1

    .line 90
    invoke-virtual/range {p5 .. p5}, Lpl/mkrstudio/truefootball3/objects/Supporters;->getConfidence()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v7

    const-wide v9, 0x405f400000000000L    # 125.0

    sub-double/2addr v9, v1

    div-double/2addr v9, v7

    mul-double v3, v3, v9

    .line 91
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 93
    invoke-virtual/range {p6 .. p6}, Lpl/mkrstudio/truefootball3/objects/Media;->getConfidence()B

    move-result v2

    const/16 v7, 0x19

    if-ge v2, v7, :cond_2

    const/4 v7, 0x5

    if-ge v2, v7, :cond_0

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    :goto_0
    mul-double v3, v3, v5

    goto :goto_1

    :cond_0
    const/16 v7, 0xc

    if-ge v2, v7, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    goto :goto_0

    :cond_2
    :goto_1
    double-to-int v2, v3

    .line 102
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 104
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;

    iget-object v3, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    iget-object v4, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object v2, p3

    invoke-virtual {p3, v5, v6}, Lpl/mkrstudio/truefootball3/objects/Finances;->getAccountBalance(D)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v1

    move-object v5, p1

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;-><init>(Ljava/util/List;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Time;JLpl/mkrstudio/truefootball3/enums/SponsorshipType;Landroid/content/Context;)V

    .line 105
    iget-object v2, v0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildSponsorshipOfferReceivedMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object v1

    move-object v2, p2

    invoke-virtual {p2, v1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    const/4 v1, 0x1

    return v1

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public setPendingSponsorshipOffers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pendingSponsorhipOffers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->pendingSponsorshipOffers:Ljava/util/List;

    return-void
.end method

.method public setSponsorSatisfaction(B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sponsorSatisfaction"
        }
    .end annotation

    .line 167
    iput-byte p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorSatisfaction:B

    return-void
.end method

.method public setSponsorships(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sponsorships"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Sponsorship;",
            ">;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Sponsorships;->sponsorships:Ljava/util/List;

    return-void
.end method
