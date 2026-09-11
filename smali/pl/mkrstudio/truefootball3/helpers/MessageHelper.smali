.class public Lpl/mkrstudio/truefootball3/helpers/MessageHelper;
.super Ljava/lang/Object;
.source "MessageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAssistantStartingMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateString"
        }
    .end annotation

    .line 55
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 57
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "assistantStartingMessageTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "assistantStartingMessageContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildBadArticleInMedia(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentDateString"
        }
    .end annotation

    .line 1383
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 1385
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "badArticleInMediaTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1388
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "badArticleInMediaContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1391
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildBankrupcyMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateString"
        }
    .end annotation

    .line 883
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 885
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "bankrupcyTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "bankrupcyContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildBuyOfferMessage(Lpl/mkrstudio/truefootball3/enums/OfferAnswer;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/TransferOffer;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "answer",
            "dateString",
            "transferOffer",
            "context"
        }
    .end annotation

    .line 68
    new-instance p3, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    .line 69
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ordinal()I

    move-result p1

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_RESERVE:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ordinal()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 72
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string v0, "offerAcceptedTitle"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string v0, "offerAcceptedContent"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_FIRST_SQUAD:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_0

    .line 81
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "offerAcceptedFirstSquadContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_0
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_BENCH:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_1

    .line 83
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "offerAcceptedBenchContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_1
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_RESERVE:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_2

    .line 85
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "offerAcceptedReserveContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "offerAcceptedProposeContract"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "transfers"

    .line 94
    invoke-virtual {p3, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 97
    :cond_3
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string v0, "offerRejectedTitle"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string v0, "offerRejectedContent"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_FIRST_SQUAD:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_4

    .line 106
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "offerRejectedFirstSquadContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_4
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_BENCH:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_5

    .line 108
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "offerRejectedBenchContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_5
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_RESERVE:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_6

    .line 110
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "offerRejectedReserveContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_6
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-object p3
.end method

.method public static buildChairmanStartingMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "chosenTeam"
        }
    .end annotation

    .line 40
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 42
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v2, "chairmanStartingMessageTitle"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v2, "chairmanStartingMessageContent"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildChampionMessage(Ljava/lang/String;Ljava/util/List;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dateString",
            "teams",
            "chosenTeam"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ">;",
            "Lpl/mkrstudio/truefootball3/objects/Team;",
            ")",
            "Lpl/mkrstudio/truefootball3/objects/Message;"
        }
    .end annotation

    .line 966
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 968
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 970
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v2, "championTitle"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Team;

    if-eq p1, p2, :cond_0

    .line 975
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result v2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getSkill()F

    move-result p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    if-ge v1, p0, :cond_2

    .line 979
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "championContentFavorite"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 981
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 984
    :cond_2
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "championContentNonFavorite"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    :goto_1
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildChampionsCupMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "chosenTeam"
        }
    .end annotation

    .line 951
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 953
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "championsCupTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "championsCupContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 960
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildConflictBeginningMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dateString",
            "p1",
            "p2"
        }
    .end annotation

    .line 1517
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 1518
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "conflictBeginningTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1520
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "conflictBeginningContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1523
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1527
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1529
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "locker_room"

    .line 1531
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildConflictEndMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dateString",
            "p1",
            "p2"
        }
    .end annotation

    .line 1537
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 1538
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "conflictEndTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1540
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "conflictEndContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1547
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1548
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1549
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "locker_room"

    .line 1551
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildContractExpirationReminderMessage(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "playersWithExpiringContracts",
            "currentDateString",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lpl/mkrstudio/truefootball3/objects/Message;"
        }
    .end annotation

    .line 1396
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p1, "assistant"

    .line 1397
    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string v0, "contract_expiration_reminder_title"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1401
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1403
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string v0, "contract_expiration_reminder_content1"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1404
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1406
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/Player;

    .line 1407
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object v0

    const-string v1, "contract_expiration_reminder_content2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/Position;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1411
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1414
    :cond_0
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "contract_expiration_reminder_content3"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1415
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public static buildContractExpiredMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "dateString"
        }
    .end annotation

    .line 766
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p1, "assistant"

    .line 768
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "contractExpiredTitle"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "contractExpiredContent"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 774
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildContractOfferMessage(Landroid/content/Context;Lpl/mkrstudio/truefootball3/enums/OfferAnswer;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/TransferOffer;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
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
            "context",
            "answer",
            "time",
            "transferOffer",
            "chosenTeam",
            "contractStart"
        }
    .end annotation

    .line 190
    new-instance p0, Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    const-string v1, "assistant"

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 198
    :goto_0
    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_SMALL_SALARY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    const-string v2, "contractOfferRejectedSimilarTeamContent"

    const-string v3, "contractOfferRejectedContent"

    if-ne p1, v0, :cond_2

    .line 199
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerRefusedToRenewContractTitle"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    if-ne p1, p4, :cond_1

    .line 209
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerRefusedToRenewContractContent"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 212
    :cond_1
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 218
    :cond_2
    sget-object p4, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p1, p4, :cond_3

    .line 219
    invoke-virtual {p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string p4, "playerRenewedContractTitle"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p4, "playerRenewedContractContent"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getContractEnd()I

    move-result p4

    invoke-virtual {p2, p4}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDate(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object p1

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getContractEnd()I

    move-result p2

    invoke-virtual {p1, p2}, Lpl/mkrstudio/truefootball3/objects/Contract;->setEndDate(I)V

    .line 230
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getCurrentContract()Lpl/mkrstudio/truefootball3/objects/Contract;

    move-result-object p1

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerSalary()J

    move-result-wide p2

    long-to-int p3, p2

    invoke-virtual {p1, p3}, Lpl/mkrstudio/truefootball3/objects/Contract;->setMonthSalary(I)V

    goto/16 :goto_3

    .line 231
    :cond_3
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ordinal()I

    move-result p4

    sget-object v0, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_HAPPY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ordinal()I

    move-result v0

    if-le p4, v0, :cond_9

    .line 232
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p4

    const-string v0, "contractOfferAcceptedTitle"

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p4

    const-string v0, "contractOfferAcceptedContent"

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object p4, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_MUCH_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p1, p4, :cond_4

    .line 241
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p4, "contractOfferAcceptedMuchWorseTeamContent"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_4
    sget-object p4, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p1, p4, :cond_5

    .line 243
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p4, "contractOfferAcceptedWorseTeamContent"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 244
    :cond_5
    sget-object p4, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_SIMILAR_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p1, p4, :cond_6

    .line 245
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p4, "contractOfferAcceptedSimilarTeamContent"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_6
    sget-object p4, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_UNHAPPY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p1, p4, :cond_7

    .line 247
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p4, "contractOfferAcceptedUnhappyContent"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_7
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p3

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Time;->isTransferWindowOpened()Z

    move-result p1

    if-nez p1, :cond_8

    .line 254
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "contractWillBeSigned"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 263
    :cond_8
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "contractWillBeSignedToday"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 271
    :cond_9
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p2

    const-string p4, "contractOfferRejectedTitle"

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_MUCH_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p1, p2, :cond_a

    .line 280
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "contractOfferRejectedMuchWorseTeamContent"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 281
    :cond_a
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p1, p2, :cond_b

    .line 282
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "contractOfferRejectedWorseTeamContent"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 283
    :cond_b
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_SIMILAR_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p1, p2, :cond_c

    .line 284
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 285
    :cond_c
    sget-object p2, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_HAPPY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p1, p2, :cond_d

    .line 286
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "contractOfferRejectedHappyContent"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_d
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p2

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-object p0
.end method

.method public static buildContractOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "name"
        }
    .end annotation

    .line 1437
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 1438
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "contractOfferWithdrawnTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1440
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "contractOfferWithdrawnContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1445
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildContractSignedMessage(Ljava/lang/String;Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;JFLjava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
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
            "dateString",
            "previousTeamName",
            "player",
            "value",
            "modifier",
            "currency"
        }
    .end annotation

    .line 560
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 562
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "contractSignedTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "contractSignedContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 571
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    long-to-float p1, p3

    mul-float p1, p1, p5

    float-to-long p1, p1

    .line 573
    invoke-static {p1, p2, p6}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildContractWithFreeAgentSignedMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "player"
        }
    .end annotation

    .line 521
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 523
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "contractWithFreeAgentSignedTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "contractWithFreeAgentSignedContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildCorruptionMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateString"
        }
    .end annotation

    .line 896
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 898
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "corruptionTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "corruptionContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildDomesticCupMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateString"
        }
    .end annotation

    .line 925
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 927
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "domesticCupTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "domesticCupContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildEmployeeEndOfCareerMessage(Lpl/mkrstudio/truefootball3/objects/Employee;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "employee",
            "dateString"
        }
    .end annotation

    .line 801
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p1, "chairman"

    .line 803
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "employeeEndOfCareerTitle"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "employeeEndOfCareerContent"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 809
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Employee;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 812
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Employee;->getType()Lpl/mkrstudio/truefootball3/enums/EmployeeType;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/enums/EmployeeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Employee;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Employee;->getAge()B

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildEndOfCareerMessage(Ljava/lang/String;ILjava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "age",
            "dateString"
        }
    .end annotation

    .line 783
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p2, "assistant"

    .line 785
    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p2

    const-string v1, "endOfCareerTitle"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p2

    const-string v1, "endOfCareerContent"

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 791
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 794
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildFansBehaviourPenaltyMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rivalName",
            "penalty",
            "behaviourType",
            "dateString",
            "context"
        }
    .end annotation

    .line 706
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p4, "association"

    .line 708
    invoke-virtual {v0, p4}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p4

    const-string v2, "fansBehaviourPenaltyTitle"

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p4

    const-string v2, "fansBehaviourPenaltyContent"

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 715
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {v3, p3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "tf3Settings"

    .line 718
    invoke-virtual {p5, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p3, "currencyModifier"

    const/high16 p5, 0x3f800000    # 1.0f

    .line 719
    invoke-interface {p0, p3, p5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p3

    const-string p5, "currencyName"

    const-string v1, "EUR"

    .line 720
    invoke-interface {p0, p5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    long-to-float p1, p1

    mul-float p1, p1, p3

    float-to-long p1, p1

    .line 722
    invoke-static {p1, p2, p0}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildFederationCupMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateString"
        }
    .end annotation

    .line 938
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 940
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "federationCupTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "federationCupContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildFreeAgentRecommendedMessage(Lpl/mkrstudio/truefootball3/objects/TransferOffer;Lpl/mkrstudio/truefootball3/objects/Employee;Lpl/mkrstudio/truefootball3/objects/Team;Ljava/lang/String;Landroid/content/Context;FLjava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "transferOffer",
            "playerAgent",
            "formerClub",
            "dateString",
            "context",
            "modifier",
            "currency"
        }
    .end annotation

    .line 1012
    new-instance p4, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v0, 0x0

    invoke-direct {p4, p3, v0}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    .line 1013
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Employee;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p3

    const-string v0, "freeAgentRecommendedTitle"

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p3

    const-string v0, "freeAgentRecommendedContent"

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v0

    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Employee;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1023
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerSalary()J

    move-result-wide p1

    long-to-float p1, p1

    mul-float p1, p1, p5

    float-to-long p1, p1

    invoke-static {p1, p2, p6}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getAgentsFee()J

    move-result-wide p1

    long-to-float p1, p1

    mul-float p1, p1, p5

    float-to-long p1, p1

    invoke-static {p1, p2, p6}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "transfers"

    .line 1029
    invoke-virtual {p4, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object p4
.end method

.method public static buildFriendlyMatchCancelledMessage(ZLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Match;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "answer",
            "dateString",
            "chosenTeam",
            "match"
        }
    .end annotation

    .line 666
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    if-ne p0, p2, :cond_0

    .line 667
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 668
    :goto_0
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Match;->getAwayTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 669
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Match;->getHomeTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p0

    .line 671
    :cond_1
    new-instance p2, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p1, "assistant"

    .line 673
    invoke-virtual {p2, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string v0, "friendlyMatchCancelledTitle"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string v0, "friendlyMatchCancelledContent"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 679
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 683
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Match;->getDate()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public static buildFriendlyOfferAwaitingMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentDateString",
            "rivalTeam",
            "chosenTeam",
            "context"
        }
    .end annotation

    .line 1066
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 1067
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "friendlyOfferAwaitingTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "friendlyOfferAwaitingContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v1

    if-eq p2, v1, :cond_0

    .line 1076
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v3, "string"

    invoke-virtual {v2, p1, v3, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1078
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    :goto_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "friendlyOffers"

    .line 1082
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildFriendlyOfferMessage(ZLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "answer",
            "dateString",
            "fo"
        }
    .end annotation

    .line 639
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p1, "assistant"

    .line 641
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 644
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "friendlyMatchOfferAcceptedTitle"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "friendlyMatchOfferAcceptedContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "friendlyMatchOfferRejectedTitle"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "friendlyMatchOfferRejectedContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 654
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 658
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/FriendlyOffer;->getTo()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildFriendlyOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "name"
        }
    .end annotation

    .line 1469
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 1470
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "friendlyOfferWithdrawnTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1472
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "friendlyOfferWithdrawnContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1475
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1476
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1478
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1479
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildFriendshipBeginningMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dateString",
            "p1",
            "p2"
        }
    .end annotation

    .line 1557
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 1558
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "friendshipBeginningTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "friendshipBeginningContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1563
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1565
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1566
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1567
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1569
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "locker_room"

    .line 1571
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildGameOverMessage(Ljava/lang/String;Z)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "relegation"
        }
    .end annotation

    .line 909
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 911
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 913
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "gameOverTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 915
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "gameOverContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 917
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "relegationGameOverContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    :goto_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildHigherPriceAcceptedMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/TransferOffer;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "transferOffer"
        }
    .end annotation

    .line 580
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    .line 582
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "higherOfferAcceptedTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 587
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "higherOfferAcceptedContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "transfers"

    .line 596
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildHigherPriceRejectedMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/TransferOffer;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "transferOffer"
        }
    .end annotation

    .line 601
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    .line 603
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "higherOfferRejectedTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 608
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "higherOfferRejectedContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 614
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildInjuryMessage(ZLjava/lang/String;Lpl/mkrstudio/truefootball3/objects/Injury;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "training",
            "dateString",
            "injury",
            "name"
        }
    .end annotation

    .line 728
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p1, "teamDoctor"

    .line 730
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "playerInjuredTitle"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_0

    .line 734
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "playerInjuredTrainingContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 736
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "playerInjuredMatchContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 739
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 742
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Injury;->getDaysToRecover()I

    move-result p2

    div-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildIsolationBeginningMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "p1"
        }
    .end annotation

    .line 1577
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 1578
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "isolationBeginningTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "isolationBeginningContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1583
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1585
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1586
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "locker_room"

    .line 1589
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildIsolationEndingMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "p1"
        }
    .end annotation

    .line 1595
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 1596
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "isolationEndingTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1598
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "isolationEndingContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1604
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1605
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "locker_room"

    .line 1607
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildJobOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "name"
        }
    .end annotation

    .line 1501
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 1502
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "jobOfferWithdrawnTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "jobOfferWithdrawnContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1506
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1508
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1510
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1511
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildLastTransfersArticle(Ljava/lang/String;Ljava/util/List;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentDateString",
            "transfersMadeThisWindow"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/TransferOffer;",
            ">;)",
            "Lpl/mkrstudio/truefootball3/objects/Message;"
        }
    .end annotation

    .line 1258
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    .line 1260
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "aiTransfersTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1264
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "aiTransfersContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    new-instance p0, Lpl/mkrstudio/truefootball3/helpers/MessageHelper$1;

    invoke-direct {p0}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper$1;-><init>()V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1281
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 1283
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/TransferOffer;

    .line 1284
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->isFromLastSevenDays()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1285
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object v2

    const-string v3, "aiTransfer"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1288
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v4

    invoke-virtual {v4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v5, v6}, Lpl/mkrstudio/truefootball3/objects/Player;->getValue(D)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    double-to-long v4, v4

    const-string v6, "EUR"

    invoke-static {v4, v5, v6}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->shortFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " EUR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 1291
    invoke-virtual {v1, v2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->setFromLastSevenDays(Z)V

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method public static buildLeaderBeginningMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "p1"
        }
    .end annotation

    .line 1613
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 1614
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "leaderBeginningTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1616
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "leaderBeginningContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1618
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1621
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1622
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "locker_room"

    .line 1625
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildLoanBeganMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Contract;Lpl/mkrstudio/truefootball3/objects/Time;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "previousTeamName",
            "player",
            "contract",
            "time"
        }
    .end annotation

    .line 296
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string v1, "assistant"

    .line 298
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object v1

    const-string v2, "loanBeganTitle"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object v1

    const-string v2, "loanBeganContent"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Contract;->getEndDate()I

    move-result p1

    invoke-virtual {p3, p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildLoanEndedMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "contractWithPlayer"
        }
    .end annotation

    .line 993
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 995
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "playerReturnedTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "playerReturnedContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ContractWithPlayer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildLoanOfferMessage(Lpl/mkrstudio/truefootball3/enums/OfferAnswer;Lpl/mkrstudio/truefootball3/objects/Time;Lpl/mkrstudio/truefootball3/objects/TransferOffer;Lpl/mkrstudio/truefootball3/objects/Team;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;
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
            "answer",
            "time",
            "transferOffer",
            "chosenTeam",
            "context"
        }
    .end annotation

    .line 120
    new-instance p3, Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    .line 122
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ordinal()I

    move-result p1

    sget-object p4, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_HAPPY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ordinal()I

    move-result p4

    if-le p1, p4, :cond_4

    .line 125
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string p4, "loanOfferAcceptedTitle"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p4, "loanOfferAcceptedContent"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_MUCH_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_0

    .line 134
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "contractOfferAcceptedMuchWorseTeamContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_0
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_1

    .line 136
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "contractOfferAcceptedWorseTeamContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_1
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_SIMILAR_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_2

    .line 138
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "contractOfferAcceptedSimilarTeamContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_2
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->ACCEPTED_UNHAPPY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_3

    .line 140
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "contractOfferAcceptedUnhappyContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_3
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "contractWillBeSignedToday"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 149
    :cond_4
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string p4, "loanOfferRejectedTitle"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p4, "loanOfferRejectedContent"

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_MUCH_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_5

    .line 158
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "contractOfferRejectedMuchWorseTeamContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 162
    :cond_5
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_WORSE_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_6

    .line 163
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "contractOfferRejectedWorseTeamContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 167
    :cond_6
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_SIMILAR_TEAM:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_7

    .line 168
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "contractOfferRejectedSimilarTeamContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_7
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_HAPPY:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_8

    .line 173
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "contractOfferRejectedHappyContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :cond_8
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_FIRST_SQUAD:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_9

    .line 178
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "loanOfferRejectedFirstSquadContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_9
    sget-object p1, Lpl/mkrstudio/truefootball3/enums/OfferAnswer;->REJECTED_BENCH:Lpl/mkrstudio/truefootball3/enums/OfferAnswer;

    if-ne p0, p1, :cond_a

    .line 181
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "loanOfferRejectedBenchContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_1
    return-object p3
