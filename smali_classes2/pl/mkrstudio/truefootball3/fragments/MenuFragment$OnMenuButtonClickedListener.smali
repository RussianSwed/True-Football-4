.class public interface abstract Lpl/mkrstudio/truefootball3/fragments/MenuFragment$OnMenuButtonClickedListener;
.super Ljava/lang/Object;
.source "MenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mkrstudio/truefootball3/fragments/MenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMenuButtonClickedListener"
.end annotation


# virtual methods
.method public abstract agreeJobOffer(Lpl/mkrstudio/truefootball3/objects/JobOffer;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jobOffer",
            "fromMessage"
        }
    .end annotation
.end method

.method public abstract onArrangeFriendlyClicked()V
.end method

.method public abstract onEmployeeSelected(Lpl/mkrstudio/truefootball3/objects/Employee;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "employee",
            "toHire"
        }
    .end annotation
.end method

.method public abstract onHallOfTrophiesClicked()V
.end method

.method public abstract onHistorySelected(Lpl/mkrstudio/truefootball3/objects/History;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "history",
            "current"
        }
    .end annotation
.end method

.method public abstract onJobOfferSelected(Lpl/mkrstudio/truefootball3/objects/JobOffer;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jobOffer",
            "fromMessage"
        }
    .end annotation
.end method

.method public abstract onMenuButtonClicked(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buttonId"
        }
    .end annotation
.end method

.method public abstract onOpponentSelected(Lpl/mkrstudio/truefootball3/objects/Team;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "team"
        }
    .end annotation
.end method

.method public abstract onScoutSelected(Lpl/mkrstudio/truefootball3/objects/Scout;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scout"
        }
    .end annotation
.end method

.method public abstract onYouthTeamSelected(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "youthTeamName"
        }
    .end annotation
.end method
