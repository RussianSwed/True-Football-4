.class public Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;
.super Ljava/lang/Object;
.source "InterviewQuestion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x11418ae904007997L


# instance fields
.field daysToAsk:I

.field object:Ljava/lang/Object;

.field questionId:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->questionId:I

    .line 17
    iput-object p2, p0, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->object:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 18
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->daysToAsk:I

    return-void
.end method


# virtual methods
.method public getDaysToAsk()I
    .locals 1

    .line 38
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->daysToAsk:I

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getQuestionId()I
    .locals 1

    .line 22
    iget v0, p0, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->questionId:I

    return v0
.end method

.method public setDaysToAsk(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "daysToAsk"
        }
    .end annotation

    .line 42
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->daysToAsk:I

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->object:Ljava/lang/Object;

    return-void
.end method

.method public setQuestionId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "questionId"
        }
    .end annotation

    .line 26
    iput p1, p0, Lpl/mkrstudio/truefootball3/objects/InterviewQuestion;->questionId:I

    return-void
.end method
