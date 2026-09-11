.class public Lpl/mkrstudio/truefootball3/objects/Media;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xd6b66bcc733b5d8L


# instance fields
.field currentInterviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

.field journalists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Journalist;",
            ">;"
        }
    .end annotation
.end field

.field pastQuestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "journalists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Journalist;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Media;->pastQuestions:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Media;->journalists:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public buildQuestion(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "questionId",
            "object"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Media;->currentInterviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    invoke-direct {v0, p1, p2}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Media;->currentInterviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    :cond_0
    return-void
.end method

.method public getConfidence()B
    .locals 3

    .line 58
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Media;->journalists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpl/mkrstudio/truefootball3/objects/Journalist;

    .line 59
    invoke-virtual {v2}, Lpl/mkrstudio/truefootball3/objects/Journalist;->getRelationsWithUser()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Media;->journalists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    div-int/lit8 v1, v1, 0x6

    :cond_1
    int-to-byte v0, v1

    return v0
.end method

.method public getCurrentInterviewQuestion()Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;
    .locals 1

    .line 83
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Media;->currentInterviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    return-object v0
.end method

.method public getJournalists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Journalist;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Media;->journalists:Ljava/util/List;

    return-object v0
.end method

.method public getPastQuestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Media;->pastQuestions:Ljava/util/List;

    return-object v0
.end method

.method public isInterviewQuestion()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/Media;->currentInterviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextDay(Lpl/mkrstudio/truefootball3/objects/Time;Landroid/content/Context;Lpl/mkrstudio/truefootball3/objects/Team;Lpl/mkrstudio/truefootball3/objects/World;Lpl/mkrstudio/truefootball3/objects/Inbox;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "context",
            "chosenTeam",
            "world",
            "inbox"
        }
    .end annotation

    .line 26
    iget-object p4, p0, Lpl/mkrstudio/truefootball3/objects/Media;->currentInterviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    if-eqz p4, :cond_0

    .line 27
    invoke-virtual {p4}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->getDaysToAsk()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p4, v0}, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->setDaysToAsk(I)V

    .line 28
    :cond_0
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x5

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    const-string v1, "12.31"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 29
    new-instance p4, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;

    invoke-direct {p4, p2}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 31
    iget-object v1, p0, Lpl/mkrstudio/truefootball3/objects/Media;->journalists:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    invoke-virtual {p3}, Lpl/mkrstudio/truefootball3/objects/Team;->getCountry()Lpl/mkrstudio/truefootball3/objects/Country;

    move-result-object p3

    invoke-virtual {p4, p3}, Lpl/mkrstudio/truefootball3/generators/PeopleGenerator;->generateOneJournalist(Lpl/mkrstudio/truefootball3/objects/Country;)Lpl/mkrstudio/truefootball3/objects/Journalist;

    move-result-object p3

    invoke-interface {v1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1
    invoke-virtual {p0}, Lpl/mkrstudio/truefootball3/objects/Media;->getConfidence()B

    move-result p2

    if-ge p2, v0, :cond_2

    const/16 p2, 0x14

    .line 38
    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    .line 39
    invoke-virtual {p3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    if-nez p2, :cond_2

    .line 41
    invoke-virtual {p1}, Lpl/mkrstudio/truefootball3/objects/Time;->getCurrentDateString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpl/mkrstudio/truefootball3/helpers/MessageHelper;->buildBadArticleInMedia(Ljava/lang/String;)Lpl/mkrstudio/truefootball3/objects/Message;

    move-result-object p1

    invoke-virtual {p5, p1}, Lpl/mkrstudio/truefootball3/objects/Inbox;->addMessage(Lpl/mkrstudio/truefootball3/objects/Message;)V

    :cond_2
    return-void
.end method

.method public setCurrentInterviewQuestion(Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentInterviewQuestion"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Media;->currentInterviewQuestion:Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;

    return-void
.end method

.method public setJournalists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "journalists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/Journalist;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Media;->journalists:Ljava/util/List;

    return-void
.end method

.method public setPastQuestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pastQuestions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/Media;->pastQuestions:Ljava/util/List;

    return-void
.end method