.end method

.method public static buildLoanOfferReceivedMessage(Lpl/mkrstudio/truefootball3/objects/TransferOffer;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "transferOffer",
            "dateString",
            "context"
        }
    .end annotation

    .line 378
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p1, "chairman"

    .line 380
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "loanOfferReceivedTitle"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "loanOfferReceivedContent"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 393
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {v1, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "transfers"

    .line 414
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildLoanOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "name"
        }
    .end annotation

    .line 1453
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 1454
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "loanOfferWithdrawnTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "loanOfferWithdrawnContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildLoanOutBeganMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/objects/Contract;Lpl/mkrstudio/truefootball3/objects/Time;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "teamName",
            "player",
            "contract",
            "time"
        }
    .end annotation

    .line 316
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string v1, "chairman"

    .line 318
    invoke-virtual {v0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object v1

    const-string v2, "loanOutBeganTitle"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object v1

    const-string v2, "loanOutBeganContent"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Contract;->getEndDate()I

    move-result p1

    invoke-virtual {p3, p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getContractEndDate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildMatchFixingFailedMessage(Ljava/lang/String;JLpl/mkrstudio/truefootball3/objects/Team;Z)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentDateString",
            "fee",
            "rival",
            "userFailed"
        }
    .end annotation

    .line 1087
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "richie"

    .line 1088
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 1090
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string p4, "buildMatchFixingUserFailedTitle"

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p4, "buildMatchFixingUserFailedContent"

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1093
    :cond_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string p4, "buildMatchFixingRichieFailedTitle"

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p4, "buildMatchFixingRichieFailedContent"

    invoke-interface {p0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1100
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildNewJobOfferMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/JobOffer;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentDateString",
            "jobOffer"
        }
    .end annotation

    .line 1049
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 1050
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "newJobOfferTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "newJobOfferContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/JobOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "jobOffers"

    .line 1061
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildOfferNegotiatingMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/TransferOffer;FLjava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dateString",
            "offerAfterNegotiating",
            "modifier",
            "currency"
        }
    .end annotation

    .line 539
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    .line 541
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "offerNegotiatingTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "offerNegotiatingContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayerValue()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float v1, v1, p2

    float-to-long v1, v1

    invoke-static {v1, v2, p3}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "transfers"

    .line 555
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildOfferReceivedMessage(Lpl/mkrstudio/truefootball3/objects/TransferOffer;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "transferOffer",
            "dateString",
            "context"
        }
    .end annotation

    .line 337
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p1, "chairman"

    .line 339
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "offerReceivedTitle"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "offerReceivedContent"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v2

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {v1, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/TransferOffer;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "transfers"

    .line 373
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildPlayerPsychicEvent(Lpl/mkrstudio/truefootball3/objects/Player;Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "player",
            "type",
            "currentDateString"
        }
    .end annotation

    .line 1133
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p2, "assistant"

    .line 1134
    invoke-virtual {v0, p2}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1136
    sget-object p2, Lpl/mkrstudio/truefootball3/helpers/MessageHelper$2;->$SwitchMap$pl$mkrstudio$truefootball3$enums$PlayerPsychicEventType:[I

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/enums/PlayerPsychicEventType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1168
    :pswitch_0
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerVisitedChildrenTitle"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerVisitedChildrenContent"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1163
    :pswitch_1
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerTrainedWithYouthTitle"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerTrainedWithYouthContent"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1158
    :pswitch_2
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerMissedTrainingTitle"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerMissedTrainingContent"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1153
    :pswitch_3
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerTrainedHardTitle"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerTrainedHardContent"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1148
    :pswitch_4
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerCaughtClubbingTitle"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerCaughtClubbingContent"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1143
    :pswitch_5
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerDidBadTweetsTitle"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerDidBadTweetsContent"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1138
    :pswitch_6
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerGaveBadInterviewTitle"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p2, "playerGaveBadInterviewContent"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static buildPlayerRefusedLoanMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dateString",
            "team",
            "player"
        }
    .end annotation

    .line 479
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 481
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "playerRefusedLoanTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "playerRefusedLoanContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildPlayerRefusedTransferMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dateString",
            "team",
            "player"
        }
    .end annotation

    .line 459
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 461
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "playerRefusedTransferTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "playerRefusedTransferContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildPlayerSoldMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;JFLjava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dateString",
            "player",
            "value",
            "modifier",
            "currency"
        }
    .end annotation

    .line 499
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 501
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "playerSoldTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "playerSoldContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    long-to-float p1, p2

    mul-float p1, p1, p4

    float-to-long p1, p1

    .line 514
    invoke-static {p1, p2, p5}, Lpl/mkrstudio/truefootball3/helpers/MoneyHelper;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildPlayersOfMonthMessage(Lpl/mkrstudio/truefootball3/objects/Country;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 6
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
            "country",
            "world",
            "countryPlayersOfMonth",
            "previousDate",
            "currentDateString",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            "Z",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Player;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lpl/mkrstudio/truefootball3/objects/Message;"
        }
    .end annotation

    const-string v0, "-"

    .line 1298
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v2, 0x1

    invoke-direct {v1, p4, v2}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const/4 p4, 0x0

    .line 1300
    invoke-static {p3, p4, p5}, Lpl/mkrstudio/truefootball3/helpers/StringHelper;->getMonthName(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 1302
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object v3

    const-string v4, "playerOfTheMonthTitle"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1303
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "string"

    if-eqz p1, :cond_0

    .line 1307
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1309
    :cond_0
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1312
    :goto_0
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p5, "playerOfTheMonthContent"

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p5}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1319
    :try_start_0
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1321
    :catch_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1323
    :goto_1
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1324
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1327
    :try_start_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1329
    :catch_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 p0, 0x2

    .line 1331
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    :try_start_2
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/objects/Player;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1335
    :catch_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1337
    :goto_3
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static buildPlayersOfYearMessage(Lpl/mkrstudio/truefootball3/objects/Country;ZLjava/util/List;Ljava/lang/String;Landroid/content/Context;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "country",
            "world",
            "playersOfYear",
            "currentDateString",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/mkrstudio/truefootball3/objects/Country;",
            "Z",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Lpl/mkrstudio/truefootball3/objects/Message;"
        }
    .end annotation

    const-string v0, "-"

    .line 1342
    new-instance v1, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v2, 0x1

    invoke-direct {v1, p3, v2}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    .line 1344
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p3

    const-string v3, "playerOfTheYearTitle"

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "string"

    if-eqz p1, :cond_0

    .line 1349
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getContinent()Lpl/mkrstudio/truefootball3/objects/Continent;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Continent;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1351
    :cond_0
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Country;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1354
    :goto_0
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1355
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string p3, "playerOfTheYearContent"

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1358
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    .line 1359
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p4

    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    :try_start_0
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p3

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p3

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1363
    :catch_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1365
    :goto_1
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1366
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1368
    :try_start_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1370
    :catch_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 p0, 0x2

    .line 1372
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p3

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1374
    :try_start_2
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/PlayerStatsTableItem;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getTeam()Lpl/mkrstudio/truefootball3/objects/Team;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1376
    :catch_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1378
    :goto_3
    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static buildPromotionMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateString"
        }
    .end annotation

    .line 870
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 872
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "promotionTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "promotionContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildRelegationMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "chosenTeam"
        }
    .end annotation

    .line 854
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 856
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "relegationTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "relegationContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 863
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Team;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildReturnFromInjuryMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "name"
        }
    .end annotation

    .line 749
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "teamDoctor"

    .line 751
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "playerReturnedAfterInjuryTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "playerReturnedAfterInjuryContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildRivalryMatchMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "dateString"
        }
    .end annotation

    .line 820
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p1, "spokesmanForFans"

    .line 822
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 824
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "rivalryMatchTitle"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "rivalryMatchContent"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 828
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 831
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildScoutReportMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Scout;Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;Lpl/mkrstudio/truefootball3/objects/Team;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentDateString",
            "scout",
            "scoutReport",
            "chosenTeam"
        }
    .end annotation

    .line 1187
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    .line 1188
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportTitle"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportContent"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getFirstPosition()Lpl/mkrstudio/truefootball3/enums/Position;

    move-result-object p0

    .line 1202
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "scoutReportContent2"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1209
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getPlayers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/Player;

    if-nez p3, :cond_1

    move-object p3, v1

    .line 1213
    :cond_1
    invoke-virtual {p3, p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v2

    invoke-virtual {v1, p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result v3

    if-ge v2, v3, :cond_0

    move-object p3, v1

    goto :goto_0

    .line 1218
    :cond_2
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1, p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result p1

    invoke-virtual {p3, p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getSkill(Lpl/mkrstudio/truefootball3/enums/Position;)B

    move-result p0

    sub-int/2addr p1, p0

    const/16 p0, 0xf

    if-le p1, p0, :cond_3

    .line 1220
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportContentMuchBetter"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-lez p1, :cond_4

    .line 1222
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportContentSlightlyBetter"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/16 p0, -0xf

    if-le p1, p0, :cond_5

    .line 1224
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportContentSlightlyWorse"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1226
    :cond_5
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportContentMuchWorse"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result p0

    const/16 p1, 0x22

    if-le p0, p1, :cond_6

    .line 1234
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportContentOld"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1235
    :cond_6
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Player;->getAge()B

    move-result p0

    const/16 p1, 0x1f

    if-le p0, p1, :cond_7

    .line 1236
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportContentNotYoung"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1238
    :cond_7
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_8

    .line 1239
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportContentVeryHighPotential"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1240
    :cond_8
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_9

    .line 1241
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportContentHighPotential"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1242
    :cond_9
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_a

    .line 1243
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportContentQuiteHighPotential"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1244
    :cond_a
    invoke-virtual {p2}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getRecommendationLevel()B

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_b

    .line 1245
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportContentLowPotential"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1247
    :cond_b
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string p1, "scoutReportContentVeryLowPotential"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildScoutsContinuesSearchingMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Scout;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentDateString",
            "scout"
        }
    .end annotation

    .line 1107
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 1108
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v2, "scoutContinuesSearchingTitle"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v2, "scoutContinuesSearchingContent"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1113
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1114
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v3

    invoke-virtual {v3}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object p0

    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x3

    if-le p0, v2, :cond_0

    .line 1121
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v2, "mostPromisingPlayersContent"

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object v2

    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object v1

    invoke-virtual {v1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Scout;->getCurrentAssignment()Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ScoutAssignment;->getRecommendations()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/ScoutRecommendation;->getPlayer()Lpl/mkrstudio/truefootball3/objects/Player;

    move-result-object p1

    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p0, "scouting"

    .line 1128
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildSponsorBonusMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Sponsorship;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dateString",
            "sponsorship",
            "bonus"
        }
    .end annotation

    .line 439
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 441
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "sponsorBonusTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "sponsorBonusContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Sponsorship;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildSponsorshipOfferReceivedMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "sponsorshipOffer"
        }
    .end annotation

    .line 419
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 421
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "newSponsorshipOfferTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "newSponsorshipOfferContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/SponsorshipOffer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "sponsorshipOffers"

    .line 434
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setButtonId(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildSponsorshipOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "name"
        }
    .end annotation

    .line 1485
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 1486
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "sponsorshipOfferWithdrawnTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "sponsorshipOfferWithdrawnContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1491
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1494
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1495
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildTrainingCampCancelledMessage(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dateString"
        }
    .end annotation

    .line 690
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 692
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "backFromTrainingCampTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "backFromTrainingCampContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 698
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 701
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildTransferCancelledMessage(Ljava/lang/String;Lpl/mkrstudio/truefootball3/objects/Player;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "player"
        }
    .end annotation

    .line 621
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "assistant"

    .line 623
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "transferCancelledTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 627
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "transferCancelledContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 632
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Player;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildTransferOfferWithdrawnMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dateString",
            "name"
        }
    .end annotation

    .line 1421
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 1422
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "transferOfferWithdrawnTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "transferOfferWithdrawnContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1428
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1430
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildTribuneClosedDueToMaintenance(Ljava/lang/String;Ljava/lang/String;I)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentDateString",
            "tribuneType",
            "daysToAvailable"
        }
    .end annotation

    .line 1034
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p0, "chairman"

    .line 1035
    invoke-virtual {v0, p0}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "tribuneClosedDueToMaintenanceTitle"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p0

    const-string v1, "tribuneClosedDueToMaintenanceContent"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static buildYouthPlayerMovedMessage(Ljava/lang/String;Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "dateString"
        }
    .end annotation

    .line 837
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/Message;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/mkrstudio/truefootball3/objects/Message;-><init>(Ljava/lang/String;Z)V

    const-string p1, "assistant"

    .line 839
    invoke-virtual {v0, p1}, Lpl/mkrstudio/truefootball3/objects/Message;->setAuthorId(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "youthPlayerMovedTitle"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "youthPlayerMovedContent"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 845
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getTitleParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 848
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-virtual {v0}, Lpl/mkrstudio/truefootball3/objects/Message;->getContentParams()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
